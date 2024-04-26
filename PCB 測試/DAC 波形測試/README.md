# DAC 波形測試  
分別測試 PCB 板上`U1004 DAC`和`U1015 DAC`的波形。  
  
兩者使用相同`Vivado`專案但改變`DAC`腳位而已。  
  
# Vivado  
輸入時鐘使用`20 MHz`，輸出至 DAC 的 CLK 頻率為 `5 MHz`。  
  
其中每一個`state`所佔時長為`50 ns`。  
![state.png](DAC_U1015/Figure_2.png "state.png")   
  
# 測試結果比較  
![DAC_U1004.png](DAC_U1004/Figure_1.png "DAC_U1004.png")  
![DAC_U1015.png](DAC_U1015/Figure_1.png "DAC_U1015.png")  
  
# DAC U1004 測試結果  
![scope_5.png](DAC_U1004/Figure_5.png "scope_5.png")  
  
Channel 3 改觀測`mux_signals`中的`EN`訊號。  
![scope_9.png](DAC_U1004_MUX_EN/Figure_9.png "scope_9.png")  

# DAC U1015 測試結果  
![scope_9.png](DAC_U1015/Figure_2.png "scope_9.png")  
![scope_4.png](DAC_U1015/Figure_4.png "scope_4.png")  
![scope_5.png](DAC_U1015/Figure_5.png "scope_5.png")  