Pin 1: VDD，接 +3.3 V，接上 0.1 μF 的去耦電容。  
Pin 2: CS, Chip Select (active LOW).  
Pin 3: CLK, Synchronous Clock for the Serial Data Input.  
Pin 4: SDI, Serial Data Input. Data is clocked into the internal serial register on the rising edge of CLK.  
Pin 5: LD, Loads the Internal DAC Register. NOTE: The DAC register is a transparent latch and is transparent when LD is LOW (regardless of the state of CS or CLK).  
Pin 6: CLR, Asynchronous Input to Clear the DAC Register. When CLR is strobbed LOW, the DAC register is set to 000H and the output voltage to 0 V.  
Pin 7: GND, Ground.  
Pin 8: VOUT, Voltage Output.  
  
[DAC7611P](https://www.mouser.tw/ProductDetail/Texas-Instruments/DAC7611P?qs=vul0MlC%2Fa1exrBAtSLlcNA%3D%3D)  
[DAC7611PB](https://www.mouser.tw/ProductDetail/Texas-Instruments/DAC7611PB?qs=vul0MlC%2Fa1d6ittJzPGSXg%3D%3D)  
[Data Sheet](https://www.ti.com/lit/ds/symlink/dac7611.pdf?ts=1705992052126&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FDAC7611%253Futm_source%253Dgoogle%2526utm_medium%253Dcpc%2526utm_campaign%253Dasc-null-null-GPN_EN-cpc-pf-google-soas%2526utm_content%253DDAC7611%2526ds_k%253DDAC7611%2BDatasheet%2526DCM%253Dyes%2526gad_source%253D1%2526gclid%253DEAIaIQobChMI4cXXzvPygwMVbQ2DAx31BgOGEAAYASAAEgICz_D_BwE%2526gclsrc%253Daw.ds)  