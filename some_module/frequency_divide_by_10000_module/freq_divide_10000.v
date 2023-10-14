module freq_div_10000(
    input clk, reset,
    output reg clk_div_10000
);
    // Define a 13-bit counter to keep track of the division.
    reg [12:0]counter13;

    // This always block triggers on the rising edge of the 'clk' signal or a low-level 'reset' signal.
    always @(posedge clk or negedge reset) begin
        // If 'reset' is active (low), reset the counter to zero.
        if (!reset)
            counter13 <= 13'b0;
        // If the counter reaches 4999, reset it to zero.
        else if (counter13 == 13'd4999)
            counter13 <= 13'b0;
        // If none of the above conditions are met, increment the counter by 1.
        else
            counter13 <= counter13 + 1'b1;
    end

    // This always block also triggers on the rising edge of 'clk' or a low-level 'reset' signal.
    always @(posedge clk or negedge reset) begin
        // If 'reset' is active (low), the output signal 'clt_div_10000' follows the 'clk' input.
        if (!reset)
            clk_div_10000 <= 1'b0;
        // If the counter reaches 4999, toggle the output signal 'clt_div_10000'.
        else if (counter13 == 13'd4999)
            clk_div_10000 <= ~clk_div_10000;
        // If none of the above conditions are met, the output signal 'clt_div_10000' follows the 'clk' input.
        else
            clk_div_10000 <= clk_div_10000;
    end

endmodule