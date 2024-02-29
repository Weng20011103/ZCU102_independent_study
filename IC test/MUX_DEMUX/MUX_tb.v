`timescale 1ns/1ns  // Adjust the timescale as needed

module testbench;

    // Input signals
    reg clk;
    reg enable;

    // Output signals
    wire EN;
    wire A2;
    wire A1;
    wire A0;
    wire S;

    // Instantiate the module under test
    MUX uut (
        .clk(clk),
        .enable(enable),
        .EN(EN),
        .A2(A2),
        .A1(A1),
        .A0(A0),
        .S(S)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #25 clk = ~clk;
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
