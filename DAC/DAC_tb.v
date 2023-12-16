`timescale 1ns/1ns  // Adjust the timescale as needed

module testbench;

    // Input signals
    reg clk_50M;
    reg locked;
    reg [7:0] Data;

    // Output signals
    wire CS_2;
    wire CLK_3;
    wire SDI_4;
    wire LD_5;
    wire CLR_6;

    // Instantiate the module under test
    DAC7611P uut (
        .clk_50M(clk_50M),
        .locked(locked),
        .Data(Data),
        .CS_2(CS_2),
        .CLK_3(CLK_3),
        .SDI_4(SDI_4),
        .LD_5(LD_5),
        .CLR_6(CLR_6)
    );

    // Clock generation
    initial begin
        clk_50M = 0;
        forever #10 clk_50M = ~clk_50M;
    end

    // Test scenario
    initial begin
        // Initialize inputs
        locked = 0;
        Data = 8'b0;

        // Apply stimulus
        #20 Data = 8'b1101_0101;  // Change data
        #40 locked = 1;
        
        // Add more test scenarios as needed

        // End simulation
        #1000 $finish;
    end

endmodule
