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
  
## Accelerator triggered  
參考文章: 
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1060810/txs0108e-slew-rate-v-range-consult?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"What matters is the flattest part of the edge, before the accelerator has triggered. "  
"The internal mechanism are explained in the Guide to Voltage Translation With TXS-Type Translators. "  
  
## Push pull and open drain  
參考文章: 
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1017936/txs0108e-q1-txs0108e-push-pull-and-open-drain?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"A resistor is not a push/pull driver. You would need a device that can actively drive high. "  
  
## The outputting signal of TXS0108 is bad.
參考文章:
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1082771/txs0108e-the-outputting-signal-of-txs0108-is-bad?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"Bidirectional translators do not work when the load is too high. "  
"In this application, you should use direction-controlled or unidirectional translators like the SN74AXC8T245, SN74AXC4T774, or TXU0104/TXU0204/TCU0304. "  
"Then it might be caused by the oscilloscope probe, or something connected on the other side. "  
  
## Is this device suitable for SPI and I2C  
參考文章:
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1055834/txs0108e-is-this-device-suitable-for-spi-and-i2c?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"SPI does not have bidirectional signals, so instead of the TXB0104, consider the TXU0104/TXU0204/TXU0304. "  
  
## TXS0108E fails for an I2C communication  
參考文章:
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/973397/txs0108e-txs0108e-fails-for-an-i2c-communication?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"The TXS is designed to output sharp edges for up to 70 pF loads. "  
  
## Getting 19MHz signal on Pin1  
參考文章: 
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/852903/txs0108e-getting-19mhz-signal-on-pin1?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"The TXS has edge accelerators that trigger when it detects the beginning of a rising edge on an I/O pin. "  
"Long traces/cables/connectors that increase the capacitive load, which causes ringing, which can be misdetected as a rising edge. "  
"If every falling edge results in a (false) rising edge, you get oscillations. "  
"If you know the characteristic impedance of your signal lines, you can reduce ringing by adding series resisors for impedance matching. "  
"But with all signals begin unidirectional, you could also use two SN74AHCT125‍s running at 5V/3.3V for up/downtranslation. "  
  
## Question on TXS0104/TXS0108E schematic  
參考文章: 
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1010585/txs0104e-question-on-txs0104-txs0108e-schematic?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"If OE is tied high (you do not even need a resistor), the I/Os might be active during power up/down. "  
  
## Unused channels
參考文章: 
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/993203/txs0108e-unused-channels?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"Unused channel I/O pins on the TXS family of translators can remain open / disconnected. "  
  
## Open-drain output  
參考文章:
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/983895/txs0108e-open-drain-output?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"But they also have edge accelerators, which actively drive the output high for a short time during a rising edge. "  
  
## Level shifter for GPIO  
參考文章:
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1292238/sn74axc1t45-level-shifter-for-gpio?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"TXS translators have many restrictions (open-drain outputs, no pull-down resistors, cannot drive capacitive/inductive loads, limited speed). "  
  
## Edge accelerators  
參考文章:
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/1225400/txs0108e-getting-3-3v-as-output-instead-of-5v?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"The TXS has edge accelerators that trigger when they see what looks like the beginning of a rising or falling edge. "  
"If you have ringing on the signal lines, this can falsely trigger. "  
"Ringing is caused by the capacitance and inductance of long cables, and is probably amplified by the unstable VCC/GND voltages, also due to long cables. "  
"After going through several posts in the forum, I found out that setting the probe to 10x would probably resolve the problem and it did. "  
  
## Can TXS0108E support 10MHz MDIO signal voltage level shift?  
參考文章:
https://e2e.ti.com/support/logic-group/logic/f/logic-forum/934678/txs0108e-can-txs0108e-support-10mhz-mdio-signal-voltage-level-shift?tisearch=e2e-sitesearch&keymatch=TXS0108E#  
  
"I think you answered your own question, the datasheet states max 2 Mbps ( equivalent to 1 MHz). "  
  