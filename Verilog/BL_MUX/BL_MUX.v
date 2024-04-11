module BL_MUX(
    input Reset,
    input [3:0] control_signal,
    output A2_out, A1_out, A0_out,
    output EN_out
);
    // control_signal[3] is EN
    // control_signal[2] is A2
    // control_signal[1] is A1
    // control_signal[0] is A0

    assign EN_out = (Reset == 1'b0) ? 1'b0 : control_signal[3];
    assign A2_out = (Reset == 1'b0 || EN_in == 1'b0) ? 1'b0 : control_signal[2];
    assign A1_out = (Reset == 1'b0 || EN_in == 1'b0) ? 1'b0 : control_signal[1];
    assign A0_out = (Reset == 1'b0 || EN_in == 1'b0) ? 1'b0 : control_signal[0];

endmodule