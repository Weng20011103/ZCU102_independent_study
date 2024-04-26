// reset, GPIO_SW_C
set_property PACKAGE_PIN AG13     [get_ports "reset"] ;
set_property IOSTANDARD  LVCMOS33 [get_ports "reset"] ;

// DAC U1015
// J2, LA01_P
set_property PACKAGE_PIN AB4 	  [get_ports "dac_signals_15[3]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "dac_signals_15[3]"] ;
// J2, LA33_N
set_property PACKAGE_PIN V11	  [get_ports "dac_signals_15[2]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "dac_signals_15[2]"] ;
// J2, LA31_N
set_property PACKAGE_PIN V7 	  [get_ports "dac_signals_15[1]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "dac_signals_15[1]"] ;
// J2, 	LA31_P
set_property PACKAGE_PIN V8 	  [get_ports "dac_signals_15[0]"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "dac_signals_15[0]"] ;

// clk_5MHz, LA22_P
set_property PACKAGE_PIN M15 	  [get_ports "clk_5MHz"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "clk_5MHz"] ;