// ZCU102 PMOD J55
// ADC DB0 to DB7
// PMOD0_0
set_property PACKAGE_PIN A20      [get_ports "DB0_in"] ;
set_property IOSTANDARD  LVCMOS33 [get_ports "DB0_in"] ;
// PMOD0_1
set_property PACKAGE_PIN B20      [get_ports "DB1_in"] ;
set_property IOSTANDARD  LVCMOS33 [get_ports "DB1_in"] ;
// PMOD0_2
set_property PACKAGE_PIN A22      [get_ports "DB2_in"] ;
set_property IOSTANDARD  LVCMOS33 [get_ports "DB2_in"] ;
// PMOD0_3
set_property PACKAGE_PIN A21      [get_ports "DB3_in"] ;
set_property IOSTANDARD  LVCMOS33 [get_ports "DB3_in"] ;
// PMOD0_4
set_property PACKAGE_PIN B21      [get_ports "DB4_in"] ;
set_property IOSTANDARD  LVCMOS33 [get_ports "DB4_in"] ;
// PMOD0_5
set_property PACKAGE_PIN C21      [get_ports "DB5_in"] ;
set_property IOSTANDARD  LVCMOS33 [get_ports "DB5_in"] ;
// PMOD0_6
set_property PACKAGE_PIN C22      [get_ports "DB6_in"] ;
set_property IOSTANDARD  LVCMOS33 [get_ports "DB6_in"] ;
// PMOD0_7
set_property PACKAGE_PIN D21      [get_ports "DB7_in"] ;
set_property IOSTANDARD  LVCMOS33 [get_ports "DB7_in"] ;

// ADC control unit
// FMC_HPC0_LA19_P
set_property PACKAGE_PIN L13      [get_ports "EOC_18"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "EOC_18"] ;
// FMC_HPC0_LA15_N
set_property PACKAGE_PIN Y9       [get_ports "CONVST_18"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "CONVST_18"] ;
// FMC_HPC0_LA19_N
set_property PACKAGE_PIN K13      [get_ports "RD_18"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "RD_18"] ;
// FMC_HPC0_LA21_P
set_property PACKAGE_PIN P12      [get_ports "PD_18"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "PD_18"] ;

// BL MUX U1006
set_property PACKAGE_PIN V6       [get_ports "A2_out_U1006"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "A2_out_U1006"] ;
set_property PACKAGE_PIN U6       [get_ports "A1_out_U1006"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "A1_out_U1006"] ;
set_property PACKAGE_PIN U11      [get_ports "A0_out_U1006"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "A0_out_U1006"] ;
set_property PACKAGE_PIN T11      [get_ports "EN_out_U1006"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "EN_out_U1006"] ;

// BL MUX U1016
set_property PACKAGE_PIN V8       [get_ports "A2_out_U1016"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "A2_out_U1016"] ;
set_property PACKAGE_PIN V7       [get_ports "A1_out_U1016"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "A1_out_U1016"] ;
set_property PACKAGE_PIN V12      [get_ports "A0_out_U1016"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "A0_out_U1016"] ;
set_property PACKAGE_PIN V11      [get_ports "EN_out_U1016"] ;
set_property IOSTANDARD  LVCMOS18 [get_ports "EN_out_U1016"] ;