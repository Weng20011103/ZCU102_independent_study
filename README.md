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
**Test_1** 
clk_in1改用Auto連接連  
測試clk直接接10Mhz的clk_wiz0  
Error_1: 把BD刪除後先添加.v檔再創BD    
**Test_2** 
Test_1的BD加上除以10的7次的除頻器  
**Test_3** 
clk_wiz0的reset改用Push Button給  
dip_switch只是為了加PS用的不會用到  
**Test_4** 
Test_3的BD加上除以10的7次的除頻器