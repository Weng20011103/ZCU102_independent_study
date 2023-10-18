module DAC7611P(
    input clk, reset,
    input [11:0] DATA,
    output DAC_CLK,
    output reg CS, SDI, LD, CLR
);

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
        //idle time start
        6'd0: nextstate = 6'd1;
        6'd1: nextstate = 6'd2;
        //idle time end
        //data time begin, start with MSB
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
        //data time end, end with MSB
        //load data begin
        6'd26: nextstate = 6'd27;
        6'd27: nextstate = 6'd28;
        //load data end
        //clear begin
        6'd28: nextstate = 6'd29;
        6'd29: nextstate = 6'd30;
        //clear end
        default: nextstate = 6'd0;
        endcase
    end

    reg [1:0] counter2;

    always@(posedge clk or negedge reset) begin
        if(!reset)
            counter2 <= 2'b0;
        else
            counter2 <= counter2 + 1'b1;
    end

    assign DAC_CLK = counter2[0];

    always@(*) begin
        case(state)
        //idle time start
        6'd0: begin
            CS = 1;
            SDI = 1;
            LD = 0;
            CLR = 1;
        end
        6'd1: begin
            CS = 0;
            SDI = 1;
            LD = 0;
            CLR = 1;
        end
        //idle time end
        //data time begin, start with MSB
        6'd2: begin
            CS = 0;
            SDI = DATA[11];
            LD = 1;
            CLR = 1;
        end
        6'd3: begin
            CS = 0;
            SDI = DATA[11];
            LD = 1;
            CLR = 1;
        end
        6'd4: begin
            CS = 0;
            SDI = DATA[10];
            LD = 1;
            CLR = 1;
        end
        6'd5: begin
            CS = 0;
            SDI = DATA[10];
            LD = 1;
            CLR = 1;
        end
        6'd6: begin
            CS = 0;
            SDI = DATA[9];
            LD = 1;
            CLR = 1;
        end
        6'd7: begin
            CS = 0;
            SDI = DATA[9];
            LD = 1;
            CLR = 1;
        end
        6'd8: begin
            CS = 0;
            SDI = DATA[8];
            LD = 1;
            CLR = 1;
        end
        6'd9: begin
            CS = 0;
            SDI = DATA[8];
            LD = 1;
            CLR = 1;
        end
        6'd10: begin
            CS = 0;
            SDI = DATA[7];
            LD = 1;
            CLR = 1;
        end
        6'd11: begin
            CS = 0;
            SDI = DATA[7];
            LD = 1;
            CLR = 1;
        end
        6'd12: begin
            CS = 0;
            SDI = DATA[6];
            LD = 1;
            CLR = 1;
        end
        6'd13: begin
            CS = 0;
            SDI = DATA[6];
            LD = 1;
            CLR = 1;
        end
        6'd14: begin
            CS = 0;
            SDI = DATA[5];
            LD = 1;
            CLR = 1;
        end
        6'd15: begin
            CS = 0;
            SDI = DATA[5];
            LD = 1;
            CLR = 1;
        end
        6'd16: begin
            CS = 0;
            SDI = DATA[4];
            LD = 1;
            CLR = 1;
        end
        6'd17: begin
            CS = 0;
            SDI = DATA[4];
            LD = 1;
            CLR = 1;
        end
        6'd18: begin
            CS = 0;
            SDI = DATA[3];
            LD = 1;
            CLR = 1;
        end
        6'd19: begin
            CS = 0;
            SDI = DATA[3];
            LD = 1;
            CLR = 1;
        end
        6'd20: begin
            CS = 0;
            SDI = DATA[2];
            LD = 1;
            CLR = 1;
        end
        6'd21: begin
            CS = 0;
            SDI = DATA[2];
            LD = 1;
            CLR = 1;
        end
        6'd22: begin
            CS = 0;
            SDI = DATA[1];
            LD = 1;
            CLR = 1;
        end
        6'd23: begin
            CS = 0;
            SDI = DATA[1];
            LD = 1;
            CLR = 1;
        end
        6'd24: begin
            CS = 0;
            SDI = DATA[0];
            LD = 1;
            CLR = 1;
        end
        6'd25: begin
            CS = 0;
            SDI = DATA[0];
            LD = 1;
            CLR = 1;
        end
        //data time end, end with MSB
        //load data begin
        6'd26: begin
            CS = 0;
            SDI = 0;
            LD = 1;
            CLR = 1;
        end
        6'd27: begin
            CS = 1;
            SDI = 0;
            LD = 0;
            CLR = 1;
        end
        //load data end
        //clear begin
        6'd28: begin
            CS = 1;
            SDI = 0;
            LD = 1;
            CLR = 1;
        end
        6'd29: begin
            CS = 1;
            SDI = 0;
            LD = 1;
            CLR = 0;
        end
        //clear end
        default: begin
            CS = 1;
            SDI = 1;
            LD = 1;
            CLR = 1;
        end
        endcase
    end

endmodule