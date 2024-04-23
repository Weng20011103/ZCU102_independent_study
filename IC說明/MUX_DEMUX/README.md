# MUX: ADG1408LYCPZ-REEL7  
  
# 腳位  
|Pin|符號|說明|
|:---|:--:|:---|
|1|VSS|接地|
|2|S1|輸入或輸出|
|3|S2|輸入或輸出|
|4|GND|接地|
|5|S3|輸入或輸出|
|6|NIC|Not Internally Connected|
|7|S4|輸入或輸出|
|8|NIC|Not Internally Connected|
|9|NIC|Not Internally Connected|
|10|D|輸入或輸出|
|11|NIC|Not Internally Connected|
|12|S8|輸入或輸出|
|13|S7|輸入或輸出|
|14|VL|接 + 1.8 V，接上 0.1 μF 和 10 μF 的去耦電容|
|15|S6|輸入或輸出|
|16|NIC|Not Internally Connected|
|17|S5|輸入或輸出|
|18|VDD|接 + 12 V，接上 0.1 μF 和 10 μF 的去耦電容|
|19|NIC|Not Internally Connected|
|20|A2|數位控制訊號，VL = + 1.8 V，VINH = + 1.17 V，VINL = + 0.63 V|
|21|A1|數位控制訊號，VL = + 1.8 V，VINH = + 1.17 V，VINL = + 0.63 V|
|22|A0|數位控制訊號，VL = + 1.8 V，VINH = + 1.17 V，VINL = + 0.63 V|
|23|EN|數位控制訊號，VL = + 1.8 V，VINH = + 1.17 V，VINL = + 0.63 V。logic 1，ADG1408L 啟用。logic 0，ADG1408L 關閉|
|24|NIC|Not Internally Connected|
  
# 注意事項  
在 VDD、VSS 和 VL 上電後，確保在發出任何數位控制訊號之前，經過至少`50 μs`的時間。  

確保在`50 μs`的初始化階段期間，VDD、VSS 和 VL 不會中斷，因為這可能導致 ADG1408L 的時序性能不正確。 
  
當數位控制訊號`floating`時，ADG1408L 的開關處於關閉狀態，防止不需要的信號通過開關傳遞，不需要下拉電阻。  
  
為確保 ADG1408L 的正確操作，需要在 VDD、VSS 和 VL 供應腳上裝上至少 0.1 μF 和 10 μF 的去耦電容，我們的 VSS 直接接地不用接去耦電容。**  
  
# 連結  
[ADG1408LYCPZ-REEL7](https://www.mouser.tw/ProductDetail/Analog-Devices/ADG1408LYCPZ-REEL7?qs=1Kr7Jg1SGW%2FDLWV%2Fv6ZJUw%3D%3D)  
[Data Sheet](https://www.mouser.tw/datasheet/2/609/adg1408l-3365138.pdf)  