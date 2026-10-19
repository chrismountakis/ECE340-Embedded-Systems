
/* -----------------------------------------------------------------------------
-- File           : L2P.v
-- Description    : Edge Detector Circuit
 ----------------------------------------------------------------------------- */
module L2P (
	input clk, rst,
	input btn_dbnc,
	output reg pulse
);

	reg last_state;

	// Edge Detector
	always @(posedge clk or posedge rst) begin
		if (rst) begin
			last_state <= 1'b0;
			pulse <= 1'b0;
		end 
		else begin
			pulse <= (btn_dbnc & ~last_state);
			last_state <= btn_dbnc;
		end
	end
endmodule

