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
|11|VIN1|要關測的訊號輸入口|
|12|VMID|改變 ADC 的探測區間中心|
|13|VREF IN/OUT|不須使用|
|14|VDD|電源供應|
|15|AGND|類比地|
|16|DB7|轉換結果|
|17|DB6|轉換結果|
|18|DB5|轉換結果|
|19|DB4|轉換結果|
|20|DB3|轉換結果|
  
## 程式說明  
  
## IC  
IC 為 AD7822BNZ。  
**LSB size = 7.8125 mV**  
[AD7822BNZ](https://www.mouser.tw/ProductDetail/Analog-Devices/AD7822BNZ?qs=%2FtpEQrCGXCyXv71BkCSjyQ%3D%3D)  
[Data Sheet](https://www.mouser.tw/datasheet/2/609/AD7822_7825_7829-3119929.pdf)  