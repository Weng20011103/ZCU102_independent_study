module BL_MUX(
    input Reset,
    input EN_in,
    input A2_in, A1_in, A0_in,
    output A2_out, A1_out, A0_out,
    output EN_out
);

    assign EN_out = (Reset == 1'b0) ? 1'b0 : EN_in;
    assign A2_out = (Reset == 1'b0 || EN_in == 1'b0) ? 1'b0 : A2_in;
    assign A1_out = (Reset == 1'b0 || EN_in == 1'b0) ? 1'b0 : A1_in;
    assign A0_out = (Reset == 1'b0 || EN_in == 1'b0) ? 1'b0 : A0_in;

endmodule