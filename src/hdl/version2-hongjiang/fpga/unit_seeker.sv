module unit_seeker #(parameter INIT_POS = 0, parameter END_POS = 65, parameter POS_STEP = 1)
(
	input logic rst_i, clk_i,				// system input
	input logic [193:0] gbox_buffer,		// complete buffer		
	input logic [5:0] gbox_cnt,				// buffer view window index
	input logic buffer_dv,					// valid buffer data
	
	output logic is_synced,
	output logic [6:0] offset_pos
);

	localparam c_DATA_HEADER = 2'b01;
    localparam c_CMD_HEADER  = 2'b10;
	localparam c_SYNC_MAX    = 5'b10000; //5'd16
	
	logic [66:0] buffer;
	logic [4:0]  hdr_cnt;
    logic [ 1:0] seeker;
    logic [ 6:0] seeker_pos_idx_n, seeker_pos_idx_c;   // index of next seeker position, index of current seeker position
	
	// save the gearbox slice which MUST contain the header bits
	always_ff @(posedge clk_i) begin
        if (buffer_dv) begin
            buffer <= gbox_buffer[193 - gbox_cnt -: 67];
        end
    end
	
	// current header the seeker looking at
	assign seeker = buffer[1 + seeker_pos_idx_c -: 2];
	
	
	// could be transform to 'assign'?
	always_comb begin
		// update index for next seeker position.
		seeker_pos_idx_n = seeker_pos_idx_c >= (END_POS) ? INIT_POS : seeker_pos_idx_c + POS_STEP;
	end
	
	always_ff @(posedge clk_i) begin
		if (rst_i) begin
			seeker_pos_idx_c <= INIT_POS;
			hdr_cnt 		 <= '0;
		end
		else if (buffer_dv) begin
			// if an invalid header is seen, update position index, reset header counter
			if (!(seeker == c_DATA_HEADER || seeker == c_CMD_HEADER)) begin
				seeker_pos_idx_c <= seeker_pos_idx_n;
				hdr_cnt 		 <= '0;
			end
			// if a valid header is seen, update header counter
			else begin
				// only update when not synced
				if (!(hdr_cnt[4])) hdr_cnt <= hdr_cnt + 1'b1;
			end
		end
	end
	
	always_ff @(posedge clk_i) begin
		if (buffer_dv) begin
			offset_pos <= seeker_pos_idx_c;
			is_synced  <= hdr_cnt[4];
		end
	end
	
endmodule
