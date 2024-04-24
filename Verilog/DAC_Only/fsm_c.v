module fsm(
    input clk_10MHz, locked, reset,
    output [3:0]dac_signals_15,
);
    assign dac_signals_4 = 4'b1111;
endmodule