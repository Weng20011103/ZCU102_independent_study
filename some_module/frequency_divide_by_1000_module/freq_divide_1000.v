module freq_div_1000(
    input clk, reset,
    output reg clk_div_1000
);
    // Define a 9-bit counter to keep track of the division.
    reg [8:0]counter9;

    // This always block triggers on the rising edge of the 'clk' signal or a low-level 'reset' signal.
    always @(posedge clk or negedge reset) begin
        // If 'reset' is active (low), reset the counter to zero.
        if (!reset)
            counter9 <= 9'b0;
        // If the counter reaches 499, reset it to zero.
        else if (counter9 == 9'd499)
            counter9 <= 9'b0;
        // If none of the above conditions are met, increment the counter by 1.
        else
            counter9 <= counter9 + 1'b1;
    end

    // This always block also triggers on the rising edge of 'clk' or a low-level 'reset' signal.
    always @(posedge clk or negedge reset) begin
        // If 'reset' is active (low), the output signal 'clt_div_1000' follows the 'clk' input.
        if (!reset)
            clk_div_1000 <= 1'b0;
        // If the counter reaches 499, toggle the output signal 'clt_div_1000'.
        else if (counter9 == 9'd499)
            clk_div_1000 <= ~clk_div_1000;
        // If none of the above conditions are met, the output signal 'clt_div_1000' follows the 'clk' input.
        else
            clk_div_1000 <= clk_div_1000;
    end

endmodule