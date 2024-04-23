module DAC7611P(
    input  clk_50M,     // clk is 50 MHz, 20 ns
    input  locked,      // Clocking Wizard, locked = 0 is unsafe, locked = 1 is safe
    input  [11:0]Data,
    output reg CS_2,    // Pin2
    output reg CLK_3,   // Pin3
    output reg SDI_4,   // Pin4
    output reg LD_5,    // Pin5
    output reg CLR_6    // Pin6
);

    reg [7:0] state;
    reg [7:0] nextstate;

    always@(negedge clk_50M) begin
        if(!locked)
            state <= 8'd0;
        else
            state <= nextstate;
    end

    always@(*) begin
        case(state)
            8'd255:  nextstate = 8'd1;
            default: nextstate = state + 1'd1;
        endcase
    end

    // Pin2, CS
    always@(*) begin
        CS_2 = (state >= 8'd1 && state <= 8'd48) ? 1'b0 : 1'b1;
    end

    // Pin3, CLK
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

    // Pin4, SDI
    always@(*) begin
        case(state)
            8'd1,  8'd2, 8'd3,  8'd4:      SDI_4 = Data[11];
            8'd5,  8'd6, 8'd7,  8'd8:      SDI_4 = Data[10];
            8'd9,  8'd10, 8'd11,  8'd12:   SDI_4 = Data[9];
            8'd13,  8'd14, 8'd15,  8'd16:  SDI_4 = Data[8];
            8'd17,  8'd18, 8'd19,  8'd20:  SDI_4 = Data[7];
            8'd21,  8'd22, 8'd23,  8'd24:  SDI_4 = Data[6];
            8'd25,  8'd26, 8'd27,  8'd28:  SDI_4 = Data[5];
            8'd29,  8'd30, 8'd31,  8'd32:  SDI_4 = Data[4];
            8'd33,  8'd34, 8'd35,  8'd36:  SDI_4 = Data[3];
            8'd37,  8'd38, 8'd39,  8'd40:  SDI_4 = Data[2];
            8'd41,  8'd42, 8'd43,  8'd44:  SDI_4 = Data[1];
            8'd45,  8'd46, 8'd47,  8'd48:  SDI_4 = Data[0];
            default:                       SDI_4 = 1'b0;
        endcase
    end

    // Pin5, LD
    always@(*) begin
        LD_5 = (state >= 8'd1 && state <= 8'd49)||(state >= 8'd36 && state <= 8'd255) ? 1'b1 : 1'b0;
    end

    // Pin6, CLR
    always@(*) begin
        CLR_6 = (state >= 8'd254 && state <= 8'd255) ? 1'b0 : 1'b1;
    end

endmodule