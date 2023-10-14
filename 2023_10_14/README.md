# 2023/10/14  
**Test_1**  
CLK_IN1_D改用Run Connection Automation連  
測試clk直接接10Mhz的clk_wiz0  
Error_1: 把BD刪除後先添加.v檔再創BD  
  
**Test_2**  
Test_1的BD加上除以10的7次的除頻器  
  
**Test_3**  
clk_wiz0的reset改用Push Button給  
dip_switch只是為了加PS用的不會用到  
  
**Test_4**  
Test_3的BD加上除以10的7次的除頻器
  
**結果**  
經由測試test1到test4全都有達到預期結果  
跟10月12日的對比後發現問題是在clk_wiz_0的**CLK_IN1_D**  
在連接BD時要用Run Connection Automation產生user_si570_sysclk的Port才行  
  
測試如果串接一堆除以10的除頻器會有問題  
要直接寫一個對應的除頻器  
  
Pmod的A22拿來輸出10Mhz的波形會不對  
Pmod的A20拿來輸出1Hz的波形會對  
  
**示波器**  
 1 Hz: 	clk clk_ou1 =  10 MHz  
10 Hz:	clk clk_ou1 = 100 MHz  
10 kHz:	clk clk_ou1 =  10 MHz  

