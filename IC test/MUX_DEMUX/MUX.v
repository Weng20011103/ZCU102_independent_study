module MUX(
    input  clk,
    input  enable,      // high enable
    output reg EN,
    output reg A2,
    output reg A1,
    output reg A0,
    output reg S
);

    reg [5:0] state;
    reg [5:0] nextstate;

    always@(posedge clk) begin
        if(!enable)
            state <= 6'd0;
        else
            state <= nextstate;
    end

    always@(*) begin
        case(state)
            6'd60:  nextstate = 8'd1;
            default: nextstate = state + 1'd1;
        endcase
    end

    always@(*) begin
        case(state)
            6'd1,   6'd2:   EN = 1'b1; //S1
            6'd5,   6'd6:   EN = 1'b1; //S2
            6'd9,   6'd10:  EN = 1'b1; //S3
            6'd13,  6'd14:  EN = 1'b1; //S4
            6'd17,  6'd18:  EN = 1'b1; //S5
            6'd21,  6'd22:  EN = 1'b1; //S6
            6'd25,  6'd26:  EN = 1'b1; //S7
            default: EN = 1'b0;
        endcase
    end

    always@(*) begin
        case(state)
            6'd17, 6'd18, 6'd19, 6'd20: A2 = 1'b1; //S5
            6'd21, 6'd22, 6'd23, 6'd24: A2 = 1'b1; //S6
            6'd25, 6'd26, 6'd27, 6'd28: A2 = 1'b1; //S7
            6'd29, 6'd30, 6'd31, 6'd32: A2 = 1'b1; //S8
            default: A2 = 1'b0;
        endcase
    end

    always@(*) begin
        case(state)
            6'd9,  6'd10, 6'd11, 6'd12: A1 = 1'b1; //S3
            6'd13, 6'd14, 6'd15, 6'd16: A1 = 1'b1; //S4
            6'd25, 6'd26, 6'd27, 6'd28: A1 = 1'b1; //S7
            6'd29, 6'd30, 6'd31, 6'd32: A1 = 1'b1; //S8
            default: A1 = 1'b0;
        endcase
    end

    always@(*) begin
        case(state)
            6'd5,  6'd6,  6'd7,  6'd8:  A0 = 1'b1; //S2
            6'd13, 6'd14, 6'd15, 6'd16: A0 = 1'b1; //S4
            6'd21, 6'd22, 6'd23, 6'd24: A0 = 1'b1; //S6
            6'd29, 6'd30, 6'd31, 6'd32: A0 = 1'b1; //S8
            default: A0 = 1'b0;
        endcase
    end

    always@(*) begin
        S = clk;
    end

endmodule