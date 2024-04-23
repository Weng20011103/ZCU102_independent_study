module fsm(
    input clk_10MHz, locked, reset,
    output adc_control, dac1_control, dac2_control,
    output [18:0]mux_signals
);
    parameter idle = 4'd0;
    parameter adc = 4'd1;
    parameter dac1 = 4'd2;
    parameter dac2 = 4'd3;

    reg [3:0] state;
    reg [3:0] nextstate;

    always@(posedge clk_10MHz or negedge reset) begin
        if(!reset)
            state <= idle;
        else
            state <= nextstate;
    end

    always@(*) begin
        case(state)
            idle: nextstate = adc;
            adc: nextstate = idle;
            4'd15:  nextstate = idle;
            default: nextstate = state + 1'd1;
        endcase
    end

    always@(*) begin
        case(state)
            idle: begin
                adc_control = 1'b0;
                dac1_control = 1'b0;
                dac2_control = 1'b0;
            end
            adc: begin
                adc_control = 1'b1;
                dac1_control = 1'b0;
                dac2_control = 1'b0;
            end
            default: begin
                adc_control = 1'b0;
                dac1_control = 1'b0;
                dac2_control = 1'b0;
            end
        endcase
    end

    always@(*) begin
        case(state)
            idle: begin
                mux_signals = 19'b0;
            end
            adc: begin
                mux_signals = 19'b0;
            end
            default: begin
                mux_signals = 19'b0;
            end
        endcase
    end
endmodule