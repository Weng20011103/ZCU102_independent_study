module ADC_PD(
    input clk_200kHz,    // clk is 200 kHz, 5 μs
    input reset,
    output reg PD,      // Pin9
    output reg ADC_ready
);
    // When using the on-chip reference, it is necessary to wait the required power-up
    // time of approximately 25 μs before initiating a conversion; that
    // is, a falling edge on CONVST must not occur before the
    // required power-up time has elapsed, when supplies are first
    // connected to the AD7822 or AD7825, or when the ADCs have
    // been powered down using the PD pin or the CONVST pin, as
    // shown in Figure 20.

    reg [2:0]state;

    // Bringing the PD pin low places the AD7822 and AD7825 in power-down mode. The ADCs power up when PD is brought logic high again.
    always @(posedge clk_200kHz or negedge reset) begin
        if (!reset) begin
            PD <= 1'b0;
            ADC_ready <= 1'b0;
            state <= 3'd0;
        end else begin
            case(state)
                3'd0: begin
                    PD <= 1'b0;
                    ADC_ready <= 1'b0;
                    state <= 3'd1;
                end
                3'd1: begin
                    // State to generate the pulse
                    PD <= 1'b1;
                    ADC_ready <= 1'b0;
                    state <= 3'd2;
                end
                3'd2: begin
                    PD <= 1'b1;
                    ADC_ready <= 1'b0;
                    state <= 3'd3;
                end
                3'd3: begin
                    PD <= 1'b1;
                    ADC_ready <= 1'b0;
                    state <= 3'd4;
                end
                3'd4: begin
                    PD <= 1'b1;
                    ADC_ready <= 1'b0;
                    state <= 3'd5;
                end
                3'd5: begin
                    PD <= 1'b1;
                    ADC_ready <= 1'b0;
                    state <= 3'd6;
                end
                3'd6: begin
                    PD <= 1'b1;
                    ADC_ready <= 1'b0;
                    state <= 3'd7;
                end
                3'd7: begin
                    PD <= 1'b1;
                    ADC_ready <= 1'b1;
                    state <= state;
                end
            endcase
        end
    end

endmodule