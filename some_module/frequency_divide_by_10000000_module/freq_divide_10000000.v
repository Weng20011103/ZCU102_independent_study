module freq_div_10000000(
    input clk, reset,
    output reg clk_div_10000000
);
    // Define a 24-bit counter to keep track of the division.
    reg [23:0]counter24;

    // This always block triggers on the rising edge of the 'clk' signal or a low-level 'reset' signal.
    always @(posedge clk or negedge reset) begin
        // If 'reset' is active (low), reset the counter to zero.
        if (!reset)
            counter24 <= 24'b0;
        // If the counter reaches 9999999, reset it to zero.
        // else if (counter24 == 24'd9999999)
        else if (counter24 == 24'd4999999)
            counter24 <= 24'b0;
        // If none of the above conditions are met, increment the counter by 1.
        else
            counter24 <= counter24 + 1'b1;
    end

    // This always block also triggers on the rising edge of 'clk' or a low-level 'reset' signal.
    always @(posedge clk or negedge reset) begin
        // If 'reset' is active (low), the output signal 'clt_div_10000000' follows the 'clk' input.
        if (!reset)
            clk_div_10000000 <= 1'b0;
        // If the counter reaches 9999999, toggle the output signal 'clt_div_10000000'.
        // else if (counter24 == 24'd9999999)
        else if (counter24 == 24'd4999999)
            clk_div_10000000 <= ~clk_div_10000000;
        // If none of the above conditions are met, the output signal 'clt_div_10000000' follows the 'clk' input.
        else
            clk_div_10000000 <= clk_div_10000000;
    end

endmodule
