module Debounce(
    input  clk_1k,      // clk is 1 kHz, 1 ms
    input  locked,      // Clocking Wizard, locked = 0 is unsafe, locked = 1 is safe
    input button_in,
    output reg button_out
);

    reg [3:0] state;
    reg [3:0] nextstate;

    always@(posedge clk_1k) begin
        if(!locked)
            state <= 4'd0;
        else if(button_in)
            state <= state + 1'b1;
        else
            state <= 4'd0;
    end

    always@(*) begin
        button_out = (state == 4'd15) ? 1'b1 : 1'b0;
    end

endmodule