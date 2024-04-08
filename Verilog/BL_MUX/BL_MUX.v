module BL_MUX(
    input Reset,
    input EN_in,
    input A2_in, A1_in, A0_in,
    output reg A2_out, A1_out, A0_out,
    output reg EN_out
);

    always @(*) begin
        if (Reset == 0) begin
            EN_out = 0;
            A2_out = 0;
            A1_out = 0;
            A0_out = 0;
        end
        else begin
            EN_out = EN_in;
            A2_out = A2_in;
            A1_out = A1_in;
            A0_out = A0_in;
        end
    end

endmodule