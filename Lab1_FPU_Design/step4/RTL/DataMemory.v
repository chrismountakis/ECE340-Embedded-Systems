/* -----------------------------------------------------------------------------
-- File           : DataMemory.v
-- Description    : Data Memory module
 ----------------------------------------------------------------------------- */
module DataMemory (
	input clk,
	input rst,
	input read_enable,
	output reg [31:0] reg_A,
	output reg [31:0] reg_B
);

	reg [31:0] memory [0:19];  // 20 values
	reg [4:0] ptr;  		   // control memory with ptr

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			memory[0]  <= 32'h3f800000; memory[1]  <= 32'h40000000; // out = 32'h40400000
			memory[2]  <= 32'hbf800000; memory[3]  <= 32'h3f800000; // out = 32'h00000000 
			memory[4]  <= 32'hc2de8000; memory[5]  <= 32'h45155e00; // out = 32'h450e6a00
			memory[6]  <= 32'h6b64b235; memory[7]  <= 32'h6ac49214; // out = 32'h6ba37d9f
			memory[8]  <= 32'h2ac49214; memory[9]  <= 32'h6ac49214; // out = 32'h6ac49214
			memory[10] <= 32'hbfc66666; memory[11] <= 32'h3fc7ae14; // out = 32'h3c23d700 
			memory[12] <= 32'hc565ee8b; memory[13] <= 32'h4565ee8a; // out = 32'hb9800000
			memory[14] <= 32'h447a4efa; memory[15] <= 32'hc47a1ccd; // out = 32'h3f48b400
			memory[16] <= 32'h00000000; memory[17] <= 32'h00000000; // out = 32'h00000000
			memory[18] <= 32'h38108900; memory[19] <= 32'hbb908900; // out = 32'hbb8f67ee
			ptr <= 5'b1;  
			reg_A <= 32'h3f800000;
			reg_B <= 32'h40000000;
		end 
		else if (read_enable) begin
			reg_A <= memory[ptr << 1];            // A
			reg_B <= memory[(ptr << 1) + 1'b1];   // B
			if (ptr == 5'd9)  
				ptr <= 5'b0;
			else
				ptr <= ptr + 1'b1; 
		end
	end
endmodule                 	