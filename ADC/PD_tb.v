`timescale 1ns/1ns

module tb_ADC_PD;

    reg clk_200kHz;
    reg reset;
    wire PD;
    wire ADC_ready;

    // Instantiate the ADC_PD module
    ADC_PD uut (
        .clk_200kHz(clk_200kHz),
        .reset(reset),
        .PD(PD),
        .ADC_ready(ADC_ready)
    );

    // Clock generation 
    always begin
        #5 clk_200kHz = ~clk_200kHz;
    end

    // Initial stimulus
    initial begin
        clk_200kHz = 0;
        reset = 0;

        // Wait for a few clock cycles
        #100;

        // De-assert reset
        reset = 1;

        // Wait for a few clock cycles
        #100;

        // Add more test scenarios as needed
        // ...

        // End simulation after some time
        #1000 $finish;
    end

    // Display simulation results
    initial begin
        $monitor("Time=%0t PD=%b ADC_ready=%b", $time, PD, ADC_ready);
    end

endmodule
