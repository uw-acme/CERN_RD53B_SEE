
y
Command: %s
53*	vivadotcl2H
4synth_design -top vc709_top -part xc7vx690tffg1761-22default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
	xc7vx690t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
	xc7vx690t2default:defaultZ17-349h px? 
Y
Loading part %s157*device2&
xc7vx690tffg1761-22default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
318762default:defaultZ8-7075h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1270.934 ; gain = 20.980
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
	vc709_top2default:default2
 2default:default2?
sD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.srcs/sources_1/new/vc709_top.sv2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

IDELAYCTRL2default:default2
 2default:default2H
2D:/AMD/Vivado/2021.1/scripts/rt/data/unisim_comp.v2default:default2
537532default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

IDELAYCTRL2default:default2
 2default:default2
12default:default2
12default:default2H
2D:/AMD/Vivado/2021.1/scripts/rt/data/unisim_comp.v2default:default2
537532default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02default:default2
 2default:default2?
?D:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/SEE_HeadSeeker/SEE_HeadSeeker.runs/synth_1/.Xil/Vivado-32600-LAPTOP-F415E9JE/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02default:default2
 2default:default2
22default:default2
12default:default2?
?D:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/SEE_HeadSeeker/SEE_HeadSeeker.runs/synth_1/.Xil/Vivado-32600-LAPTOP-F415E9JE/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2"
aurora_rx_lane2default:default2?
oD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/aurora_rx_lane_wip.vhd2default:default2
412default:default8@Z8-638h px? 
V
%s
*synth2>
*	Parameter S bound to: 8 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter D bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLKIN_PERIOD bound to: 1.562500 - type: double 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter REF_FREQ bound to: 310.000000 - type: double 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter HIGH_PERFORMANCE_MODE bound to: TRUE - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter DATA_FORMAT bound to: PER_CLOCK - type: string 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2.
serdes_1_to_468_idelay_ddr2default:default2?
wD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/serdes_1_to_468_idelay_ddr.vhd2default:default2
652default:default2

serdes_cmp2default:default2.
serdes_1_to_468_idelay_ddr2default:default2?
oD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/aurora_rx_lane_wip.vhd2default:default2
2042default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2.
serdes_1_to_468_idelay_ddr2default:default2?
wD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/serdes_1_to_468_idelay_ddr.vhd2default:default2
962default:default8@Z8-638h px? 
V
%s
*synth2>
*	Parameter S bound to: 8 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter D bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLKIN_PERIOD bound to: 1.562500 - type: double 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter REF_FREQ bound to: 310.000000 - type: double 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter HIGH_PERFORMANCE_MODE bound to: TRUE - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter DATA_FORMAT bound to: PER_CLOCK - type: string 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter S bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2)
delay_controller_wrap2default:default2?
rD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/delay_controller_wrap.vhd2default:default2
632default:default2
dc_inst2default:default2)
delay_controller_wrap2default:default2?
wD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/serdes_1_to_468_idelay_ddr.vhd2default:default2
3252default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2)
delay_controller_wrap2default:default2?
rD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/delay_controller_wrap.vhd2default:default2
842default:default8@Z8-638h px? 
V
%s
*synth2>
*	Parameter S bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2)
delay_controller_wrap2default:default2
32default:default2
12default:default2?
rD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/delay_controller_wrap.vhd2default:default2
842default:default8@Z8-256h px? 
c
%s
*synth2K
7	Parameter DELAY_SRC bound to: IDATAIN - type: string 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter HIGH_PERFORMANCE_MODE bound to: TRUE - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter IDELAY_TYPE bound to: VAR_LOAD - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter IDELAY_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter REFCLK_FREQUENCY bound to: 310.000000 - type: double 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2
idelay_m2default:default2
IDELAYE22default:default2?
wD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/serdes_1_to_468_idelay_ddr.vhd2default:default2
3772default:default8@Z8-113h px? 
_
%s
*synth2G
3	Parameter DATA_RATE bound to: DDR - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter DYN_CLK_INV_EN bound to: FALSE - type: string 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter INTERFACE_TYPE bound to: NETWORKING - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IOBDELAY bound to: IFD - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter SERDES_MODE bound to: MASTER - type: string 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2
	iserdes_m2default:default2
	ISERDESE22default:default2?
wD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/serdes_1_to_468_idelay_ddr.vhd2default:default2
3972default:default8@Z8-113h px? 
c
%s
*synth2K
7	Parameter DELAY_SRC bound to: IDATAIN - type: string 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter HIGH_PERFORMANCE_MODE bound to: TRUE - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter IDELAY_TYPE bound to: VAR_LOAD - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter IDELAY_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter REFCLK_FREQUENCY bound to: 310.000000 - type: double 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2
idelay_s2default:default2
IDELAYE22default:default2?
wD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/serdes_1_to_468_idelay_ddr.vhd2default:default2
4342default:default8@Z8-113h px? 
_
%s
*synth2G
3	Parameter DATA_RATE bound to: DDR - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter DYN_CLK_INV_EN bound to: FALSE - type: string 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter INTERFACE_TYPE bound to: NETWORKING - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IOBDELAY bound to: IFD - type: string 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2
	iserdes_s2default:default2
	ISERDESE22default:default2?
wD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/serdes_1_to_468_idelay_ddr.vhd2default:default2
4542default:default8@Z8-113h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
serdes_1_to_468_idelay_ddr2default:default2
42default:default2
12default:default2?
wD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/serdes_1_to_468_idelay_ddr.vhd2default:default2
962default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
gearbox32to662default:default2?
nD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/gearbox32to66_wip.vhd2default:default2
132default:default2%
gearbox32to66_cmp2default:default2!
gearbox32to662default:default2?
oD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/aurora_rx_lane_wip.vhd2default:default2
4372default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2!
gearbox32to662default:default2?
nD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/gearbox32to66_wip.vhd2default:default2
292default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
HSn_balenced2default:default2|
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default2
	u_aligner2default:default2 
HSn_balenced2default:default2?
nD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/gearbox32to66_wip.vhd2default:default2
722default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2 
HSn_balenced2default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys20
HSn_balenced__parameterized02default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0001011 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter MIN_POS bound to: 0 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 32 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys20
HSn_balenced__parameterized12default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter N bound to: 6 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter MIN_POS bound to: 0 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 16 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys20
HSn_balenced__parameterized22default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000011 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter MIN_POS bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter MAX_POS bound to: 8 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
unit_seeker2default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter INIT_POS bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter END_POS bound to: 0 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
unit_seeker2default:default2
 2default:default2
52default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
HSn_balenced__parameterized32default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000010 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter MIN_POS bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter MAX_POS bound to: 8 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2/
unit_seeker__parameterized02default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter INIT_POS bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter END_POS bound to: 4 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
unit_seeker__parameterized02default:default2
 2default:default2
52default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2/
unit_seeker__parameterized12default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter INIT_POS bound to: 5 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter END_POS bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
unit_seeker__parameterized12default:default2
 2default:default2
52default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
HSn_balenced__parameterized32default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
HSn_balenced__parameterized22default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
HSn_balenced__parameterized42default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000011 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter MIN_POS bound to: 9 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 16 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2/
unit_seeker__parameterized22default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter INIT_POS bound to: 9 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter END_POS bound to: 9 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
unit_seeker__parameterized22default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
HSn_balenced__parameterized52default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000010 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 10 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 16 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2/
unit_seeker__parameterized32default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 10 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 13 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
unit_seeker__parameterized32default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2/
unit_seeker__parameterized42default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 14 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 16 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
unit_seeker__parameterized42default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
HSn_balenced__parameterized52default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
HSn_balenced__parameterized42default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
HSn_balenced__parameterized12default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
HSn_balenced__parameterized62default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000101 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 17 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 32 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys20
HSn_balenced__parameterized72default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter N bound to: 3 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 17 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 24 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2/
unit_seeker__parameterized52default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 17 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 17 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
unit_seeker__parameterized52default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
HSn_balenced__parameterized82default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000010 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 18 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 24 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2/
unit_seeker__parameterized62default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 18 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 21 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
unit_seeker__parameterized62default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2/
unit_seeker__parameterized72default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 22 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 24 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
unit_seeker__parameterized72default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
HSn_balenced__parameterized82default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
HSn_balenced__parameterized72default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
HSn_balenced__parameterized92default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000010 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 25 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 32 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2/
unit_seeker__parameterized82default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 25 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 28 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
unit_seeker__parameterized82default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2/
unit_seeker__parameterized92default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 29 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
unit_seeker__parameterized92default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
HSn_balenced__parameterized92default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
HSn_balenced__parameterized62default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
HSn_balenced__parameterized02default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
HSn_balenced__parameterized102default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0001011 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 33 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 65 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys21
HSn_balenced__parameterized112default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter N bound to: 6 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 33 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 49 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys21
HSn_balenced__parameterized122default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000011 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 33 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 41 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys20
unit_seeker__parameterized102default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 33 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 33 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
unit_seeker__parameterized102default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
HSn_balenced__parameterized132default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000010 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 34 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 41 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys20
unit_seeker__parameterized112default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 34 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 37 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
unit_seeker__parameterized112default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
unit_seeker__parameterized122default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 38 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 41 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
unit_seeker__parameterized122default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
HSn_balenced__parameterized132default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
HSn_balenced__parameterized122default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
HSn_balenced__parameterized142default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000011 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 42 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 49 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys20
unit_seeker__parameterized132default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 42 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 42 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
unit_seeker__parameterized132default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
HSn_balenced__parameterized152default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000010 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 43 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 49 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys20
unit_seeker__parameterized142default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 43 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 46 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
unit_seeker__parameterized142default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
unit_seeker__parameterized152default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 47 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 49 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
unit_seeker__parameterized152default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
HSn_balenced__parameterized152default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
HSn_balenced__parameterized142default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
HSn_balenced__parameterized112default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
HSn_balenced__parameterized162default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000101 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 50 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 65 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys21
HSn_balenced__parameterized172default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter N bound to: 3 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 50 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 57 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys20
unit_seeker__parameterized162default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 50 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 50 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
unit_seeker__parameterized162default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
HSn_balenced__parameterized182default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000010 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 51 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 57 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys20
unit_seeker__parameterized172default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 51 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 54 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
unit_seeker__parameterized172default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
unit_seeker__parameterized182default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 55 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 57 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
unit_seeker__parameterized182default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
HSn_balenced__parameterized182default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
HSn_balenced__parameterized172default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
HSn_balenced__parameterized192default:default2
 2default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter N bound to: 7'b0000010 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MIN_POS bound to: 58 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MAX_POS bound to: 65 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_TOP_ALIGNER bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys20
unit_seeker__parameterized192default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 58 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 61 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
unit_seeker__parameterized192default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
unit_seeker__parameterized202default:default2
 2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter INIT_POS bound to: 62 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter END_POS bound to: 65 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter POS_STEP bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
unit_seeker__parameterized202default:default2
 2default:default2
62default:default2
12default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
HSn_balenced__parameterized192default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
HSn_balenced__parameterized162default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
HSn_balenced__parameterized102default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
HSn_balenced2default:default2
 2default:default2
62default:default2
12default:default2~
hD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/HSn_balenced.sv2default:default2
12default:default8@Z8-6155h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
gearbox32to662default:default2
72default:default2
12default:default2?
nD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/gearbox32to66_wip.vhd2default:default2
292default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
descrambler2default:default2z
fD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/descrambler.v2default:default2
52default:default2#
descrambler_cmp2default:default2
descrambler2default:default2?
oD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/aurora_rx_lane_wip.vhd2default:default2
4972default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2
descrambler2default:default2
 2default:default2|
fD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/descrambler.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
descrambler2default:default2
 2default:default2
82default:default2
12default:default2|
fD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/descrambler.v2default:default2
52default:default8@Z8-6155h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
aurora_rx_lane2default:default2
92default:default2
12default:default2?
oD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/aurora_rx_lane_wip.vhd2default:default2
412default:default8@Z8-256h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	vc709_top2default:default2
 2default:default2
102default:default2
12default:default2?
sD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.srcs/sources_1/new/vc709_top.sv2default:default2
232default:default8@Z8-6155h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1361.520 ; gain = 111.566
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1361.520 ; gain = 111.566
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1361.520 ; gain = 111.566
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.2072default:default2
1361.5202default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
42default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?d:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
u_pll	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?d:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
u_pll	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
pD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.srcs/constrs_1/new/vc709.xdc2default:default8Z20-179h px? 
?
AClock '%s' completely overrides clock '%s'.
New: %s
Previous: %s
738*constraints2
clk2default:default2
clk_p2default:default2?
dummy1"b
Ncreate_clock -period 6.250 -name clk -waveform {0.000 3.125} [get_ports clk_p]2default:default"{
pD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.srcs/constrs_1/new/vc709.xdc2 [::"
1:]2default:default2?
dummy2"@
,create_clock -period 6.250 [get_ports clk_p]2default:default"?
?d:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2 [::"
1:]2default:default8Z18-1056h px? 
?
No cells matched '%s'.
180*	planAhead2 
*idelayctrl*2default:default2?
pD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.srcs/constrs_1/new/vc709.xdc2default:default2
702default:default8@Z12-180h px?
?
No cells matched '%s'.
180*	planAhead2

*idelaye2*2default:default2?
pD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.srcs/constrs_1/new/vc709.xdc2default:default2
712default:default8@Z12-180h px?
?
Finished Parsing XDC File [%s]
178*designutils2?
pD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.srcs/constrs_1/new/vc709.xdc2default:default8Z20-178h px? 
?
?One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2?
pD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.srcs/constrs_1/new/vc709.xdc2default:default2/
.Xil/vc709_top_propImpl.xdc2default:defaultZ1-498h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
pD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/YARR_rx/YARR_rx.srcs/constrs_1/new/vc709.xdc2default:default2/
.Xil/vc709_top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1513.1212default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0212default:default2
1513.1212default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Loading part: xc7vx690tffg1761-2
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
!inferring latch for variable '%s'327*oasys2 
sync_cnt_reg2default:default2?
oD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/aurora_rx_lane_wip.vhd2default:default2
4532default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 21    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 28    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    5 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit         XORs := 64    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 8     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Wide XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Wide XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Wide XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              194 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               67 Bit    Registers := 22    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               66 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               58 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               33 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 44    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 29    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 71    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   66 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 22    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 14    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  22 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  12 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 73    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2p
\Part Resources:
DSPs: 3600 (col length:200)
BRAMs: 2940 (col length: RAMB18 200 RAMB36 100)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
merging register '%s' into '%s'3619*oasys2,
seekerR/buffer_reg[66:0]2default:default2,
seekerL/buffer_reg[66:0]2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
242default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
seekerR/buffer_reg[66:0]2default:default2,
seekerL/buffer_reg[66:0]2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
242default:default8@Z8-4471h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[63]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[62]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[61]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[60]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[59]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[58]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[57]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[56]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[55]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[54]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[53]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[52]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[51]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[50]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[49]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[48]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[47]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[46]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[45]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[44]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[43]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[42]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[41]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[40]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[39]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[38]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[37]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[36]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[35]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[34]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[33]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[32]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[31]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[30]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[29]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[28]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[27]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[26]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[25]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[24]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[23]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[22]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[21]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[20]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[19]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[18]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[17]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[16]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[15]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[14]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[13]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[12]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[11]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[10]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
gbox_buffer[9]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
gbox_buffer[8]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
gbox_buffer[7]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
gbox_buffer[6]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
gbox_buffer[5]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
gbox_buffer[4]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
gbox_buffer[3]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
gbox_buffer[2]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
gbox_buffer[1]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
gbox_buffer[0]2default:default20
HSn_balenced__parameterized52default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[63]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[62]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[61]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[60]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[59]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[58]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[57]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[56]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[55]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[54]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[53]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[52]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[51]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[50]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[49]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[48]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[47]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[46]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[45]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[44]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[43]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[42]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[41]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[40]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[39]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[38]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[37]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[36]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[35]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[34]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[33]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[32]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[31]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[30]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[29]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
gbox_buffer[28]2default:default2/
unit_seeker__parameterized22default:defaultZ8-7129h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'seekerL/seekerL/seeker_pos_idx_c_reg[0]2default:default2
FDRE2default:default2;
'seekerL/seekerL/seeker_pos_idx_c_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'seekerL/seekerL/seeker_pos_idx_c_reg[1]2default:default2
FDRE2default:default2;
'seekerL/seekerL/seeker_pos_idx_c_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'seekerL/seekerL/seeker_pos_idx_c_reg[2]2default:default2
FDRE2default:default2;
'seekerL/seekerL/seeker_pos_idx_c_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'seekerL/seekerL/seeker_pos_idx_c_reg[3]2default:default2
FDRE2default:default2;
'seekerL/seekerL/seeker_pos_idx_c_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'seekerL/seekerL/seeker_pos_idx_c_reg[4]2default:default2
FDRE2default:default2;
'seekerL/seekerL/seeker_pos_idx_c_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'seekerL/seekerL/seeker_pos_idx_c_reg[5]2default:default2
FDRE2default:default2;
'seekerL/seekerL/seeker_pos_idx_c_reg[6]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\seekerL/seekerL /\seeker_pos_idx_c_reg[6] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!seekerL/seekerL/offset_pos_reg[0]2default:default2
FDE2default:default25
!seekerL/seekerL/offset_pos_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!seekerL/seekerL/offset_pos_reg[1]2default:default2
FDE2default:default25
!seekerL/seekerL/offset_pos_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!seekerL/seekerL/offset_pos_reg[2]2default:default2
FDE2default:default25
!seekerL/seekerL/offset_pos_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!seekerL/seekerL/offset_pos_reg[3]2default:default2
FDE2default:default25
!seekerL/seekerL/offset_pos_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!seekerL/seekerL/offset_pos_reg[4]2default:default2
FDE2default:default25
!seekerL/seekerL/offset_pos_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!seekerL/seekerL/offset_pos_reg[5]2default:default2
FDE2default:default25
!seekerL/seekerL/offset_pos_reg[6]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%\seekerL/seekerL /\offset_pos_reg[6] 2default:defaultZ8-3333h px? 
?
merging register '%s' into '%s'3619*oasys2,
seekerR/buffer_reg[66:0]2default:default2,
seekerL/buffer_reg[66:0]2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
242default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
seekerR/buffer_reg[66:0]2default:default2,
seekerL/buffer_reg[66:0]2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
242default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
seekerR/buffer_reg[66:0]2default:default2,
seekerL/buffer_reg[66:0]2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
242default:default8@Z8-4471h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
merging register '%s' into '%s'3619*oasys2,
seekerR/buffer_reg[66:0]2default:default2,
seekerL/buffer_reg[66:0]2default:default2}
gD:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/src/hdl/version2-hongjiang/fpga/unit_seeker.sv2default:default2
242default:default8@Z8-4471h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%minusOp_inferred/\gearbox_cnt_reg[0] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
i_2/data66_cnt_reg[6]2default:default2
FDCE2default:default2)
i_2/data66_cnt_reg[7]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2+
i_2/\data66_cnt_reg[7] 2default:defaultZ8-3333h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:57 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:38 ; elapsed = 00:01:04 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:39 ; elapsed = 00:01:05 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:41 ; elapsed = 00:01:07 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:45 ; elapsed = 00:01:11 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:45 ; elapsed = 00:01:11 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:45 ; elapsed = 00:01:11 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:45 ; elapsed = 00:01:11 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:45 ; elapsed = 00:01:11 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:45 ; elapsed = 00:01:11 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |clk_wiz_0     |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|      |Cell       |Count |
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|1     |clk_wiz    |     1|
2default:defaulth px? 
H
%s*synth20
|2     |CARRY4     |     2|
2default:defaulth px? 
H
%s*synth20
|3     |IDELAYCTRL |     1|
2default:defaulth px? 
H
%s*synth20
|4     |IDELAYE2   |     2|
2default:defaulth px? 
H
%s*synth20
|5     |ISERDESE2  |     2|
2default:defaulth px? 
H
%s*synth20
|6     |LUT1       |    61|
2default:defaulth px? 
H
%s*synth20
|7     |LUT2       |   110|
2default:defaulth px? 
H
%s*synth20
|8     |LUT3       |   351|
2default:defaulth px? 
H
%s*synth20
|9     |LUT4       |   114|
2default:defaulth px? 
H
%s*synth20
|10    |LUT5       |   549|
2default:defaulth px? 
H
%s*synth20
|11    |LUT6       |   845|
2default:defaulth px? 
H
%s*synth20
|12    |MUXF7      |   175|
2default:defaulth px? 
H
%s*synth20
|13    |MUXF8      |    21|
2default:defaulth px? 
H
%s*synth20
|14    |FDCE       |   690|
2default:defaulth px? 
H
%s*synth20
|15    |FDPE       |     3|
2default:defaulth px? 
H
%s*synth20
|16    |FDRE       |   611|
2default:defaulth px? 
H
%s*synth20
|17    |FDSE       |   125|
2default:defaulth px? 
H
%s*synth20
|18    |IBUF       |     3|
2default:defaulth px? 
H
%s*synth20
|19    |OBUF       |     5|
2default:defaulth px? 
H
%s*synth20
|20    |OBUFT      |     3|
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:45 ; elapsed = 00:01:12 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 201 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:32 ; elapsed = 00:01:11 . Memory (MB): peak = 1513.121 ; gain = 111.566
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:45 ; elapsed = 00:01:17 . Memory (MB): peak = 1513.121 ; gain = 263.168
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0682default:default2
1513.1212default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
2022default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12default:default2
22default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1513.1212default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
e73669482default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1542default:default2
1042default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:532default:default2
00:01:272default:default2
1513.1212default:default2
263.1682default:defaultZ17-268h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
|D:/UW/A-MasterResearch-LHC/CERN_RD53B_SEE/CERN_RD53B_SEE/tools/fpga/SEE_HeadSeeker/SEE_HeadSeeker.runs/synth_1/vc709_top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file vc709_top_utilization_synth.rpt -pb vc709_top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Sep 19 02:02:44 20222default:defaultZ17-206h px? 


End Record