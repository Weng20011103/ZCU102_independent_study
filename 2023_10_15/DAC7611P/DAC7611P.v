module DAC7611P(
    input clk, reset,
    input [11:0] DATA
);
    //CS, CLK, SDI, LD, CLR
    //input enable,
    //output CLK;
    //output reg CS, SDI, LD, CLR;

    reg [5:0] state;
    reg [5:0] nextstate;

    always@(posedge clk or negedge reset) begin
        if(!reset)
            state <= 6'd0;
        else
            state <= nextstate;
    end

    always@(*) begin
        case(state)
        6'd0: nextstate = 6'd1;
        6'd1: nextstate = 6'd2;
        6'd2: nextstate = 6'd3;
        6'd3: nextstate = 6'd4;
        6'd4: nextstate = 6'd5;
        6'd5: nextstate = 6'd6;
        6'd6: nextstate = 6'd7;
        6'd7: nextstate = 6'd8;
        6'd8: nextstate = 6'd9;
        6'd9: nextstate = 6'd10;
        6'd10: nextstate = 6'd11;
        6'd11: nextstate = 6'd12;
        6'd12: nextstate = 6'd13;
        6'd13: nextstate = 6'd14;
        6'd14: nextstate = 6'd15;
        6'd15: nextstate = 6'd16;
        6'd16: nextstate = 6'd17;
        6'd17: nextstate = 6'd18;
        6'd18: nextstate = 6'd19;
        6'd19: nextstate = 6'd20;
        6'd20: nextstate = 6'd21;
        6'd21: nextstate = 6'd22;
        6'd22: nextstate = 6'd23;
        6'd23: nextstate = 6'd24;
        6'd24: nextstate = 6'd25;
        6'd25: nextstate = 6'd26;
        6'd26: nextstate = 6'd27;
        6'd27: nextstate = 6'd28;
        6'd28: nextstate = 6'd29;
        6'd29: nextstate = 6'd30;
        6'd30: nextstate = 6'd31;
        6'd31: nextstate = 6'd32;
        6'd32: nextstate = 6'd33;
        6'd33: nextstate = 6'd34;
        6'd34: nextstate = 6'd35;
        6'd35: nextstate = 6'd36;
        6'd36: nextstate = 6'd37;
        6'd37: nextstate = 6'd38;
        6'd38: nextstate = 6'd39;
        6'd39: nextstate = 6'd40;
        6'd40: nextstate = 6'd41;
        6'd41: nextstate = 6'd42;
        6'd42: nextstate = 6'd43;
        6'd43: nextstate = 6'd44;
        6'd44: nextstate = 6'd45;
        6'd45: nextstate = 6'd46;
        6'd46: nextstate = 6'd47;
        6'd47: nextstate = 6'd48;
        6'd48: nextstate = 6'd49;
        6'd49: nextstate = 6'd50;
        6'd50: nextstate = 6'd51;
        6'd51: nextstate = 6'd52;
        6'd52: nextstate = 6'd53;
        6'd53: nextstate = 6'd54;
        6'd54: nextstate = 6'd55;
        6'd55: nextstate = 6'd56;
        6'd56: nextstate = 6'd57;
        6'd57: nextstate = 6'd58;
        6'd58: nextstate = 6'd59;
        6'd59: nextstate = 6'd60;
        6'd60: nextstate = 6'd61;
        6'd61: nextstate = 6'd62;
        6'd62: nextstate = 6'd63;
        6'd63: nextstate = 6'd0;
        default: nextstate = 6'd0;
        endcase
    end

    wire clk_div_by_2;
    reg [1:0] counter2;

    always@(posedge clk or negedge reset) begin
        if(!reset)
            counter2 <= 2'b0;
        else
            counter2 <= counter2 + 1'b1;
    end

    assign clk_div_by_2 = counter2[0];

endmodule