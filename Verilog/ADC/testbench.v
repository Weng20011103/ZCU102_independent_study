`timescale 1ns / 1ps

module ADC_control_tb;
    // Declare the signals
    reg clk_100M;
    reg Reset;
    reg EOC_18;
    reg CONVST_in;
    reg PD_in;
    wire CONVST_18;
    wire RD_18;
    wire PD_18;

    // Instantiate the Device Under Test (DUT)
    ADC_control DUT (
        .clk_100M(clk_100M),
        .Reset(Reset),
        .EOC_18(EOC_18),
        .CONVST_in(CONVST_in),
        .PD_in(PD_in),
        .CONVST_18(CONVST_18),
        .RD_18(RD_18),
        .PD_18(PD_18)
    );

    // Clock generator
    always begin
        #5 clk_100M = ~clk_100M; // 100MHz clock
    end

    // Stimulus
    initial begin
        // Initialize the inputs
        clk_100M = 0;
        Reset = 0;
        EOC_18 = 1;
        CONVST_in = 1;
        PD_in = 0;

        // Apply the reset
        #100 Reset = 1;

        // Apply some stimulus
        #100 PD_in = 1;
        #100 CONVST_in = 0;
        #50 CONVST_in = 1;
        #150 EOC_18 = 0;

        #100 EOC_18 = 1;

        // End the simulation
        #20 $finish;
    end
endmodule
