# 2023/10/12  
做BD(Block diagram)時要記得幫clk_wiz_0的CLK_IN1_D右鍵選用make port  
幫BD做**Create HDL Wrapper後再新增XDC檔**  
只要沒有PS則PYNQ會報錯  
但不管PS在幹嘛 只要有PS就OK  
  
# 2023/10/14  
測試發現除頻器不能串接太多  
clk_wiz_0的CLK_IN1_D不能用make port  
