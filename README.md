# 2023/10/12  
創建倉庫  
some_module新增了反向器、除以10的除頻器  
GPIO_LED_FSM裡放了要在板子上測試的LED程式  
**使用的Vivado版本為2020.2、PYNQv2.6**  
**如果BD不含PS 則會報錯**  
**但不管PS在幹嘛 只要有PS就OK**  
  
# 2023/10/13  
some_module新增了除以10的7次的除頻器  
實驗測試GPIO_LED_FSM只會亮AG14的LED  
推斷是1Hz的clk問題才一直卡在FSM的其中一個state  
修正了除以10的除頻器.v檔的counter4錯誤  
  
# 2023/10/14    
新增xdc資料夾  

修改10/12 GPIO的README

