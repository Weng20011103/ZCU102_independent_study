module AD7822BNZ(
    input  clk_10MHz,   // Clock with a period of 100 ns
    input  clk_50MHz,   // Clock with a period of 20 ns
    input  reset,   // Reset signal
    input EOC_18,   // End of Conversion signal
    input [7:0] Data,
    output reg PD_18,   // Output signals
    output CONVST_18, RD_18,  // Output signals
    output reg [7:0] Valid_Data
);
    parameter ZERO = 1'b0;  // Parameter for zero
    parameter ONE = 1'b1;   // Parameter for one

    reg [8:0] pd_state; // Current state
    reg [8:0] pd_nextstate; // Next state

    // State transition logic
    always@(posedge clk_10MHz or negedge reset) begin
        if(!reset)
            pd_state <= 9'd0;   // If reset is not asserted, initialize the state to 0
        else
            pd_state <= pd_nextstate;   // Else, transition to the next state
    end

    // Next state logic
    always@(*) begin
        case(pd_state)
            9'd499:  pd_nextstate = 9'd499; // If the current state is 499, stay in this state
            default: pd_nextstate = pd_state + 1'd1;    // Else, increment the state
        endcase
    end

    // Output logic
    assign PD_18 = (pd_state == 9'd499) ? ONE : ZERO;   // If the current state is 499, output ONE, else output ZERO

    reg [5:0] state;    // Current state
    reg [5:0] nextstate;    // Next state

    // State transition logic
    always@(posedge clk_50MHz or negedge reset) begin
        if(!reset)
            state <= 6'd0;  // If reset is not asserted, initialize the state to 0
        else
            state <= nextstate; // Else, transition to the next state
    end

    // Next state logic
    always@(*) begin
        case(state)
            6'd49:  nextstate = 6'd0;   // If the current state is 49, reset the state to 0
            default: nextstate = state + 1'd1;  // Else, increment the state
        endcase
    end

    // Output logic
    // If the current state is 1, 2, or 3, output ZERO, else output ONE
    assign CONVST_18 = (state == 6'd1 || state == 6'd2 || state == 6'd3) ? ZERO : ONE;

    // Output logic
    assign RD_18 = ONE;

    always@(posedge clk_50MHz or negedge reset) begin
        if(!reset)
            Valid_Data <= 8'd0;
        else if(RD == 1'b0)
            Valid_Data <= Data;
        else
            Valid_Data <= Valid_Data;
    end

endmodule