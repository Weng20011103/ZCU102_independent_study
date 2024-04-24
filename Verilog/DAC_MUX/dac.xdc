// reset, GPIO_SW_C
set_property PACKAGE_PIN AG13     [get_ports "reset"] ;
set_property IOSTANDARD  LVCMOS33 [get_ports "reset"] ;

// BL DEMUX U1001
// J4, LA07_P
set_property PACKAGE_PIN U5       [get_ports "mux_signals[15]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[15]"] ;
// J4, LA04_N
set_property PACKAGE_PIN AA1      [get_ports "mux_signals[14]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[14]"] ;
// J4, LA04_P
set_property PACKAGE_PIN AA2      [get_ports "mux_signals[13]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[13]"] ;
// J4, LA02_N
set_property PACKAGE_PIN V1       [get_ports "mux_signals[12]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[12]"] ;

// BSL DEMUX U1005
// J4, LA15_P
set_property PACKAGE_PIN Y10      [get_ports "mux_signals[9]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[9]"] ;
// J4, LA11_N
set_property PACKAGE_PIN AB5      [get_ports "mux_signals[8]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "mux_signals[8]"] ;

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