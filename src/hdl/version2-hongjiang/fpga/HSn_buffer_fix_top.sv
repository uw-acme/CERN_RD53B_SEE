module HSn_buffer_fix_top #(parameter N = 7'b0000011, parameter MIN_POS = 0, parameter MAX_POS = 65)
(
	input logic rst_i, clk_i,				// system input
	input logic [193:0] gbox_buffer,		// complete buffer		
	input logic [5:0] gbox_cnt,				// buffer view window index
	input logic buffer_dv,					// valid buffer data
	
	output logic is_synced,
	output logic [6:0] offset_pos
);

	//localparam MID_POS = (MIN_POS+MAX_POS)/2;
	//localparam MID_SEEKER = MIN_POS + (N/2);
	//localparam BUF_PASSED = IS_TOP_ALIGNER ? buffer : BUF_PASSED;
	//pos_sel: signal indicating seeker information accepted, 0 for L, 1 for R
	//pre_win: signal that indicating previous winner 
	logic [66:0] buffer;
	logic is_sync_temp;
	logic [6:0] offset_pos_temp;
																			 
	HSn_buffer_fix #(.N(N), .MIN_POS(MIN_POS), .MAX_POS(MAX_POS), .STEP(N))
					HSn (.rst_i, .clk_i,
							 .buffer_dv, .buffer,
							 .is_synced(is_sync_temp),
							 .offset_pos(offset_pos_temp));

	// save the gearbox slice which MUST contain the header bits
	always_ff @(posedge clk_i) begin
		if (buffer_dv) begin
			buffer <= gbox_buffer[193 - gbox_cnt -: 67];
			is_synced <= is_sync_temp;
			offset_pos <= offset_pos_temp;
		end
	end

endmodule
