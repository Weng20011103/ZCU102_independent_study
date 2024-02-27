`timescale 1ns/1ns  // Adjust the timescale as needed

module testbench;

    // Input signals
    reg clk_X4;
    reg enable;

    // Output signals
    wire CLK_3;
    wire SDI_4;
    wire LD_5;

    // Instantiate the module under test
    DAC7611P uut (
        .clk_X4(clk_X4),
        .enable(enable),
        .CLK_3(CLK_3),
        .SDI_4(SDI_4),
        .LD_5(LD_5)
    );

    // Clock generation
    initial begin
        clk_X4 = 0;
        forever #25 clk_X4 = ~clk_X4;
    end

    // Test scenario
    initial begin
        // Initialize inputs
        enable = 0;

        #40 enable = 1;
        
        // Add more test scenarios as needed

        // End simulation
        #2000 $finish;
    end

endmodule
