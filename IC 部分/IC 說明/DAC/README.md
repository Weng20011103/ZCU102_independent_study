# DAC: DAC7611P  
# 腳位  
|Pin|符號|說明|
|:--:|:--:|:---|
|1|VDD|接 + 3.3 V，接上 0.1 μF 和 10 μF 的去耦電容|
|2|CS|Chip Select (active LOW)|
|3|CLK|Synchronous Clock for the Serial Data Input|
|4|SDI|Serial Data Input. Data is clocked into the internal serial register on the rising edge of CLK|
|5|LD|Loads the Internal DAC Register. NOTE: The DAC register is a transparent latch and is transparent when LD is LOW (regardless of the state of CS or CLK)|
|6|CLR|Asynchronous Input to Clear the DAC Register. When CLR is strobbed LOW, the DAC register is set to 000H and the output voltage to 0 V|
|7|GND|Ground|
|8|VOUT|Voltage Output|
  
# 說明  
The data format is Straight Binary and is loaded MSB-first into the shift registers.  
  
At some point after the data has been entered into the serial shift register, this data can be transferred into the DAC register.  
This transfer is accomplished with a HIGH to LOW transition of the LD pin.  
However, the LD pin makes the DAC register transparent. If new data is shifted into the shift register while LD is LOW, the DAC output voltage will change as each new bit is entered.  
  
At any time, the contents of the DAC register can be set to 000H (analog output equals 0 V) by taking the CLR input LOW. The DAC register will remain at this value until CLR is returned HIGH and LD is taken LOW to allow the contents of the shift register to be transferred to the DAC register.  
  
If LD is LOW when CLR is taken LOW, the DAC register will be set to 000H and the analog output driven to 0 V.  
  
The output amplifier has a 7 μs typical settling time to ± 1 LSB of the final value.  
  
The power applied to VDD should be well regulated and low-noise. Switching power supplies and DC/DC converters will often have high-frequency glitches or spikes riding on the output voltage.  
  
# 連結  
[DAC7611P](https://www.mouser.tw/ProductDetail/Texas-Instruments/DAC7611P?qs=vul0MlC%2Fa1exrBAtSLlcNA%3D%3D)  
[DAC7611PB](https://www.mouser.tw/ProductDetail/Texas-Instruments/DAC7611PB?qs=vul0MlC%2Fa1d6ittJzPGSXg%3D%3D)  
[Data Sheet](https://www.ti.com/lit/ds/symlink/dac7611.pdf?ts=1705992052126&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FDAC7611%253Futm_source%253Dgoogle%2526utm_medium%253Dcpc%2526utm_campaign%253Dasc-null-null-GPN_EN-cpc-pf-google-soas%2526utm_content%253DDAC7611%2526ds_k%253DDAC7611%2BDatasheet%2526DCM%253Dyes%2526gad_source%253D1%2526gclid%253DEAIaIQobChMI4cXXzvPygwMVbQ2DAx31BgOGEAAYASAAEgICz_D_BwE%2526gclsrc%253Daw.ds)  