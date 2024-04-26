// reset, GPIO_SW_C
set_property PACKAGE_PIN AG13     [get_ports "reset"] ;
set_property IOSTANDARD  LVCMOS33 [get_ports "reset"] ;

// SL DEMUX U1002
// J4, LA11_P
set_property PACKAGE_PIN AB6      [get_ports "mux_signals[7]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[7]"] ;
// J4, LA07_N
set_property PACKAGE_PIN U4       [get_ports "mux_signals[6]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[6]"] ;

// BL DEMUX U1001
// J4, LA07_P
set_property PACKAGE_PIN U5       [get_ports "mux_signals[5]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[5]"] ;
// J4, LA04_N
set_property PACKAGE_PIN AA1      [get_ports "mux_signals[4]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[4]"] ;
// J4, LA04_P
set_property PACKAGE_PIN AA2      [get_ports "mux_signals[3]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[3]"] ;
// J4, LA02_N
set_property PACKAGE_PIN V1       [get_ports "mux_signals[2]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[2]"] ;

// BSL DEMUX U1005
// J4, LA15_P, VBSL_EN
set_property PACKAGE_PIN Y10      [get_ports "mux_signals[1]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[1]"] ;
// J4, LA11_N
set_property PACKAGE_PIN AB5      [get_ports "mux_signals[0]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[0]"] ;

// DAC U1004
// J2, LA09_P
set_property PACKAGE_PIN W2 	  [get_ports "dac_signals_4[3]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "dac_signals_4[3]"] ;
// J2, LA05_N
set_property PACKAGE_PIN AC3	  [get_ports "dac_signals_4[2]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "dac_signals_4[2]"] ;
// J2, LA05_P
set_property PACKAGE_PIN AB3	  [get_ports "dac_signals_4[1]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "dac_signals_4[1]"] ;
// J2, LA01_N
set_property PACKAGE_PIN AC4 	  [get_ports "dac_signals_4[0]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "dac_signals_4[0]"] ;