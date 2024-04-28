module counter(
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
            10'd1000:  data = 10'd1000;
            10'd1001:  data = 10'd1001;
            10'd1002:  data = 10'd1002;
            10'd1003:  data = 10'd1003;
            10'd1004:  data = 10'd1004;
            10'd1005:  data = 10'd1005;
            10'd1006:  data = 10'd1006;
            10'd1007:  data = 10'd1007;
            10'd1008:  data = 10'd1008;
            10'd1009:  data = 10'd1009;
            10'd1010:  data = 10'd10010;
            default: data = state;
        endcase
    end

endmodule