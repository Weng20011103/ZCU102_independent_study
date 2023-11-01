module GPIO_8_inputs(
    input [7:0]GPIO_inputs,
    output out0, out1, out2, out3, out4, out5, out6, out7
);

    assign GPIO_inputs[0] = out0;
    assign GPIO_inputs[1] = out1;
    assign GPIO_inputs[2] = out2;
    assign GPIO_inputs[3] = out3;
    assign GPIO_inputs[4] = out4;
    assign GPIO_inputs[5] = out5;
    assign GPIO_inputs[6] = out6;
    assign GPIO_inputs[7] = out7;

endmodule