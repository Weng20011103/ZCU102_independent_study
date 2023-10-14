`timescale 1ns/1ps

module testbench_GPIO_LED_FSM;
    reg clk;
    reg reset;
    wire [7:0] GPIO_LED;

    // Instantiate the DUT (Device Under Test)
    GPIO_LED_FSM uut (
        .clk(clk),
        .reset(reset),
        .GPIO_LED(GPIO_LED)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    initial begin
        // Initialize signals
        clk = 0;
        reset = 0;

        #10 reset = 1;

        // Test the state transitions
        #2000;

        // Finish the simulation
        $finish;
    end

endmodule
