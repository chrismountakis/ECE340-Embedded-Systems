#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "xil_io.h"

// Parameter definitions
#define INTC_DEVICE_ID 		   XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID		   XPAR_GPIO_0_DEVICE_ID
#define SW_DEVICE_ID 		   XPAR_GPIO_1_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_BTNS_5BIT_IP2INTC_IRPT_INTR

#define BTN_INT 			   XGPIO_IR_CH1_MASK

XGpio BTNInst;
XScuGic INTCInst;  // Generic Interrupt Controller
static int btn_value;
static int btn_prev;

//----------------------------------------------------
// PROTOTYPE FUNCTIONS
//----------------------------------------------------
static void BTN_Intr_Handler(void *baseaddr_p);
static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
static int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);

//----------------------------------------------------
// INTERRUPT HANDLER FUNCTIONS
// - called by the timer, button interrupt, performs
// - LED flashing
//----------------------------------------------------


void BTN_Intr_Handler(void *InstancePtr)
{
	int input_mask = 0x8;  //5'b01000
	int reset_mask = 0x2;  //5'b00010
	int i;

	// Disable GPIO interrupts
	XGpio_InterruptDisable(&BTNInst, BTN_INT);
	// Ignore additional button presses
	if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) !=
			BTN_INT) {
			return;
		}
	btn_value = XGpio_DiscreteRead(&BTNInst, 1);

	if(btn_value > btn_prev)
	{
		if(btn_value & reset_mask)
		{
		  // Enable reset
		  Xil_Out32((XPAR_FPADD_IP_0_S00_AXI_BASEADDR + 0x04), (u32) 1);
		  // Wait for transaction
		  for(i = 0; i < 999999; i++);
		  // Disable reset
		  Xil_Out32((XPAR_FPADD_IP_0_S00_AXI_BASEADDR + 0x04), (u32) 0);
		  for(i = 0; i < 999999; i++);
		}
		else if(btn_value & input_mask)
		{
		  // Assert the button
		  Xil_Out32(XPAR_FPADD_IP_0_S00_AXI_BASEADDR, (u32) 1);
		  // Wait for transaction
		  for(i = 0; i < 999999; i++);
		  // Deassert the button
		  Xil_Out32(XPAR_FPADD_IP_0_S00_AXI_BASEADDR, (u32) 0);
		  for(i = 0; i < 999999; i++);
		}
	}
	else
	{
		for(i = 0; i < 999999; i++);
	}
	btn_prev = btn_value;

    (void)XGpio_InterruptClear(&BTNInst, BTN_INT);

    // Enable GPIO interrupts
    XGpio_InterruptEnable(&BTNInst, BTN_INT);
}

//----------------------------------------------------
// MAIN FUNCTION
//----------------------------------------------------
int main (void)
{
  int status, i, psb_check;

  //----------------------------------------------------
  // INITIALIZE THE PERIPHERALS & SET DIRECTIONS OF GPIO
  //----------------------------------------------------
  // Initialize Push Buttons
  status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
  if(status != XST_SUCCESS) return XST_FAILURE;
  // Set all buttons direction to inputs
  XGpio_SetDataDirection(&BTNInst, 1, 0xFF);

  // Initialize interrupt controller
  status = IntcInitFunction(INTC_DEVICE_ID, &BTNInst);
  if(status != XST_SUCCESS) return XST_FAILURE;


  while (1)
  {
	psb_check = XGpio_DiscreteRead(&BTNInst, 1);
	xil_printf("Push Buttons Status %x\r\n", psb_check);

	for (i=0; i<9999999; i++);
  }

  return 0;
}

//----------------------------------------------------
// INITIAL SETUP FUNCTIONS
//----------------------------------------------------

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr)
{
	// Enable interrupt
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
	XGpio_InterruptGlobalEnable(&BTNInst);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 	 	 	 	 	 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
			 	 	 	 	 	 XScuGicInstancePtr);
	Xil_ExceptionEnable();


	return XST_SUCCESS;

}

int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr)
{
	XScuGic_Config *IntcConfig;
	int status;

	// Interrupt controller initialization
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Call to interrupt setup
	status = InterruptSystemSetup(&INTCInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst,
					  	  	 INTC_GPIO_INTERRUPT_ID,
					  	  	 (Xil_ExceptionHandler)BTN_Intr_Handler,
					  	  	 (void *)GpioInstancePtr);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	// Enable GPIO and timer interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);

	return XST_SUCCESS;
}
