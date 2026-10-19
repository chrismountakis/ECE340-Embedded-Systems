`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTH
// 
// Design Name: 
// Module Name:   fpadd_single 
// Project Name: 32 bit Floating Point Unit - Add
// Target Devices: Zedboard
// Tool versions: Vivado 2020.2
//
// Description: 32-bit FP adder with a single pipeline stage (everything happens in one cycle)
//  The module does not check the input for subnormal and NaN numbers, 
//  and assumes that the two inputs are normal FP32 numbers with 0<exp<255.
//  We also assume that the output does not overflow or undeflow, so there is no need to check for these conditions.
//  An FP32 number has 1 sign bit, 8 exponent bits(biased by 127), and 23 mantissa bits.
//////////////////////////////////////////////////////////////////////////////////
module fpadd_single (
	input clk,
	input reset,
	input [31:0] reg_A, 
	input [31:0] reg_B,  
	output reg [31:0] out
);
	
	wire [22:0] mant_A, mant_B;
	wire [7:0] exp_A, exp_B;
	wire sign_A, sign_B;
	reg [31:0] A, B, result;
	reg [23:0] ext_mant_A, ext_mant_B;
	reg [24:0] sum_mant;   
	reg [7:0] exp_diff, exp_out;
	reg sign_out;
	
	assign sign_A = A[31];
	assign sign_B = B[31];
	assign exp_A = A[30:23];
	assign exp_B = B[30:23];
	assign mant_A = A[22:0];
	assign mant_B = B[22:0];
     	
	// Register the two inputs, and use A and B in the combinational logic. 
	always @ (posedge clk or posedge reset) begin
		if (reset == 1'b1)
			out <= 32'b0;
		else begin
			A <= reg_A;
			B <= reg_B;
			out <= result;
		end
	end
		
	//Combinational Logic to (a) compare and adjust the exponents, 
	//                       (b) shift appropriately the mantissa if necessary, 
	//                       (c) add the two mantissas, and
	//                       (d) perform post-normalization. 
	//                           Make sure to check explicitly for zero output. 
	always@ (*) begin 
		exp_diff = (exp_A > exp_B) ? (exp_A - exp_B) : (exp_B - exp_A);

		// a, b
		if(exp_A >= exp_B) begin
			exp_out = exp_A;
			ext_mant_A = {1'b1, mant_A};
			ext_mant_B = {1'b1, mant_B} >> exp_diff;
		end
		else begin
			exp_out = exp_B;
			ext_mant_B = {1'b1, mant_B};
			ext_mant_A = {1'b1, mant_A} >> exp_diff;
		end

		// c
		if(sign_A == sign_B) begin
			sum_mant = ext_mant_A + ext_mant_B;
			sign_out = sign_A;  // or sign_B
		end
		else begin
			if(ext_mant_A >= ext_mant_B) begin
				sum_mant = ext_mant_A - ext_mant_B;
				sign_out = sign_A;
			end
			else begin
				sum_mant = ext_mant_B - ext_mant_A;
				sign_out = sign_B;
			end
		end

		//d post-norm
		// zero check
		if(sum_mant[23:0] == 24'b0) begin
			exp_out = 8'b0;
			sign_out = 1'b0;
		end
		else if(sum_mant[24] == 1) begin
			sum_mant = sum_mant >> 1'b1;
			exp_out = exp_out + 1'b1;
		end
		else begin       //not in the form 1.xxxx
            casez (sum_mant[23:0])
				24'b1???????????????????????: begin end 
				24'b01??????????????????????: begin sum_mant = sum_mant << 1; exp_out = exp_out - 1; end
				24'b001?????????????????????: begin sum_mant = sum_mant << 2; exp_out = exp_out - 2; end
				24'b0001????????????????????: begin sum_mant = sum_mant << 3; exp_out = exp_out - 3; end
				24'b00001???????????????????: begin sum_mant = sum_mant << 4; exp_out = exp_out - 4; end
				24'b000001??????????????????: begin sum_mant = sum_mant << 5; exp_out = exp_out - 5; end
				24'b0000001?????????????????: begin sum_mant = sum_mant << 6; exp_out = exp_out - 6; end
				24'b00000001????????????????: begin sum_mant = sum_mant << 7; exp_out = exp_out - 7; end
				24'b000000001???????????????: begin sum_mant = sum_mant << 8; exp_out = exp_out - 8; end
				24'b0000000001??????????????: begin sum_mant = sum_mant << 9; exp_out = exp_out - 9; end
				24'b00000000001?????????????: begin sum_mant = sum_mant << 10; exp_out = exp_out - 10; end
				24'b000000000001????????????: begin sum_mant = sum_mant << 11; exp_out = exp_out - 11; end
				24'b0000000000001???????????: begin sum_mant = sum_mant << 12; exp_out = exp_out - 12; end
				24'b00000000000001??????????: begin sum_mant = sum_mant << 13; exp_out = exp_out - 13; end
				24'b000000000000001?????????: begin sum_mant = sum_mant << 14; exp_out = exp_out - 14; end
				24'b0000000000000001????????: begin sum_mant = sum_mant << 15; exp_out = exp_out - 15; end
				24'b00000000000000001???????: begin sum_mant = sum_mant << 16; exp_out = exp_out - 16; end
				24'b000000000000000001??????: begin sum_mant = sum_mant << 17; exp_out = exp_out - 17; end
				24'b0000000000000000001?????: begin sum_mant = sum_mant << 18; exp_out = exp_out - 18; end
				24'b00000000000000000001????: begin sum_mant = sum_mant << 19; exp_out = exp_out - 19; end
				24'b000000000000000000001???: begin sum_mant = sum_mant << 20; exp_out = exp_out - 20; end
				24'b0000000000000000000001??: begin sum_mant = sum_mant << 21; exp_out = exp_out - 21; end
				24'b00000000000000000000001?: begin sum_mant = sum_mant << 22; exp_out = exp_out - 22; end
				24'b000000000000000000000001: begin sum_mant = sum_mant << 23; exp_out = exp_out - 23; end
    			default: begin end 
			endcase
		end

		result = {sign_out, exp_out, sum_mant[22:0]};
	end
endmodule
