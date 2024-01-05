## GPIO  
參考文章:  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1266890/txs0108e-output-voltage-instability?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"If the signals are GPIO (typically fixed direction signals), it is recommended to use the AXC8T245/AVC8T245, LXC8T245/LVC8T245 instead of the auto-bidirectional translators. "  
  
## Maximum output load capacitance  
參考文章:  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1260227/txs0108e-q1-maximum-output-load-capacitance?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"Load capacitance should be less than 70 pF. "  
  
## I²C  
參考文章:  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1242609/txs0108e-level-translation?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"I²C always requires open-drain outputs. Use a level shifter like the TCA9800. "  
  
## Driving OE pin  
參考文章:  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1245165/txs0108e-driving-oe-pin?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
## PORT B output voltage drops  
參考文章:  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1237711/txs0108e-port-b-output-voltage-drops?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"The TXS has edge accelerators that trigger when they detect what looks like the beginning of a rising or falling edge. Oscillations due to false triggering can be caused by ringing on the signal line. Ringing can be caused by additional capacitance or inductance. "  
  
## Power up sequence
參考文章: 
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1200261/txs0108e-powe-up-sequence?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"When VCCA > VCCB, a current flows into VCCA and out of VCCB."  
  
## External pull-up resistor is required to connect open drain output device?  
參考文章: 
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1195175/txs0108e-the-external-pull-up-resistor-is-required-to-connect-open-drain-output-device?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"External pull-ups are not needed. "  
  
## LOOK HERE  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1225400/txs0108e-getting-3-3v-as-output-instead-of-5v?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1176591/txs0108e-q1-txs0108e-portb-io-oscillating?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
## SPI communication of 400 kbps  
參考文章: 
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1121354/txs0108e-q1-5v-3v-on-spi-communication-of-400kbps?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"TXS has internal pull-up resistors and will not work with external pull-down resistors. "  
"For fixed-direction signals, a translator like the TXU0304-Q1 would be a better solution. "  
  
## Distortion of output waveform  
參考文章: 
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1112346/txs0108e-txs0108epwr-inquiry-about-distortion-of-output-waveform?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"The capacitive load is too high (the edge accelerators of both the TXS and TXB have problems with that). "  
"For SPI applications would suggest considering two TXU0304 to better suit the application. "  

"long traces, connectors, or cables. " 要納入考慮。  
  
## PortB IO oscillating  
參考文章: 
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1176591/txs0108e-q1-txs0108e-portb-io-oscillating?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
VCCA=1.8V, VCCB=3.3V, OE always on.  
  
"The edge accelerators are indeed the likely cause, probably because of ringing on the signal lines that falsely triggers them. ""
"If you cannot change the signal traces (make them shorter, or add proper termination), then you need to use a device without edge accelerators like the LSF. "  
  
  