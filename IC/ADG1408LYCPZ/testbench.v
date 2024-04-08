`timescale 1ns / 1ps

module BL_MUX_tb;

    // Inputs
    reg Reset;
    reg EN_in;
    reg A2_in, A1_in, A0_in;

    // Outputs
    wire A2_out, A1_out, A0_out;
    wire EN_out;

    // Instantiate the Unit Under Test (UUT)
    BL_MUX uut (
        .Reset(Reset), 
        .EN_in(EN_in), 
        .A2_in(A2_in), 
        .A1_in(A1_in), 
        .A0_in(A0_in), 
        .A2_out(A2_out), 
        .A1_out(A1_out), 
        .A0_out(A0_out), 
        .EN_out(EN_out)
    );

    initial begin
        // Initialize Inputs
        Reset = 0;
        EN_in = 0;
        A2_in = 0; A1_in = 0; A0_in = 0;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Add stimulus here
        Reset = 1;
        #100;

        EN_in = 1;
        A2_in = 0; A1_in = 0; A0_in = 0;
        #100;
        
        EN_in = 0;
        #100;

        EN_in = 1;
        A2_in = 0; A1_in = 0; A0_in = 1;
        #100;
        
        EN_in = 0;
        #100;

        EN_in = 1;
        A2_in = 0; A1_in = 1; A0_in = 0;
        #100;
        
        EN_in = 0;
        #100;
                
        EN_in = 1;
        A2_in = 0; A1_in = 1; A0_in = 1;
        #100;
        
        EN_in = 0;
        #100;

        EN_in = 1;
        A2_in = 1; A1_in = 0; A0_in = 0;
        #100;
        
        EN_in = 0;
        #100;

        EN_in = 1;
        A2_in = 1; A1_in = 0; A0_in = 1;
        #100;
        
        EN_in = 0;
        #100;

        EN_in = 1;
        A2_in = 1; A1_in = 1; A0_in = 0;
        #100;
        
        EN_in = 0;
        #100;

        EN_in = 1;
        A2_in = 1; A1_in = 1; A0_in = 1;
        #100;
        
        EN_in = 0;
        #100;

        Reset = 0;
        #100;
    end
      
endmodule
