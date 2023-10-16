# 2023/10/16  
PG144 October 5, 2016:  
<https://docs.xilinx.com/v/u/en-US/pg144-axi-gpio>  
  
# Chapter 1  
**Functional Description**  
1. AXI GPIO can be configured as either a single or a dual-channel device.  
2. The width of each channel is independently configurable.  
3. The ports are configured dynamically for input or output by enabling or disabling the 3-state buffer.  
4. The channels can be configured to generate an interrupt when a transition on any of their inputs occurs.  
插入Figure1-1  
**Interrupt Control**  
1. Interrupt control gets the interrupt status from GPIO channels and generates an interrupt to host.  
2. It is enabled when the Enable Interrupt option is set in the Vivado® Integrated Design Environment (IDE).  
**GPIO Core**  
1. The 3-state buffers in the figure are not actually part of the core.  
2. The 3-state buffers are automatically added in top level design wrapper file, when you generate the output product in the Vivado Design Suite.  
  
**縮寫**  
GPIO: General Purpose Input/Output  
IP: Intellectual Property  
