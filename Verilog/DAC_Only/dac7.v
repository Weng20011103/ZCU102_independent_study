module DAC7611P(
    input  clk,     // clk is faster than DAC's CLK, clk = 2 * DAC's CLK
    input  reset,
    output reg [3:0]dac_signals_15
);
    parameter ZERO = 1'b0;
    parameter ONE = 1'b1;
    // CLK_R, dac_signals_15[3]	
    // SDI_R, dac_signals_15[2]	
    // LD_R	, dac_signals_15[1]	
    // CLR_R, dac_signals_15[0]	
    reg [6:0] state;
    reg [6:0] nextstate;

    always@(posedge clk or negedge reset) begin
        if(!reset)
            state <= 7'd0;
        else
            state <= nextstate;
    end

    always@(*) begin
        case(state)
            7'd127:  nextstate = 7'd0;
            default: nextstate = state + 1'd1;
        endcase
    end

    // CLR_R, dac_signals_15[3]
    // CLK Width HIGH 30 ns min
    // CLK Width LOW 30 ns min
    always@(*) begin
        case(state)
            7'd0: dac_signals_15[3] = ONE;
            // D11 CLK, MSB
            7'd1, 7'd2: dac_signals_15[3] = ZERO;
            7'd3, 7'd4: dac_signals_15[3] = ONE;
            // D10 CLK
            7'd5, 7'd6: dac_signals_15[3] = ZERO;
            7'd7, 7'd8: dac_signals_15[3] = ONE;
            // D9 CLK
            7'd9, 7'd10: dac_signals_15[3] = ZERO;
            7'd11, 7'd12: dac_signals_15[3] = ONE;
            // D8 CLK
            7'd13, 7'd14: dac_signals_15[3] = ZERO;
            7'd15, 7'd16: dac_signals_15[3] = ONE;
            // D7 CLK
            7'd17, 7'd18: dac_signals_15[3] = ZERO;
            7'd19, 7'd20: dac_signals_15[3] = ONE;
            // D6 CLK
            7'd21, 7'd22: dac_signals_15[3] = ZERO;
            7'd23, 7'd24: dac_signals_15[3] = ONE;
            // D5 CLK
            7'd25, 7'd26: dac_signals_15[3] = ZERO;
            7'd27, 7'd28: dac_signals_15[3] = ONE;
            // D4 CLK
            7'd29, 7'd30: dac_signals_15[3] = ZERO;
            7'd31, 7'd32: dac_signals_15[3] = ONE;
            // D3 CLK
            7'd33, 7'd34: dac_signals_15[3] = ZERO;
            7'd35, 7'd36: dac_signals_15[3] = ONE;
            // D2 CLK
            7'd37, 7'd38: dac_signals_15[3] = ZERO;
            7'd39, 7'd40: dac_signals_15[3] = ONE;
            // D1 CLK
            7'd41, 7'd42: dac_signals_15[3] = ZERO;
            7'd43, 7'd44: dac_signals_15[3] = ONE;
            // D0 CLK, LSB
            7'd45, 7'd46: dac_signals_15[3] = ZERO;
            7'd47, 7'd48: dac_signals_15[3] = ONE;
            default: dac_signals_15[3] = ONE;
        endcase
    end

    // SDI_R, dac_signals_15[2]
    // Data Setup 15 ns min
    // Data Hold 15 ns min
    always@(*) begin
        case(state)
            7'd0: dac_signals_15[2] = ZERO;
            7'd1, 7'd2, 7'd3, 7'd4: dac_signals_15[2] = ZERO;     // D11, MSB
            7'd5, 7'd6, 7'd7, 7'd8: dac_signals_15[2] = ONE;      // D10
            7'd9, 7'd10, 7'd11, 7'd12: dac_signals_15[2] = ZERO;  // D9
            7'd13, 7'd14, 7'd15, 7'd16: dac_signals_15[2] = ONE;  // D8
            7'd17, 7'd18, 7'd19, 7'd20: dac_signals_15[2] = ZERO; // D7
            7'd21, 7'd22, 7'd23, 7'd24: dac_signals_15[2] = ONE;  // D6
            7'd25, 7'd26, 7'd27, 7'd28: dac_signals_15[2] = ZERO; // D5
            7'd29, 7'd30, 7'd31, 7'd32: dac_signals_15[2] = ONE;  // D4
            7'd33, 7'd34, 7'd35, 7'd36: dac_signals_15[2] = ZERO; // D3
            7'd37, 7'd38, 7'd39, 7'd40: dac_signals_15[2] = ONE;  // D2
            7'd41, 7'd42, 7'd43, 7'd44: dac_signals_15[2] = ZERO; // D1
            7'd45, 7'd46, 7'd47, 7'd48: dac_signals_15[2] = ONE;  // D0
            default: dac_signals_15[2] = ONE;
        endcase
    end

    // LD_R	, dac_signals_15[1]
    // LD rise to 1 must before the first CLK rise 15 ns min
    // LD down to 0 must after the last CLK rise 10 ns min
    // LD Load Pulse Width 20 ns min
    always@(*) begin
        case(state)
            7'd0: dac_signals_15[1] = ONE;
            7'd51, 7'd52: dac_signals_15[1] = ZERO; // Load Data
            default: dac_signals_15[1] = ONE;
        endcase
    end

    // CLR_R, dac_signals_15[0]
    // CLR Clear Pulse Width 30 ns min
    always@(*) begin
        case(state)
            7'd0: dac_signals_15[0] = ZERO;
            default: dac_signals_15[0] = ONE;
        endcase
    end
endmodule