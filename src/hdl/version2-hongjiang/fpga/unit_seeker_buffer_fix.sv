module unit_seeker_buffer_fix #(parameter INIT_POS = 0, parameter END_POS = 65, parameter POS_STEP = 1)
(
	input logic rst_i, clk_i,				// system input
	input logic buffer_dv,					// valid buffer data
	input logic [66:0] buffer,
	
	output logic is_synced,
	output logic [6:0] offset_pos
);

	localparam c_DATA_HEADER = 2'b01;
    localparam c_CMD_HEADER  = 2'b10;
	localparam c_SYNC_MAX    = 5'b10000; //5'd16
	
	logic [4:0]  hdr_cnt;
    logic [ 1:0] seeker;
    logic [ 6:0] seeker_pos_idx_n, seeker_pos_idx_c;   // index of next seeker position, index of current seeker position
	
	// current header the seeker looking at
	assign seeker = buffer[1 + seeker_pos_idx_c -: 2];
	
	
	// could be transform to 'assign'?
	always_comb begin
		// update index for next seeker position.(continue sequence)
		// seeker_pos_idx_n = seeker_pos_idx_c >= (END_POS) ? INIT_POS : seeker_pos_idx_c + POS_STEP;
		// update index for next seeker position.(equal diff sequence)
		seeker_pos_idx_n = (seeker_pos_idx_c + POS_STEP) > (END_POS) ? INIT_POS : seeker_pos_idx_c + POS_STEP;
	end
	
	always_ff @(posedge clk_i) begin
		if (rst_i) begin
			seeker_pos_idx_c <= INIT_POS;
			hdr_cnt 		 <= '0;
		end
		else begin
			// if an invalid header is seen, update position index, reset header counter
			if (!(seeker == c_DATA_HEADER || seeker == c_CMD_HEADER)) begin
				seeker_pos_idx_c <= seeker_pos_idx_n;
				hdr_cnt 		 <= '0;
			end
			// if a valid header is seen, update header counter
			else if (buffer_dv) begin
				// only update when not synced
				if (!(hdr_cnt[4])) hdr_cnt <= hdr_cnt + 1'b1;
			end
		end
	end
	
	always_ff @(posedge clk_i) begin
		if (buffer_dv) begin // TODO: may be remove buffer valid check for output 
			offset_pos <= seeker_pos_idx_c;
			is_synced  <= hdr_cnt[4];
		end
	end
	
endmodule
