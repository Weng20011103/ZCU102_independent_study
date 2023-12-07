`timescale 1ns/1ns

module tb_ADC_control;

    reg clk_100M;
    reg reset;
    reg EOC;
    reg [7:0] Data;
    wire ADC_ready;
    wire [7:0] Valid_Data;
    wire CONVST, CS, RD;

    // Instantiate the ADC_control module
    ADC_control uut (
        .ADC_ready(ADC_ready),
        .clk_100M(clk_100M),
        .reset(reset),
        .EOC(EOC),
        .Data(Data),
        .Valid_Data(Valid_Data),
        .CONVST(CONVST),
        .CS(CS),
        .RD(RD)
    );

    // Clock generation
    always begin
        #5 clk_100M = ~clk_100M;
    end

    // Initial stimulus
    initial begin
        clk_100M = 0;
        reset = 0;
        EOC = 1;
        Data = 8'h00;

        // Wait for a few clock cycles
        #100;

        // De-assert reset
        reset = 1;

        // Wait for a few clock cycles
        #100;

        Data = 8'hAB;
        #100;
        EOC = 0;

        #80;
        EOC = 1;

        // End simulation after some time
        #1000 $finish;
    end

    // Display simulation results
    initial begin
        $monitor("Time=%0t ADC_ready=%b Valid_Data=%h CONVST=%b CS=%b RD=%b", $time, ADC_ready, Valid_Data, CONVST, CS, RD);
    end

endmodule
