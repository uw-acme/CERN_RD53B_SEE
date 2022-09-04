module HS2 (
	input logic rst_i, clk_i,				// system input
	input logic [193:0] gbox_buffer,		// complete buffer		
	input logic [5:0] gbox_cnt,				// buffer view window index
	input logic buffer_dv,					// valid buffer data
	
	output logic is_synced,
	output logic [6:0] offset_pos
);

	//pos_sel: signal indicating seeker information accepted, 0 for L, 1 for R
	//pre_win: signal that indicating previous winner 
	logic pos_sel, pre_win;
	logic [1:0] is_sync_temp;
	logic [1:0] [6:0] offset_pos_temp;

	unit_seeker #(.INIT_POS(0), .END_POS(32), .POS_STEP(1))  seekerL (.rst_i, .clk_i,
																	 .gbox_buffer, .gbox_cnt, .buffer_dv,
																	 .is_synced(is_sync_temp[0]),
																	 .offset_pos(offset_pos_temp[0]));
																	 
	unit_seeker #(.INIT_POS(33), .END_POS(66), .POS_STEP(1)) seekerR (.rst_i, .clk_i,
																	 .gbox_buffer, .gbox_cnt, .buffer_dv,
																	 .is_synced(is_sync_temp[1]),
																	 .offset_pos(offset_pos_temp[1]));

	
	// determine which position we accept depending on previous winner
	always_comb begin
		pos_sel = (!is_sync_temp[0]) | (pre_win & is_sync_temp[1]);
	end
									
	always_ff @(posedge clk_i) begin
		if (rst_i) begin
			pre_win <= 0;
		end
	
		if (buffer_dv) begin
			offset_pos <= pos_sel ? offset_pos_temp[1] : offset_pos_temp[0];
			is_synced  <= |is_sync_temp;
			pre_win    <= pos_sel;
		end
	end

endmodule
