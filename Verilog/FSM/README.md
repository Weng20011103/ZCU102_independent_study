# FSM  
此資料夾紀錄 FSM 的 Verilog 檔和某些訊號說明。  
  
## mux_signals 訊號  
`mux_signals`訊號控制`U1000`、`U1001`、`U1002`、`U1005`、`U1006`和`U1016`元件的控制訊號。  
  
|元件|訊號|mux_signals|ZCU102 腳位|FMC 名稱|
|:---|:---|:---|:--:|:--:|
|U1000 WL DEMUX|VWL_EN|mux_signals[17]|||
|U1000 WL DEMUX|VWL_A0|mux_signals[16]|||
|U1001 BL DEMUX|VBL_EN|mux_signals[15]|||
|U1001 BL DEMUX|VBL_A2|mux_signals[14]|||
|U1001 BL DEMUX|VBL_A1|mux_signals[13]|||
|U1001 BL DEMUX|VBL_A0|mux_signals[12]|||
|U1002 SL DEMUX|VSL_EN|mux_signals[11]|||
|U1002 SL DEMUX|VSL_A0|mux_signals[10]|||
|U1005 BSL DEMUX|VBSL_EN|mux_signals[9]|||
|U1005 BSL DEMUX|VBSL_A0|mux_signals[8]|||
|U1006 BL MUX to MOS|VBLO_EN|mux_signals[7]|T11|LA32_N|
|U1006 BL MUX to MOS|VBLO_A2|mux_signals[6]|V6|LA30_P|
|U1006 BL MUX to MOS|VBLO_A1|mux_signals[5]|U6|LA30_N|
|U1006 BL MUX to MOS|VBLO_A0|mux_signals[4]|U11|LA32_P|
|U1016 BL MUX to GND|ENg|mux_signals[3]|T6|LA28_N|
|U1016 BL MUX to GND|A2g|mux_signals[2]|L12|LA24_P|
|U1016 BL MUX to GND|A1g|mux_signals[1]|K12|LA24_N|
|U1016 BL MUX to GND|A0g|mux_signals[0]|T7|LA28_P|
