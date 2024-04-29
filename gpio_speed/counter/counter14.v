module counter14(
    input  clk, reset,
    output reg [13:0] data
);
    reg [13:0] state;
    reg [13:0] nextstate;

    always@(posedge clk or negedge reset) begin
        if(!reset)
            state <= 14'd0;
        else
            state <= nextstate;
    end

    always@(*) begin
        case(state)
            14'd0:  nextstate = 14'd1;
            14'd9999:  nextstate = 14'd0;
            default: nextstate = state + 1'd1;
        endcase
    end

    always@(*) begin
        case(state)
            14'd0:  data = 14'd0;
            14'd9999:  data = 14'd9999;
            default: data = state;
        endcase
    end

endmodule