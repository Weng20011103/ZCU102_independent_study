# ADC  
此 Verilog 檔負責控制 ADC 的數位控制訊號。  
  
## ADC 腳位說明  
|Pin 編號|名稱|說明|
|:--:|:--:|:--:|
|1|DB2|轉換結果|
|2|DB1|轉換結果|
|3|DB0|轉換結果|
|4|CONVST|控制何時開始轉換|
|5|CS|IC 選擇|
|6|RD|將輸出結果呈現在 DB 上|
|7|DGND|數位地|
|8|EOC|轉換完成時由 1 變 0|
|9|PD|電壓供應穩定後由 0 變 1|
|10|NC|沒功用|
|11|VIN1|要觀測的訊號輸入口|
|12|VMID|改變 ADC 的探測區間中心|
|13|VREF IN/OUT|不須使用|
|14|VDD|電源供應|
|15|AGND|類比地|
|16|DB7|轉換結果|
|17|DB6|轉換結果|
|18|DB5|轉換結果|
|19|DB4|轉換結果|
|20|DB3|轉換結果|
  
## ADC（+3.3 V）時間要求  
|時間參數|3 V ± 10% |單位|說明|
|:--:|:--:|:--:|:--:|
|t1|420|ns max|轉換所需時間|
|t2|20|ns min|CONVST 維持於 0 的最少時間|
|t3|30|ns min|RD 恢復至 1 時離下一次的 CONVST 下拉時間|
|t4|110|ns max|EOC 在 0 的最久時間|
|t4|70|ns min|EOC 在 0 的最小時間|
|t5|10|ns max|EOC 在 RD 拉高後進行拉高的時間|
|t6|0|ns min|CS to RD setup time|
|t7|0|ns min|CS to RD hold time|
|t8|30|ns min|RD 維持於 0 的最少時間|
|t9|20|ns max|DB 在 RD 下拉後把有效資料輸出的時間|
|t10|20|ns max|Bus relinquish time after RD high|
|t10|5|ns min|Bus relinquish time after RD high|
|tPOWER UP|25|μs typ|Power-up time from rising edge of CONVST using on-chip reference|
  
## 程式說明  
  
## IC  
IC 為 AD7822BNZ。  
**LSB size = 7.8125 mV**  
[AD7822BNZ](https://www.mouser.tw/ProductDetail/Analog-Devices/AD7822BNZ?qs=%2FtpEQrCGXCyXv71BkCSjyQ%3D%3D)  
[Data Sheet](https://www.mouser.tw/datasheet/2/609/AD7822_7825_7829-3119929.pdf)  