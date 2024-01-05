##GPIO  
參考文章:  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1266890/txs0108e-output-voltage-instability?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
"If the signals are GPIO (typically fixed direction signals), it is recommended to use the AXC8T245/AVC8T245, LXC8T245/LVC8T245 instead of the auto-bidirectional translators. "  
  
##Maximum output load capacitance  
參考文章:  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1260227/txs0108e-q1-maximum-output-load-capacitance?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
"Load capacitance should be less than 70 pF. "  
  
##I²C  
參考文章:  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1242609/txs0108e-level-translation?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
"I²C always requires open-drain outputs. Use a level shifter like the TCA9800. "  
  
##Driving OE pin  
參考文章:  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1245165/txs0108e-driving-oe-pin?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
##PORT B output voltage drops  
參考文章:  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1237711/txs0108e-port-b-output-voltage-drops?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
"The TXS has edge accelerators that trigger when they detect what looks like the beginning of a rising or falling edge. Oscillations due to false triggering can be caused by ringing on the signal line. Ringing can be caused by additional capacitance or inductance. "  
  
