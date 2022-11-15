module HSn_step_n #(parameter N = 7'b0100000, parameter MIN_POS = 0, parameter MAX_POS = 65, parameter IS_TOP_ALIGNER = 1'b1, parameter STEP = N)
(
	input logic rst_i, clk_i,				// system input
	input logic [193:0] gbox_buffer,		// complete buffer		
	input logic [5:0] gbox_cnt,				// buffer view window index
	input logic buffer_dv,					// valid buffer data
	
	output logic is_synced,
	output logic [6:0] offset_pos
);

	localparam MID_POS = (MIN_POS+MAX_POS)/2;
	localparam MID_SEEKER = MIN_POS + (N/2);
	localparam STEP_PASSED = IS_TOP_ALIGNER ? N : STEP;
	//pos_sel: signal indicating seeker information accepted, 0 for L, 1 for R
	//pre_win: signal that indicating previous winner 
	logic pos_sel, pre_win;
	logic [1:0] is_sync_temp;
	logic [1:0] [6:0] offset_pos_temp;

	generate
		//when N = 2, instantiate 2 unit_seeker modules
		//where the range of each unit_seeker is half of the full range
		if (N == 7'b0000010) begin
			unit_seeker_step_n #(.INIT_POS(MIN_POS), .END_POS(MAX_POS), .POS_STEP(STEP_PASSED))
							seekerL (.rst_i, .clk_i,
									 .gbox_buffer, .gbox_cnt, .buffer_dv,
									 .is_synced(is_sync_temp[0]),
									 .offset_pos(offset_pos_temp[0]));
																			 
			unit_seeker_step_n #(.INIT_POS(MIN_POS+1), .END_POS(MAX_POS), .POS_STEP(STEP_PASSED))
							seekerR (.rst_i, .clk_i,
									 .gbox_buffer, .gbox_cnt, .buffer_dv,
									 .is_synced(is_sync_temp[1]),
									 .offset_pos(offset_pos_temp[1]));
		end
		//when N = 3, instantiate 1 unit_seeker module and 1 HSn module with N' = N-1 = 2
		//where the range of unit_seeker is 1 and range of HSn is 2
		else if (N == 7'b0000011) begin
			unit_seeker_step_n #(.INIT_POS(MIN_POS), .END_POS(MAX_POS), .POS_STEP(STEP_PASSED))
							seekerL (.rst_i, .clk_i,
									 .gbox_buffer, .gbox_cnt, .buffer_dv,
									 .is_synced(is_sync_temp[0]),
									 .offset_pos(offset_pos_temp[0]));
																			 
		    HSn_step_n #(.N(7'b0000010), .MIN_POS(MIN_POS+1), .MAX_POS(MAX_POS), .IS_TOP_ALIGNER(1'b0), .STEP(STEP_PASSED))
							seekerR (.rst_i, .clk_i,
									 .gbox_buffer, .gbox_cnt, .buffer_dv,
									 .is_synced(is_sync_temp[1]),
									 .offset_pos(offset_pos_temp[1]));
		end
		//when N is odd, instantiate 2 HSn modules with N' = N / 2 and N'' = (N/2) + 1
		//where one HSn has range of (MAX_POS-MIN_POS)/2 and another has range of (MAX_POS-MIN_POS)/2 + 1  
		else if (N[0] == 1'b1) begin
			//{N[6:1],1'b0}+1
			HSn_step_n #(.N({1'b0, N[6:1]}+1), .MIN_POS(MIN_POS), .MAX_POS(MAX_POS), .IS_TOP_ALIGNER(1'b0), .STEP(STEP_PASSED))
							seekerL (.rst_i, .clk_i,
									 .gbox_buffer, .gbox_cnt, .buffer_dv,
									 .is_synced(is_sync_temp[0]),
									 .offset_pos(offset_pos_temp[0]));
																			 
		    HSn_step_n #(.N({1'b0, N[6:1]}), .MIN_POS(MID_SEEKER+1), .MAX_POS(MAX_POS), .IS_TOP_ALIGNER(1'b0), .STEP(STEP_PASSED))
							seekerR (.rst_i, .clk_i,
									 .gbox_buffer, .gbox_cnt, .buffer_dv,
									 .is_synced(is_sync_temp[1]),
									 .offset_pos(offset_pos_temp[1]));
		end
		//when N is even, instantiate 2 HSn modules with N' = N / 2
		//where each HSn has half of the full range
		else begin
			HSn_step_n #(.N({1'b0, N[6:1]}), .MIN_POS(MIN_POS), .MAX_POS(MAX_POS), .IS_TOP_ALIGNER(1'b0), .STEP(STEP_PASSED))
							seekerL (.rst_i, .clk_i,
									 .gbox_buffer, .gbox_cnt, .buffer_dv,
									 .is_synced(is_sync_temp[0]),
									 .offset_pos(offset_pos_temp[0]));
																			 
			HSn_step_n #(.N({1'b0, N[6:1]}), .MIN_POS(MID_SEEKER), .MAX_POS(MAX_POS), .IS_TOP_ALIGNER(1'b0), .STEP(STEP_PASSED))
							seekerR (.rst_i, .clk_i,
									 .gbox_buffer, .gbox_cnt, .buffer_dv,
									 .is_synced(is_sync_temp[1]),
									 .offset_pos(offset_pos_temp[1]));
		end

	
	endgenerate
	
	// determine which position we accept depending on previous winner
	always_comb begin
		pos_sel = (!is_sync_temp[0]) | (pre_win & is_sync_temp[1]);
	end
	
	generate
		if (IS_TOP_ALIGNER == 1'b1) begin			
			always_comb begin
				offset_pos = pos_sel ? offset_pos_temp[1] : offset_pos_temp[0];
				is_synced  = |is_sync_temp;
			end
			
			always_ff @(posedge clk_i) begin
				if (rst_i) begin
					pre_win <= 0;
				end
			
				if (buffer_dv) begin
					pre_win    <= pos_sel;
				end
			end		
			//always_ff @(posedge clk_i) begin
			//	if (rst_i) begin
			//		pre_win <= 0;
			//	end
			//
			//	if (buffer_dv) begin
			//		offset_pos <= pos_sel ? offset_pos_temp[1] : offset_pos_temp[0];
			//		is_synced  <= |is_sync_temp;
			//		pre_win    <= pos_sel;
			//	end
			//end
		end
		else begin
			always_comb begin
				offset_pos = pos_sel ? offset_pos_temp[1] : offset_pos_temp[0];
				is_synced  = |is_sync_temp;
			end
			
			always_ff @(posedge clk_i) begin
				if (rst_i) begin
					pre_win <= 0;
				end
			
				if (buffer_dv) begin
					pre_win    <= pos_sel;
				end
			end
		end
	
	endgenerate

endmodule
