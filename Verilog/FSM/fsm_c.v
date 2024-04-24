module fsm(
    input clk_10MHz, locked, reset,
    output [17:0]mux_signals,
    output [18:0]rram_signals,
    output [3:0]dac_signals_4,
    output [3:0]dac_signals_15,
    input ADC_EOC,
    output ADC_CONVST, ADC_RD, ADC_PD
);
    assign mux_signals = 18'b00_0000_0000_0000_0000;
    assign rram_signals = 19'b000_0000_1100_0000_0000;
    assign dac_signals_4 = 4'b1111;
    assign dac_signals_15 = 4'b1111;
    assign ADC_CONVST = 1'b1;
    assign ADC_RD = 1'b1;
    assign ADC_PD = 1'b0;
endmodule