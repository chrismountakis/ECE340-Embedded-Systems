
/* -----------------------------------------------------------------------------
-- File           : debouncer.v
-- Description    : Debounce Circuit
 ----------------------------------------------------------------------------- */
module debouncer_L2P #(
    parameter DEBOUNCE_COUNT = 24'd10000000  // 10^-8 (period) * 10^7 (cycles) = 0.1s 
)(
	input clk, rst,
	input btn_bnc,
	output reg pulse
);

	reg [23:0] counter = 24'b0;
	reg last_btn, last_state;
	reg btn_dbnc; 

	// Debouncer 
	always @(posedge clk) begin
		if (btn_bnc != last_btn) // If signal changed...
			counter <= 24'b0;
		else if (counter < DEBOUNCE_COUNT) 
			counter <= counter + 1'b1;
		else if (counter == DEBOUNCE_COUNT) // If signal is stable for DEBOUNCE_COUNT cycles...
			btn_dbnc <= btn_bnc;

		last_btn <= btn_bnc;
	end

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

