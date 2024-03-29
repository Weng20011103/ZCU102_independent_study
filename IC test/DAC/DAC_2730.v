module DAC7611P(
    input  clk_X4,      // clk_X4 is 4 times faster than Pin 3 CLK
    input  enable,      // high enable
    output reg CLK_3,   // Pin 3
    output reg SDI_4,   // Pin 4
    output reg LD_5,    // Pin 5
    output reg CLR_6    // Pin 6
);

    reg [7:0] state;
    reg [7:0] nextstate;

    always@(negedge clk_X4) begin
        if(!enable)
            state <= 8'd0;
        else
            state <= nextstate;
    end

    always@(*) begin
        case(state)
            8'd200:  nextstate = 8'd1;
            default: nextstate = state + 1'd1;
        endcase
    end

    // Pin 3, CLK
    always@(*) begin
        case(state)
            8'd1,   8'd2:   CLK_3 = 1'b0;
            8'd5,   8'd6:   CLK_3 = 1'b0;
            8'd9,   8'd10:  CLK_3 = 1'b0;
            8'd13,  8'd14:  CLK_3 = 1'b0;
            8'd17,  8'd18:  CLK_3 = 1'b0;
            8'd21,  8'd22:  CLK_3 = 1'b0;
            8'd25,  8'd26:  CLK_3 = 1'b0;
            8'd29,  8'd30:  CLK_3 = 1'b0;
            8'd33,  8'd34:  CLK_3 = 1'b0;
            8'd37,  8'd38:  CLK_3 = 1'b0;
            8'd41,  8'd42:  CLK_3 = 1'b0;
            8'd45,  8'd46:  CLK_3 = 1'b0;
            default:        CLK_3 = 1'b1;
        endcase
    end

    // Pin 4, SDI
    always@(*) begin
        case(state)
            8'd1,  8'd2, 8'd3,  8'd4:      SDI_4 = 1; // Data[11]
            8'd5,  8'd6, 8'd7,  8'd8:      SDI_4 = 0; // Data[10]
            8'd9,  8'd10, 8'd11,  8'd12:   SDI_4 = 1; // Data[9]
            8'd13,  8'd14, 8'd15,  8'd16:  SDI_4 = 0; // Data[8]
            8'd17,  8'd18, 8'd19,  8'd20:  SDI_4 = 1; // Data[7]
            8'd21,  8'd22, 8'd23,  8'd24:  SDI_4 = 0; // Data[6]
            8'd25,  8'd26, 8'd27,  8'd28:  SDI_4 = 1; // Data[5]
            8'd29,  8'd30, 8'd31,  8'd32:  SDI_4 = 0; // Data[4]
            8'd33,  8'd34, 8'd35,  8'd36:  SDI_4 = 1; // Data[3]
            8'd37,  8'd38, 8'd39,  8'd40:  SDI_4 = 0; // Data[2]
            8'd41,  8'd42, 8'd43,  8'd44:  SDI_4 = 1; // Data[1]
            8'd45,  8'd46, 8'd47,  8'd48:  SDI_4 = 0; // Data[0]
            default:                       SDI_4 = 1'b0;
        endcase
    end

    // Pin 5, LD
    always@(*) begin
        LD_5 = (state >= 8'd1 && state <= 8'd50) || (state >= 8'd53 && state <= 8'd200) ? 1'b1 : 1'b0;
    end

    // Pin 6, CLR
    always@(*) begin
        CLR_6 = (state >= 8'd180 && state <= 8'd181) ? 1'b0 : 1'b1;
    end

endmodule