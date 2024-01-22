module ADC_control(
    input ADC_ready,   // from ADC_PD module
    input clk_100M,    // clk is 100MHz, 10ns
    input reset,       // reset is low trigger
    input EOC,         // Pin8
    input      [7:0]Data,
    output reg [7:0]Valid_Data,
    output reg CONVST, // Pin4
    output reg CS,     // Pin5
    output reg RD      // Pin6
);

    reg [6:0] state;
    reg [6:0] nextstate;

    always@(posedge clk_100M or negedge reset) begin
        if(!reset)
            state <= 7'd0;
        else
            state <= nextstate;
    end

    // 7'd0 is 0ns, 7'd99 is 990ns, 
    always@(*) begin
        case(state)
            7'd0:begin  
                if(ADC_ready)
                    nextstate = 7'd1;
                else
                    nextstate = 7'd0;
            end
            7'd99: nextstate = 7'd0;
            default: nextstate = state + 1'd1;
        endcase
    end

    always@(*) begin
        CONVST = (state >= 7'd1 && state <= 7'd5) ? 1'b0 : 1'b1;
    end

    reg [2:0] CS_RD_state;
    reg [2:0] CS_RD_nextstate;

    always@(posedge clk_100M or negedge reset) begin
        if(!reset)
            CS_RD_state <= 3'd0;
        else
            CS_RD_state <= CS_RD_nextstate;
    end

    always@(*) begin
        case(CS_RD_state)
            3'd0: begin  
                if(ADC_ready && (!EOC))
                    CS_RD_nextstate = 3'd1;
                else
                    CS_RD_nextstate = 3'd0;
            end
            3'd5: CS_RD_nextstate = 3'd0;
            default: CS_RD_nextstate = CS_RD_state + 1'd1;
        endcase
    end

    always@(*) begin
        CS = (CS_RD_state >= 3'd1 && CS_RD_state <= 3'd5) ? 1'b0 : 1'b1;
        RD = (CS_RD_state >= 3'd1 && CS_RD_state <= 3'd5) ? 1'b0 : 1'b1;
    end

    always@(posedge clk_100M or negedge reset) begin
        if(!reset)
            Valid_Data <= 8'd0;
        else if(RD == 1'b0)
            Valid_Data <= Data;
        else
            Valid_Data <= Valid_Data;
    end

endmodule