module counter10(
    input  clk, reset,
    output reg [9:0] data
);
    reg [9:0] state;
    reg [9:0] nextstate;

    always@(posedge clk or negedge reset) begin
        if(!reset)
            state <= 10'd0;
        else
            state <= nextstate;
    end

    always@(*) begin
        case(state)
            10'd0:  nextstate = 10'd1;
            10'd999:  nextstate = 10'd0;
            default: nextstate = state + 1'd1;
        endcase
    end

    always@(*) begin
        case(state)
            10'd0:  data = 10'd0;
            10'd999:  data = 10'd999;
            default: data = state;
        endcase
    end

endmodule