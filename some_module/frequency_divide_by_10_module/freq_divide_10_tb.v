`timescale 1ns / 1ps

module freq_div_10_tb();

    // Inputs
    reg clk;          // Clock input signal
    reg reset;        // Reset signal

    // Outputs
    wire clk_div_10;  // Output signal from the tested module

    // Instantiate the freq_divide_1000 module (assuming it's the unit under test)
    freq_div_10 uut (
        .clk(clk),
        .reset(reset),
        .clk_div_10(clk_div_10)
    );

    // Initial block
    initial begin
        // Initialize inputs
        clk = 0;      // Initialize the clock signal to 0
        reset = 0;    // Initialize the reset signal to 0

        // Apply reset after a delay of 100 time units
        #100 reset = 1;

        #500;  // Wait for additional 500 time units

        // Finish simulation
        $finish;  // Terminate the simulation
    end

    // Clock generation
    always begin
        #1 clk = ~clk;  // Toggle the clock signal every 1 time units
    end

endmodule
