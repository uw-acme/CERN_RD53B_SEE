// determines which 2 consecutive bit of 67 in a 193 bit buffer are most likely the header bits
// abuffer is updated every 8 clock cyles. We can be behind by a word

module aligner (
    input  logic         rst_i, clk_i, // system inputs
    input  logic [193:0] gbox_buffer , // complete buffer          (? why 194-bits buffer?
    input  logic [  5:0] gbox_cnt    , // buffer view window index (? what view window is? starting bit?
    input  logic         buffer_dv   , // valid buffer data

    output logic [  6:0] block_offset,  // 66b block header offset 
	output logic 		 is_synced_reg		// boolean indicating whether data stream is synced, Revise(Colin)
);

    localparam c_DATA_HEADER = 2'b01;
    localparam c_CMD_HEADER  = 2'b10;
	localparam c_SYNC_MAX    = 6'b010000;	//6'd16

    logic [66:0]       buffer;                              // slice of the complete buffer that should contain the header (register)
    logic [65:0] [1:0] headers;                             // individual headers (wires)
    logic [65:0] [5:0] valid_hdr_cnt, valid_hdr_cnt_reg;    // only needs to count up to 32 (registers/wires)

    logic [15:0][5:0] max_cnt_stg1, max_cnt_stg1_reg;
    logic [15:0][6:0] offset_stg1, offset_stg1_reg;

    logic [4:0][5:0] max_cnt_stg2, max_cnt_stg2_reg;
    logic [4:0][6:0] offset_stg2, offset_stg2_reg;

    logic [5:0] max_cnt_stg3;
	 
	 
	logic [3:0] valid_pos_cnt;
	logic [3:0][6:0] valid_offset;
    logic [6:0] offset_stg3, offset_sync, offset_sync_reg;
	
	logic is_synced,resync_continue;

    // register the relevant buffer bits when buffer data is valid
    always_ff @(posedge clk_i) begin
        if (buffer_dv) begin
            buffer <= gbox_buffer[193 - gbox_cnt -: 67];
        end
    end

    // -----------------------------------------------------------------------------------
    //                              First Layer
    //  Determine whether or not to clear or incrememnt the count of a header position
    // -----------------------------------------------------------------------------------


    // splits each header into a distinct logic
    // evaluate whether the proposed header is valid or not
    always_comb begin 
		is_synced = 1'b0;
		resync_continue = 1'b0;
        // "give" each pair of bits a name 
        for (int i = 0; i < 66; i++) begin
            headers[i] = buffer[1 + i -: 2]; // part select to guarantee 2 bits
        end

		  valid_pos_cnt = '0;//count for number of positions that can be considered as true header
		  valid_offset  = '0;
        // determine whether the proposed header is valid. Increment count if so
        for (int j = 0; j < 66; j++) begin
            if (headers[j] == c_DATA_HEADER || headers[j] == c_CMD_HEADER) begin 										// If header_j is valid 
                valid_hdr_cnt[j] = &valid_hdr_cnt_reg[j] ? valid_hdr_cnt_reg[j] : valid_hdr_cnt_reg[j] + 1'b1; // then if (counter is full?) count stay the same else increment count by 1
            end
            else begin
                valid_hdr_cnt[j] = '0;																									// else clear hdr_cnt_j
            end
        end
		
		
		//check if position sync_offset is still synced, if yes, keep previous offset
		if (is_synced_reg && valid_hdr_cnt[offset_sync_reg] >= c_SYNC_MAX) begin
			is_synced = 1'b1;
			offset_sync = offset_sync_reg;
		end
		else begin // if not, check resync process
			for (int k = 0; k < 66; k++) begin
				//if header_count_k is greater than cync requirement
				if (valid_hdr_cnt[k] >= c_SYNC_MAX) begin
					if (!is_synced) begin //when found first sync position during resync
						is_synced = 1'b1;	//convinced the data is synced with offset k
						offset_sync = k;
					end
					else if (is_synced) begin //when found multiple sync positions at same time during resync
						//when resync_continue == 1, output keeps being invalid,
						//stop resync when there is only 1 position remain
						resync_continue = 1'b1; 
					end
					//
				end
			end
		end
		
		is_synced = (resync_continue) ? 1'b0 : is_synced;
    end

					//else if (is_synced_reg && !is_synced) begin //when found first sync position while synced
						//check if position sync_offset is still synced, if not, switch position to current k
					//	is_synced = 1'b1;
					//	offset_sync = k;
					//end
					//else if (is_synced_reg && is_synced) begin //when found multiple sync positions while synced
						//check if position sync_offset is still synced, if not, switch position to current k
					//	resync_continue = 1'b1;
					//end

    // update valid counters once every block
    always_ff @(posedge clk_i) begin
        if      (rst_i)     valid_hdr_cnt_reg <= '0;  		//If receive reset signal from input, clear all valid counter
        else if (buffer_dv) begin									//   else if buffer data is valid
            for (int i = 0; i < 66; i++) begin					//   update the counters for each header location
                valid_hdr_cnt_reg[i] <= valid_hdr_cnt[i]; 
            end
        end
    end
	 
	 always_ff @(posedge clk_i) begin								//update buffer_offset with offset_stg3 if buffer data is valid ?
       if (buffer_dv) begin
			block_offset  <= offset_sync;
			offset_sync_reg <= offset_sync;
			is_synced_reg <= is_synced;
		end
    end

//    // -----------------------------------------------------------------------------------
//    //                                Pipeline Tree
//    //  Narrow down to find the largest counter value as well as its index
//    // -----------------------------------------------------------------------------------
//
//    // ------------------------------------
//    // pipeline stage 1
//    // ------------------------------------
//    always_comb begin
//        max_cnt_stg1 = '0;
//        offset_stg1  = '0;
//        for (int k = 0; k < 16; k++) begin
//            for (int l = 0; l < 4; l++) begin
//                if (valid_hdr_cnt_reg[k*4+l] > max_cnt_stg1[k]) begin  //if counter_[k*4+L]>max_counter_stage1 update the max value
//                    max_cnt_stg1[k] = valid_hdr_cnt_reg[k*4+l];
//                    offset_stg1[k] = k*4+l;
//                end
//            end
//        end
//
//        // account for extra 2 values (counters 64 and 65)
//        if (valid_hdr_cnt_reg[64] > max_cnt_stg1[14]) begin
//            max_cnt_stg1[14] = valid_hdr_cnt_reg[64];
//            offset_stg1[14] = 64;
//        end
//
//        if (valid_hdr_cnt_reg[65] > max_cnt_stg1[15]) begin
//            max_cnt_stg1[15] = valid_hdr_cnt_reg[65];
//            offset_stg1[15] = 65;
//        end
//
//    end
//
//    always_ff @(posedge clk_i) begin			//update offset and count in stage1 to register
//        offset_stg1_reg  <= offset_stg1;
//        max_cnt_stg1_reg <= max_cnt_stg1;
//    end
//
//    // ------------------------------------
//    // pipeline stage 2
//    // ------------------------------------
//    always_comb begin
//        max_cnt_stg2 = '0;
//        offset_stg2  = '0;
//        for (int m = 0; m < 4; m++) begin
//            for (int n = 0; n < 4; n++) begin
//                if (max_cnt_stg1_reg[m*4+n] > max_cnt_stg2[m]) begin		//if max_cnt_stg1[m*4+n]>max_counter_stage2 update the max value
//                    max_cnt_stg2[m] = max_cnt_stg1_reg[m*4+n];
//                    offset_stg2[m] = offset_stg1_reg[m*4+n];
//                end
//            end
//        end
//    end
//
//    always_ff @(posedge clk_i) begin		//update offset and count in stage2 to register
//        offset_stg2_reg  <= offset_stg2;
//        max_cnt_stg2_reg <= max_cnt_stg2;
//    end
//
//    // ------------------------------------
//    // pipeline stage 3
//    // ------------------------------------
//    always_comb begin
//        max_cnt_stg3 = '0;
//        offset_stg3  = '0;
//        for (int p = 0; p < 4; p++) begin
//            if (max_cnt_stg2_reg[p] > max_cnt_stg3) begin	//if max_cnt_stg2[p]>max_counter_stage3 update the max value
//                max_cnt_stg3 = max_cnt_stg2_reg[p];
//                offset_stg3 = offset_stg2_reg[p];
//            end
//        end
//    end
//
//    always_ff @(posedge clk_i) begin								//update buffer_offset with offset_stg3 if buffer data is valid ?
//        if (buffer_dv) begin
//			block_offset  <= offset_stg3;
//		end
//    end

endmodule
