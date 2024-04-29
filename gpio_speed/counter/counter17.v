module counter17(
    input  clk, reset,
    output reg [16:0] data
);
    reg [16:0] state;
    reg [16:0] nextstate;

    always@(posedge clk or negedge reset) begin
        if(!reset)
            state <= 17'd0;
        else
            state <= nextstate;
    end

    always@(*) begin
        case(state)
            17'd0:  nextstate = 17'd1;
            17'd99999:  nextstate = 17'd0;
            default: nextstate = state + 1'd1;
        endcase
    end

    always@(*) begin
        case(state)
            17'd0:  data = 17'd0;
            17'd99999:  data = 17'd99999;
            default: data = state;
        endcase
    end

endmodule