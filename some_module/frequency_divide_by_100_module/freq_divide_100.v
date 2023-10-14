module freq_div_100(
    input clk, reset,
    output reg clk_div_100
);
    // Define a 6-bit counter to keep track of the division.
    reg [5:0]counter6;

    // This always block triggers on the rising edge of the 'clk' signal or a low-level 'reset' signal.
    always @(posedge clk or negedge reset) begin
        // If 'reset' is active (low), reset the counter to zero.
        if (!reset)
            counter6 <= 6'b0;
        // If the counter reaches 49, reset it to zero.
        else if (counter6 == 6'd49)
            counter6 <= 6'b0;
        // If none of the above conditions are met, increment the counter by 1.
        else
            counter6 <= counter6 + 1'b1;
    end

    // This always block also triggers on the rising edge of 'clk' or a low-level 'reset' signal.
    always @(posedge clk or negedge reset) begin
        // If 'reset' is active (low), the output signal 'clt_div_100' follows the 'clk' input.
        if (!reset)
            clk_div_100 <= 1'b0;
        // If the counter reaches 49, toggle the output signal 'clt_div_100'.
        else if (counter6 == 6'd49)
            clk_div_100 <= ~clk_div_100;
        // If none of the above conditions are met, the output signal 'clt_div_100' follows the 'clk' input.
        else
            clk_div_100 <= clk_div_100;
    end

endmodule