Verilog的輸入訊號clk_50M的頻率為f，週期為T。則輸出CLK_3的頻率為0.25f，週期為4T。
  
Up to 20 MHz(50 ns) Clock.  
  
註:
 10 kHz, 100 µs.  
100 kHz,  10 µs.  
  1 MHz,   1 µs.
 10 MHz, 0.1 µs.
  
For a full-scale step, the output will settle to 1 LSB within 7 µs.  
  
The CLR input can be used to ensure that the DAC7611 output is 0 V on power-up or as required by the application.  
  
PIN 1: VDD, Power Supply  
PIN 2: CS, Chip Select (active LOW).  
PIN 3: CLK, Synchronous Clock for the Serial Data Input.  
PIN 4: SDI, Serial Data Input. Data is clocked into the internal serial register on the rising edge of CLK.  
PIN 5: LD, Loads the Internal DAC Register. NOTE: The DAC register is a transparent latch and is transparent when LD is LOW (regardless of the state of CS or CLK).  
PIN 6: CLR, Asynchronous Input to Clear the DAC Register. When CLR is strobbed LOW, the DAC register is set to 000H and the output voltage to 0 V.  
PIN 7: GND, Ground.  
PIN 8: VOUT, Voltage Output. Fixed output voltage range of approximately 0 V to 4.095 V (1mV/LSB). The internal reference maintains this output range over time, temperature, and power supply variations (within the values defined in the specifications section).  

https://www.mouser.tw/ProductDetail/Texas-Instruments/DAC7611P?qs=vul0MlC%2Fa1exrBAtSLlcNA%3D%3D  
https://www.ti.com/lit/ds/symlink/dac7611.pdf?ts=1705539972022&ref_url=https%253A%252F%252Fwww.mouser.tw%252F  



