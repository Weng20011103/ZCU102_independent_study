module MUX12_DEMUX21(
    input Reset,
    input [1:0] control_signal,
    output A0_out,
    output EN_out
);
    // control_signal[1] is EN
    // control_signal[0] is A0
    assign EN_out = (Reset == 1'b0) ? 1'b0 : control_signal[1];
    assign A0_out = (Reset == 1'b0 || control_signal[3] == 1'b0) ? 1'b0 : control_signal[0];

endmodule