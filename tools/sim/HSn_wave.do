onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group top /sim_aurora_lane/rst_n_i
add wave -noupdate -group top /sim_aurora_lane/rst2_n_i
add wave -noupdate -group top /sim_aurora_lane/clk_rx_i
add wave -noupdate -group top /sim_aurora_lane/clk_serdes_i
add wave -noupdate -group top /sim_aurora_lane/clk_ddr_i
add wave -noupdate -group top /sim_aurora_lane/rx_data_i_p
add wave -noupdate -group top /sim_aurora_lane/rx_polarity
add wave -noupdate -group top /sim_aurora_lane/rx_data_out
add wave -noupdate -group top /sim_aurora_lane/rx_header_out
add wave -noupdate -group top /sim_aurora_lane/rx_status
add wave -noupdate -group top /sim_aurora_lane/rx_valid
add wave -noupdate -group top /sim_aurora_lane/tx_data
add wave -noupdate -group top /sim_aurora_lane/tx_data_s
add wave -noupdate -group top /sim_aurora_lane/tx_data_t
add wave -noupdate -group top -radix unsigned /sim_aurora_lane/tx_counter
add wave -noupdate -group top /sim_aurora_lane/offset
add wave -noupdate -group top /sim_aurora_lane/cnt
add wave -noupdate -group top /sim_aurora_lane/tx_data_valid
add wave -noupdate -group top -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/sync_cnt
add wave -noupdate -group top -radix unsigned /sim_aurora_lane/last_rx_cnt
add wave -noupdate -group top -radix unsigned /sim_aurora_lane/curr_rx_cnt
add wave -noupdate -group top /sim_aurora_lane/rx_data_word_v
add wave -noupdate -group top /sim_aurora_lane/SEE_flag
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/rst_n_i
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/clk_rx_i
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/clk_serdes_i
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/rx_data_i_p
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/rx_data_i_n
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/rx_polarity_i
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/rx_data_o
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/rx_header_o
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/rx_valid_o
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/rx_stat_o
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/c_SLIP_SERDES_MAX
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/c_SERDES8_CYCLE
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/rst
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/serdes_idelay_rdy
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/serdes_data8
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/serdes_data8_s
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/serdes_data8_d
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/serdes_lock
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/serdes_data32_shift
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/serdes_data32
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/serdes_data32_valid
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/serdes8_cnt
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/serdes_cnt
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/gearbox_data66
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/gearbox_data66_valid
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/gearbox_data66_valid_d
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/gearbox_slip
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/scrambled_data66
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/scrambled_data_valid
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/scrambled_data_valid_d
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/descrambled_data
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/descrambled_header
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/descrambled_data_valid
add wave -noupdate -group internal /sim_aurora_lane/u_aurora_rx_lane/sync_cnt
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/rst_i
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/clk_i
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data32_i
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data32_valid_i
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/slip_i
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/buffer194
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data66_o
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data66_valid_o
add wave -noupdate -group gbox -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/gearbox_cnt
add wave -noupdate -group gbox -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data66_cnt
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/shift_cnt
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/slip_cnt
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data66_t
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data66_t_valid
add wave -noupdate -group gbox -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/blk_idx_offset
add wave -noupdate -group gbox -radix decimal /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/block_msb_idx
add wave -noupdate -group gbox -radix decimal /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/block_lsb_idx
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data66_buf
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data66_buf_empty
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data66_buf_read
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data66_buf2
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data66_buf2_empty
add wave -noupdate -group gbox /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/data66_buf2_read
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/offset_pos_temp
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/is_sync_temp
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/pre_win
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/pos_sel
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/offset_pos
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/is_synced
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/buffer_dv
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/gbox_cnt
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/gbox_buffer
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/clk_i
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/rst_i
add wave -noupdate -expand -group HSn(top) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/ODD_POS
add wave -noupdate -expand -group HSn(top) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/MID_POS
add wave -noupdate -expand -group HSn(top) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/MAX_POS
add wave -noupdate -expand -group HSn(top) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/MIN_POS
add wave -noupdate -expand -group HSn(top) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/N
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/INIT_POS
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/END_POS
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/POS_STEP
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/c_DATA_HEADER
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/c_CMD_HEADER
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/c_SYNC_MAX
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/rst_i
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/clk_i
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/gbox_buffer
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/gbox_cnt
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/buffer_dv
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/is_synced
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/offset_pos
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/buffer
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/hdr_cnt
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/seeker
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/seeker_pos_idx_n
add wave -noupdate -expand -group unit_seeker(0-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerL/seeker_pos_idx_c
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/INIT_POS
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/END_POS
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/POS_STEP
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/c_DATA_HEADER
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/c_CMD_HEADER
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/c_SYNC_MAX
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/rst_i
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/clk_i
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/gbox_buffer
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/gbox_cnt
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/buffer_dv
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/is_synced
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/offset_pos
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/buffer
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/hdr_cnt
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/seeker
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/seeker_pos_idx_n
add wave -noupdate -expand -group unit_seeker(1-0) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/seeker_pos_idx_c
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/INIT_POS
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/END_POS
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/POS_STEP
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/c_DATA_HEADER
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/c_CMD_HEADER
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/c_SYNC_MAX
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/rst_i
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/clk_i
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/gbox_buffer
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/gbox_cnt
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/buffer_dv
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/is_synced
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/offset_pos
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/buffer
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/hdr_cnt
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/seeker
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/seeker_pos_idx_n
add wave -noupdate -expand -group unit_seeker(1-1) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerL/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerR/seeker_pos_idx_c
add wave -noupdate -expand -group unit_seeker(47-48) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/INIT_POS
add wave -noupdate -expand -group unit_seeker(47-48) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/END_POS
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/POS_STEP
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/c_DATA_HEADER
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/c_CMD_HEADER
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/c_SYNC_MAX
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/rst_i
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/clk_i
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/gbox_buffer
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/gbox_cnt
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/buffer_dv
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/is_synced
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/offset_pos
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/buffer
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/hdr_cnt
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/seeker
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/seeker_pos_idx_n
add wave -noupdate -expand -group unit_seeker(47-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/seeker_pos_idx_c
add wave -noupdate -expand -group unit_seeker(49-48) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/INIT_POS
add wave -noupdate -expand -group unit_seeker(49-48) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/END_POS
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/POS_STEP
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/c_DATA_HEADER
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/c_CMD_HEADER
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/c_SYNC_MAX
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/rst_i
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/clk_i
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/gbox_buffer
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/gbox_cnt
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/buffer_dv
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/is_synced
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/offset_pos
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/buffer
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/hdr_cnt
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/seeker
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/seeker_pos_idx_n
add wave -noupdate -expand -group unit_seeker(49-48) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/genblk1/seekerL/seeker_pos_idx_c
add wave -noupdate -expand -group unit_seeker(63-63) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/INIT_POS
add wave -noupdate -expand -group unit_seeker(63-63) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/END_POS
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/POS_STEP
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/c_DATA_HEADER
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/c_CMD_HEADER
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/c_SYNC_MAX
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/rst_i
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/clk_i
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/gbox_buffer
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/gbox_cnt
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/buffer_dv
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/is_synced
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/offset_pos
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/buffer
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/hdr_cnt
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/seeker
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/seeker_pos_idx_n
add wave -noupdate -expand -group unit_seeker(63-63) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerL/seeker_pos_idx_c
add wave -noupdate -expand -group unit_seeker(64-65) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/INIT_POS
add wave -noupdate -expand -group unit_seeker(64-65) -radix unsigned /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/END_POS
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/POS_STEP
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/c_DATA_HEADER
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/c_CMD_HEADER
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/c_SYNC_MAX
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/rst_i
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/clk_i
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/gbox_buffer
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/gbox_cnt
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/buffer_dv
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/is_synced
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/offset_pos
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/buffer
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/hdr_cnt
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/seeker
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/seeker_pos_idx_n
add wave -noupdate -expand -group unit_seeker(64-65) /sim_aurora_lane/u_aurora_rx_lane/gearbox32to66_cmp/u_aligner/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/genblk1/seekerR/seeker_pos_idx_c
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {210143494908 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 230
configure wave -valuecolwidth 153
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {209848872156 fs} {211021848834 fs}
