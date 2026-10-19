`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTH
// Design Name: 
// Module Name:    testbench
// Project Name: Floating Point Adder- testbench
// Target Devices: Zedboard 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`define CYCLE 10

module testbench;
	parameter NUM = 10;  // This is the number of entries in the input file: number of FP additions 
	reg	clk, rst, btn;
	wire [7:0] leds;
	wire an0, a0, b0, c0, d0, e0, f0, g0;
	wire an1, a1, b1, c1, d1, e1, f1, g1;


	fpadd_system topmod_inst(
		.clk(clk), .rst(rst),
		.leds(leds),
        .btn(btn), 
		.an0(an0), .a0(a0), .b0(b0), .c0(c0),
		.d0(d0), .e0(e0), .f0(f0), .g0(g0),
		.an1(an1), .a1(a1), .b1(b1), .c1(c1),
		.d1(d1), .e1(e1), .f1(f1), .g1(g1) 
	);

	always begin
		#(`CYCLE/2) clk=~clk;
	end

	initial begin
		clk=0;
		rst=0;
		btn =0;
		#100 rst = 1;
		#200 rst = 0;
        #50 btn = 1;
        #200 btn = 0;
		#10000 btn = 1; // next inputs
		#200 btn = 0;
  end	
	
		
endmodule