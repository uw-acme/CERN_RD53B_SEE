vlib work

# Xilinix Libraries
#vmap unifast  C:/Xilinx/simulation_libs/unifast
#vmap unimacro C:/Xilinx/simulation_libs/unimacro
#vmap unisim   C:/Xilinx/simulation_libs/unisim
#vmap secureip C:/Xilinx/simulation_libs/secureip

# Xilinix IPs
vcom -work work ../../src/hdl/version2-hongjiang/fpga/serdes_1_to_468_idelay_ddr.vhd
vcom -work work ../../src/hdl/version2-hongjiang/fpga/delay_controller_wrap.vhd

# Packages
vcom -work work ../../src/hdl/version2-hongjiang/fpga/tef1001_R2_type.vhd
vcom -work work ../../src/hdl/version2-hongjiang/fpga/board_pkg.vhd

#YARR_rx Modules
vcom -work work ../../src/hdl/version2-hongjiang/fpga/cdr_serdes.vhd
vlog -work work ../../src/hdl/version2-hongjiang/fpga/descrambler.v
vlog -work work ../../src/hdl/version2-hongjiang/fpga/scrambler.v
#vlog -work work ../../src/hdl/version2-hongjiang/fpga/unit_seeker.sv
vlog -work work ../../src/hdl/version2-hongjiang/fpga/unit_seeker_buffer_fix.sv
vlog -work work ../../src/hdl/version2-hongjiang/fpga/HS2.sv
vlog -work work ../../src/hdl/version2-hongjiang/fpga/HSn_buffer_fix.sv
vlog -work work ../../src/hdl/version2-hongjiang/fpga/HSn_buffer_fix_top.sv
#vlog -work work ../../src/hdl/version2-hongjiang/fpga/HSn.sv
#vlog -work work ../../src/hdl/version2-hongjiang/fpga/HSn_balenced.sv
vcom -work work ../../src/hdl/version2-hongjiang/fpga/gearbox32to66_wip.vhd
vcom -work work ../../src/hdl/version2-hongjiang/fpga/aurora_rx_lane_wip.vhd
#vcom -work work ../../src/hdl/version2-hongjiang/fpga/gearbox32to66.vhd
#vcom -work work ../../src/hdl/version2-hongjiang/fpga/aurora_rx_lane.vhd
#vcom -work work ../../src/hdl/version2-hongjiang/fpga/aurora_ch_bond.vhd
vcom -work work ../../src/hdl/version2-hongjiang/fpga/rr_arbiter.vhd
#vlog -work work ../../src/hdl/version2-hongjiang/fpga/seeker1.sv
#vlog -work work ../../src/hdl/version2-hongjiang/fpga/seeker2.sv
#vcom -work work ../../src/hdl/version2-hongjiang/fpga/seeker2.vhd
#vlog -work work ../../src/hdl/version2-hongjiang/fpga/src/seeker3.sv
#vcom -work work ../../src/hdl/version2-hongjiang/fpga/seeker3.vhd
#vlog -work work ../../src/hdl/version2-hongjiang/fpga/seeker6.sv
#vcom -work work ../../src/hdl/version2-hongjiang/fpga/seeker6.vhd
#vlog -work work ../../src/hdl/version2-hongjiang/fpga/seeker11.sv
#vcom -work work ../../src/hdl/version2-hongjiang/fpga/seeker11.vhd
#vlog -work work ../../src/hdl/version2-hongjiang/fpga/seeker22.sv
#vlog -work work ../../src/hdl/version2-hongjiang/fpga/seeker33.sv
vlog -work work ../../src/hdl/version2-hongjiang/fpga/aligner.sv




# YARR_rx sim Modules
vlog -work work ./sim_aurora_lane_drop_regression.sv

vsim -t 1fs -novopt sim_aurora_lane -L unisim -L secureip -L unifast -L unimacro

view signals
view wave

#do wave_lane_drop_regression.do
#do wave_upgrade.do
#do wave_revise.do
#do unit_seeker_wave.do
#do HS2_wave.do
#do HSn_wave.do
#do balenced_wave.do
#do equal_diff_11_wave.do
do buffer_fix_wave.do


#run -all