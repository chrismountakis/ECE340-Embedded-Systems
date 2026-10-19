/* -----------------------------------------------------------------------------
-- File           : fpadd_system.v
-- Description    : Top module for FP Addition System with Data Memory
 ----------------------------------------------------------------------------- */
module fpadd_system (
	input clk,
	input rst,
	input btn,
	output [7:0] leds,
	output an0, output a0, output b0, output c0, output d0, output e0, output f0, output g0,
	output an1, output a1, output b1, output c1, output d1, output e1, output f1, output g1
);
	wire [31:0] reg_A, reg_B, fp_out;
	wire btn_pulse;

	// button debouncer
	debouncer_L2P debouncer_L2P_inst (
		.clk(clk), 
		.rst(rst),
		.btn_bnc(btn),
		.pulse(btn_pulse)
	);
	
	// Data Memory
	DataMemory data_mem_inst (
		.clk(clk),
		.rst(rst),
		.read_enable(btn_pulse),
		.reg_A(reg_A),
		.reg_B(reg_B)
	);

	// FP Adder Instance
	fpadd fpadd_inst (
		.clk(clk), 
		.reset(rst), 
		.reg_A(reg_A), 
		.reg_B(reg_B), 
		.out(fp_out)
	);
	
	assign leds = fp_out[7:0];
	
	// 7-Segment Display Output
	SevenSegDisplay SSD0 (
		.clk(clk), .reset(rst), 
		.DataIn(fp_out[31:24]),
		.an(an0), .a(a0), .b(b0), .c(c0), 
		.d(d0), .e(e0), .f(f0), .g(g0)
	);
	
	SevenSegDisplay SSD1 (
		.clk(clk), .reset(rst), 
		.DataIn(fp_out[23:16]),
		.an(an1), .a(a1), .b(b1), .c(c1), 
		.d(d1), .e(e1), .f(f1), .g(g1)
	);
endmodule