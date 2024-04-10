module ADC_control(
    input clk_100M,       // clk is 100MHz, 10ns
    input Reset,          // Reset is low trigger
    input EOC_18,         // Pin8
    input CONVST_in,
    input PD_in,
    output reg CONVST_18, // Pin4
    output RD_18,     // Pin6
    output reg PD_18      // Pin9
);
    always@(CONVST_in or Reset) begin
        if(Reset == 1'b0) begin
            CONVST_18 = 1'b1;
        end
        else if(CONVST_in == 1'b1) begin
            CONVST_18 = 1'b1;
        end
        else begin
            CONVST_18 = 1'b0;
        end
    end

    always@(PD_in or Reset) begin
        if(Reset == 1'b0) begin
            PD_18 = 1'b0;
        end
        else if(PD_in == 1'b0) begin
            PD_18 = 1'b0;
        end
        else begin
            PD_18 = 1'b1;
        end
    end

    reg [3:0] state;
    reg [3:0] nextstate;

    always@(posedge clk_100M or negedge Reset) begin
        if(!Reset)
            state <= 4'd0;
        else
            state <= nextstate;
    end

    // 4'd0 is 0ns, 4'd7 is 70ns, 
    always@(*) begin
        case(state)
            4'd0:begin  
                if(!EOC_18)
                    nextstate = 4'd1;
                else
                    nextstate = 4'd0;
            end
            4'd15: nextstate = 4'd0;
            default: nextstate = state + 1'd1;
        endcase
    end

    assign RD_18 = (state >= 4'd3 && state <= 4'd8) ? 1'b0 : 1'b1;

endmodule