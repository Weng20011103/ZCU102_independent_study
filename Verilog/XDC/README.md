# XDC 腳位  
此資料夾紀錄 ZCU102 和 FMC 板使用到的腳位。  
  
## ZCU102 PMOD GPIO Headers J55 母頭  
![PMOD.heic](PMOD.heic "PMOD.heic")  
|ZCU102 名稱|Vivado 腳位對應|使用的腳位|
|:--:|:--:|:--:|
|PMOD0_0|A20|ADC 的 DB0 輸入|
|PMOD0_1|B20|ADC 的 DB1 輸入|
|PMOD0_2|A22|ADC 的 DB2 輸入|
|PMOD0_3|A21|ADC 的 DB3 輸入|
|PMOD0_4|B21|ADC 的 DB4 輸入|
|PMOD0_5|C21|ADC 的 DB5 輸入|
|PMOD0_6|C22|ADC 的 DB6 輸入|
|PMOD0_7|D21|ADC 的 DB7 輸入|
  
## FMC J4 腳位  
|Pin 編號|FMC 名稱|Vivado 腳位對應|使用的腳位|
|:--:|:--:|:--:|:--:|
|Pin 7|LA02_P|V2||
|Pin 8|LA02_N|V1||
|Pin 10|LA04_P|AA2||
|Pin 11|LA04_N|AA1||
|Pin 13|LA07_P|U5||
|Pin 14|LA07_N|U4||
|Pin 16|LA11_P|AB6||
|Pin 17|LA11_N|AB5||
|Pin 19|LA15_P|Y10||
|Pin 20|LA15_N|Y9|ADC 的 CONVST 訊號|
|Pin 22|LA19_P|L13|ADC 的 EOC 訊號|
|Pin 23|LA19_N|K13|ADC 的 RD 訊號|
|Pin 25|LA21_P|P12|ADC 的 PD 訊號|
|Pin 26|LA21_N|N12||
|Pin 28|LA24_P|L12|U_1016 的 A2 訊號|
|Pin 29|LA24_N|K12|U_1016 的 A1 訊號|
|Pin 31|LA28_P|T7|U_1016 的 A0 訊號|
|Pin 32|LA28_N|T6|U_1016 的 EN 訊號|
|Pin 34|LA30_P|V6|U_1006 的 A2 訊號|
|Pin 35|LA30_N|U6|U_1006 的 A1 訊號|
|Pin 37|LA32_P|U11|U_1006 的 A0 訊號|
|Pin 38|LA32_N|T11|U_1006 的 EN 訊號|
