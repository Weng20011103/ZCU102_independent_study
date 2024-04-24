# FSM  
此資料夾紀錄 FSM 的 Verilog 檔和某些訊號說明。  
  
## mux_signals 訊號  
`mux_signals`訊號控制`U1000`、`U1001`、`U1002`、`U1005`、`U1006`和`U1016`元件的控制訊號。  
  
|元件|訊號|mux_signals|ZCU102 腳位|FMC 名稱|
|:---|:---|:---|:--:|:--:|
|U1000 WL DEMUX|VWL_EN|mux_signals[17]|V2|LA02_P|
|U1000 WL DEMUX|VWL_A0|mux_signals[16]|V12|LA33_P|
|U1001 BL DEMUX|VBL_EN|mux_signals[15]|U5|LA07_P|
|U1001 BL DEMUX|VBL_A2|mux_signals[14]|AA1|LA04_N|
|U1001 BL DEMUX|VBL_A1|mux_signals[13]|AA2|LA04_P|
|U1001 BL DEMUX|VBL_A0|mux_signals[12]|V1|LA02_N|
|U1002 SL DEMUX|VSL_EN|mux_signals[11]|AB6|LA11_P|
|U1002 SL DEMUX|VSL_A0|mux_signals[10]|U4|LA07_N|
|U1005 BSL DEMUX|VBSL_EN|mux_signals[9]|Y10|LA15_P|
|U1005 BSL DEMUX|VBSL_A0|mux_signals[8]|AB5|LA11_N|
|U1006 BL MUX to MOS|VBLO_EN|mux_signals[7]|T11|LA32_N|
|U1006 BL MUX to MOS|VBLO_A2|mux_signals[6]|V6|LA30_P|
|U1006 BL MUX to MOS|VBLO_A1|mux_signals[5]|U6|LA30_N|
|U1006 BL MUX to MOS|VBLO_A0|mux_signals[4]|U11|LA32_P|
|U1016 BL MUX to GND|ENg|mux_signals[3]|T6|LA28_N|
|U1016 BL MUX to GND|A2g|mux_signals[2]|L12|LA24_P|
|U1016 BL MUX to GND|A1g|mux_signals[1]|K12|LA24_N|
|U1016 BL MUX to GND|A0g|mux_signals[0]|T7|LA28_P|
  
## rram_signals 訊號  
`rram_signals`訊號控制`rram`元件的控制訊號。  
***註: `VWL_INPUT`不需要了***  
  
|訊號|rram_signals|ZCU102 腳位|FMC 名稱|
|:---|:---|:--:|:--:|
|S1|rram_signals[18]|L10|LA27_N|
|VSL_S1|rram_signals[17]|M10|LA27_P|
|SL_6|rram_signals[16]|N8|LA18_N|
|SL_5|rram_signals[15]|N9|LA18_P|
|SL_4|rram_signals[14]|AC6|LA14_N|
|SL_3|rram_signals[13]|AC7|LA14_P|
|SL_2|rram_signals[12]|W4|LA10_N|
|SL_1|rram_signals[11]|W5|LA10_P|
|WL_1_SU|rram_signals[10]|AC1|LA06_N|
|WL_2_SU|rram_signals[9]|AC2|LA06_P|
|WL_3_SU|rram_signals[8]|K15|LA26_N|
|WL_4_SU|rram_signals[7]|L15|LA26_P|
|WL_5_SU|rram_signals[6]|K16|LA23_N|
|WL_6_SU|rram_signals[5]|L16|LA23_P|
|WL_7_SU|rram_signals[4]|N11|LA17_N|
|WL_8_SU|rram_signals[3]|P11|LA17_P|
|VWL_S1|rram_signals[2]|AC8|LA13_N|
|VWL_INPUT|rram_signals[1]|AB8|LA13_P|
|READ|rram_signals[0]|W1|LA09_N|
  
## dac_signals_4 訊號  
`dac_signals_4`訊號控制編號`U1004`的`DAC`元件的控制訊號。  
  
|訊號|dac_signals_4|ZCU102 腳位|FMC 名稱|
|:---|:---|:--:|:--:|
|CLK_L|dac_signals_4[3]|W2|LA09_P|
|SDI_L|dac_signals_4[2]|AC3|LA05_N|
|LD_L|dac_signals_4[1]|AB3|LA05_P|
|CLR_L|dac_signals_4[0]|AC4|LA01_N|
  
## dac_signals_15 訊號  
`dac_signals_15`訊號控制編號`U1015`的`DAC`元件的控制訊號。  
  
|訊號|dac_signals_15|ZCU102 腳位|FMC 名稱|
|:---|:---|:--:|:--:|
|CLK_R|dac_signals_15[3]|AB4|LA01_P|
|SDI_R|dac_signals_15[2]|V11|LA33_N|
|LD_R|dac_signals_15[1]|V7|LA31_N|
|CLR_R|dac_signals_15[0]|V8|LA31_P|
  
## dac_signals_15 訊號  
`dac_signals_15`訊號控制編號`U1015`的`DAC`元件的控制訊號。  
  
|訊號|dac_signals_15|ZCU102 腳位|FMC 名稱|
|:---|:---|:--:|:--:|
|CLK_R|dac_signals_15[3]|AB4|LA01_P|
|SDI_R|dac_signals_15[2]|V11|LA33_N|
|LD_R|dac_signals_15[1]|V7|LA31_N|
|CLR_R|dac_signals_15[0]|V8|LA31_P|
  
## ADC 訊號  
`ADC`訊號控制編號`U1010`的`ADC`元件的控制訊號。  
  
|訊號|ZCU102 腳位|FMC 名稱|
|:---|:--:|:--:|
|ADC_CONVST|Y9|LA15_N|
|ADC_RD|K13|LA19_N|
|ADC_EOC|L13|LA21_P|
|ADC_PD|P12|LA21_P|
  
`Data`訊號接收`ADC`元件的`DB7`到`DB0`。  
  
|訊號|Data|ZCU102 腳位|ZCU102 名稱|
|:--:|:--:|:--:|:--:|
|DB7|Data[7]|D21|PMOD0_7|
|DB6|Data[6]|C22|PMOD0_6|
|DB5|Data[5]|C21|PMOD0_5|
|DB4|Data[4]|B21|PMOD0_4|
|DB3|Data[3]|A21|PMOD0_3|
|DB2|Data[2]|A22|PMOD0_2|
|DB1|Data[1]|B20|PMOD0_1|
|DB0|Data[0]|A20|PMOD0_0|