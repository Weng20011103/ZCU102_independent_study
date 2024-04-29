module counter20(
    input  clk, reset,
    output reg [19:0] data
);
    reg [19:0] state;
    reg [19:0] nextstate;

    always@(posedge clk or negedge reset) begin
        if(!reset)
            state <= 20'd0;
        else
            state <= nextstate;
    end

    always@(*) begin
        case(state)
            20'd0:  nextstate = 20'd1;
            20'd999999:  nextstate = 20'd0;
            default: nextstate = state + 1'd1;
        endcase
    end

    always@(*) begin
        case(state)
            20'd0:  data = 20'd0;
            20'd999999:  data = 20'd999999;
            default: data = state;
        endcase
    end

endmodule