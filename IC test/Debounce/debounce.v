module Debounce(
    input  clk_1M,      // clk is 1 MHz, 1 µs
    input  locked,      // Clocking Wizard, locked = 0 is unsafe, locked = 1 is safe
    input button_in,
    output reg button_out
);

    always@(posedge clk_1M) begin
        if(!locked)
            button_out <= 8'd0;
        else
            button_out <= button_in;
    end

endmodule