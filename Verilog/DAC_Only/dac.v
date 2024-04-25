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
            10'd1023:  nextstate = 10'd0;
            10'd499:  nextstate = 10'd0;
            default: nextstate = state + 1'd1;
        endcase
    end

    // CLR_R, dac_signals_15[3]
    // CLK Width HIGH 30 ns min
    // CLK Width LOW 30 ns min
    always@(*) begin
        case(state)
            10'd0: dac_signals_15[3] = ONE;
            // D11 CLK, MSB
            10'd1, 10'd2: dac_signals_15[3] = ZERO;
            10'd3, 10'd4: dac_signals_15[3] = ONE;
            // D10 CLK
            10'd5, 10'd6: dac_signals_15[3] = ZERO;
            10'd7, 10'd8: dac_signals_15[3] = ONE;
            // D9 CLK
            10'd9, 10'd10: dac_signals_15[3] = ZERO;
            10'd11, 10'd12: dac_signals_15[3] = ONE;
            // D8 CLK
            10'd13, 10'd14: dac_signals_15[3] = ZERO;
            10'd15, 10'd16: dac_signals_15[3] = ONE;
            // D7 CLK
            10'd17, 10'd18: dac_signals_15[3] = ZERO;
            10'd19, 10'd20: dac_signals_15[3] = ONE;
            // D6 CLK
            10'd21, 10'd22: dac_signals_15[3] = ZERO;
            10'd23, 10'd24: dac_signals_15[3] = ONE;
            // D5 CLK
            10'd25, 10'd26: dac_signals_15[3] = ZERO;
            10'd27, 10'd28: dac_signals_15[3] = ONE;
            // D4 CLK
            10'd29, 10'd30: dac_signals_15[3] = ZERO;
            10'd31, 10'd32: dac_signals_15[3] = ONE;
            // D3 CLK
            10'd33, 10'd34: dac_signals_15[3] = ZERO;
            10'd35, 10'd36: dac_signals_15[3] = ONE;
            // D2 CLK
            10'd37, 10'd38: dac_signals_15[3] = ZERO;
            10'd39, 10'd40: dac_signals_15[3] = ONE;
            // D1 CLK
            10'd41, 10'd42: dac_signals_15[3] = ZERO;
            10'd43, 10'd44: dac_signals_15[3] = ONE;
            // D0 CLK, LSB
            10'd45, 10'd46: dac_signals_15[3] = ZERO;
            10'd47, 10'd48: dac_signals_15[3] = ONE;
            default: dac_signals_15[3] = ONE;
        endcase
    end

    // SDI_R, dac_signals_15[2]
    // Data Setup 15 ns min
    // Data Hold 15 ns min
    always@(*) begin
        case(state)
            10'd0: dac_signals_15[2] = ZERO;
            10'd1, 10'd2, 10'd3, 10'd4: dac_signals_15[2] = ZERO;     // D11, MSB
            10'd5, 10'd6, 10'd7, 10'd8: dac_signals_15[2] = ONE;      // D10
            10'd9, 10'd10, 10'd11, 10'd12: dac_signals_15[2] = ZERO;  // D9
            10'd13, 10'd14, 10'd15, 10'd16: dac_signals_15[2] = ONE;  // D8
            10'd17, 10'd18, 10'd19, 10'd20: dac_signals_15[2] = ZERO; // D7
            10'd21, 10'd22, 10'd23, 10'd24: dac_signals_15[2] = ONE;  // D6
            10'd25, 10'd26, 10'd27, 10'd28: dac_signals_15[2] = ZERO; // D5
            10'd29, 10'd30, 10'd31, 10'd32: dac_signals_15[2] = ONE;  // D4
            10'd33, 10'd34, 10'd35, 10'd36: dac_signals_15[2] = ZERO; // D3
            10'd37, 10'd38, 10'd39, 10'd40: dac_signals_15[2] = ONE;  // D2
            10'd41, 10'd42, 10'd43, 10'd44: dac_signals_15[2] = ZERO; // D1
            10'd45, 10'd46, 10'd47, 10'd48: dac_signals_15[2] = ONE;  // D0
            default: dac_signals_15[2] = ONE;
        endcase
    end

    // LD_R	, dac_signals_15[1]
    // LD rise to 1 must before the first CLK rise 15 ns min
    // LD down to 0 must after the last CLK rise 10 ns min
    // LD Load Pulse Width 20 ns min
    always@(*) begin
        case(state)
            10'd0: dac_signals_15[1] = ONE;
            10'd51, 10'd52: dac_signals_15[1] = ZERO; // Load Data
            default: dac_signals_15[1] = ONE;
        endcase
    end

    // CLR_R, dac_signals_15[0]
    // CLR Clear Pulse Width 30 ns min
    always@(*) begin
        case(state)
            10'd0: dac_signals_15[0] = ZERO;
            default: dac_signals_15[0] = ONE;
        endcase
    end
endmodule