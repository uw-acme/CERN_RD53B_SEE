// determines which 2 consecutive bit of 67 in a 193 bit buffer are most likely the header bits
// abuffer is updated every 8 clock cyles. We can be behind by a word

module seeker1 (
    input  logic         rst_i, clk_i, // system inputs
    input  logic [193:0] gbox_buffer , // complete buffer
    input  logic [  5:0] gbox_cnt    , // buffer view window index
    input  logic         buffer_dv   , // valid buffer data

    output logic [  6:0] block_offset  // 66b block header offset 
);

    localparam c_DATA_HEADER = 2'b01;
    localparam c_CMD_HEADER  = 2'b10;


    logic [66:0] buffer;
    logic [ 1:0] seeker;
    logic [ 6:0] seeker_pos_idx_n, seeker_pos_idx_c;                          


    always_ff @(posedge clk_i) begin
        if (buffer_dv) begin
            buffer <= gbox_buffer[193 - gbox_cnt -: 67];
        end
    end

    assign seeker =  buffer[1 + seeker_pos_idx_c -: 2];

    always_comb begin
        // only incremement the position counter after both sides of buffer are checked
        // once 32 is reached, reset the buffer 
		  // (66 reached? I assume it was trying to search from two ends back and forth until reach middle, but the actual code is doing it from one end to another)
        seeker_pos_idx_n = seeker_pos_idx_c >= 65 ? '0 : seeker_pos_idx_c + 1'b1;

    end

    always_ff @(posedge clk_i) begin
        if (rst_i) begin
            seeker_pos_idx_c <= '0;
        end

        // if an invalid header is seen update which side of buffer is being checked and update pos_idx
        else if (!(seeker == c_DATA_HEADER || seeker == c_CMD_HEADER)) begin
            seeker_pos_idx_c <= seeker_pos_idx_n;
        end
    end

    always_ff @(posedge clk_i) begin
        if (buffer_dv) block_offset <= seeker_pos_idx_c;
    end

endmodule
