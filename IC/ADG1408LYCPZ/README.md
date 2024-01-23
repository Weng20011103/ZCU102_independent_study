Pin 1: VSS，接地。  
Pin 2: S1，輸入或輸出。  
Pin 3: S2，輸入或輸出。  
Pin 4: GND，接地。  
Pin 5: S3，輸入或輸出。  
Pin 6: NIC(Not Internally Connected)，不用接。  
Pin 7: S4，輸入或輸出。  
Pin 8: NIC(Not Internally Connected)，不用接。  
Pin 9: NIC(Not Internally Connected)，不用接。  
Pin 10: D，輸入或輸出。  
Pin 11: NIC(Not Internally Connected)，不用接。  
Pin 12: S8，輸入或輸出。  
Pin 13: S7，輸入或輸出。  
Pin 14: VL，接+1.8V。  
Pin 15: S6，輸入或輸出。  
Pin 16: NIC(Not Internally Connected)，不用接。  
Pin 17: S5，輸入或輸出。  
Pin 18: VDD，接+12V，接上0.1μF的去耦電容。
Pin 19: NIC(Not Internally Connected)，不用接。  
Pin 20: A2，數位控制訊號，VL=+1.8V，VINH=+1.17V，VINL=+0.63V。  
Pin 21: A1，數位控制訊號，VL=+1.8V，VINH=+1.17V，VINL=+0.63V。  
Pin 22: A0，數位控制訊號，VL=+1.8V，VINH=+1.17V，VINL=+0.63V。  
Pin 23: EN，數位控制訊號，VL=+1.8V，VINH=+1.17V，VINL=+0.63V。EN=1，ADG1408L啟用。EN=0，ADG1408L關閉。  
Pin 24: NIC(Not Internally Connected)，不用接。  
  
**在VDD、VSS和VL上電後，確保在發出任何數位控制訊號之前，經過至少50μs的時間。**  
確保在50μs的初始化階段期間，VDD、VSS和VL不會中斷，因為這可能導致ADG1408L的時序性能不正確。 
  
當數位控制訊號floating時，ADG1408L的開關處於關閉狀態，防止不需要的信號通過開關傳遞，不需要下拉電阻。  
  
**為確保ADG1408L的正確操作，需要在VDD、VSS和VL供應腳上裝上至少0.1μF和10μF的去耦電容，我們的VSS直接接地不用接去耦電容。**  
  
[ADG1408LYCPZ-REEL7](https://www.mouser.tw/ProductDetail/Analog-Devices/ADG1408LYCPZ-REEL7?qs=1Kr7Jg1SGW%2FDLWV%2Fv6ZJUw%3D%3D)  
[Data Sheet](https://www.mouser.tw/datasheet/2/609/adg1408l-3365138.pdf)  