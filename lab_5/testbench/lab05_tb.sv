`timescale 1ns / 1ps

module lab05_tb;
    // Inputs
    reg a, b, c, d;
    reg s1, s2, s3;
    
    // Outputs
    wire SEG_A, SEG_B, SEG_C, SEG_D, SEG_E, SEG_F, SEG_G, DP;
    wire AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7;
    
    // Instantiate the Unit Under Test (UUT)
    lab05 uut (
        .a(a), 
        .b(b), 
        .c(c), 
        .d(d), 
        .s1(s1), 
        .s2(s2), 
        .s3(s3), 
        .SEG_A(SEG_A), 
        .SEG_B(SEG_B), 
        .SEG_C(SEG_C), 
        .SEG_D(SEG_D), 
        .SEG_E(SEG_E), 
        .SEG_F(SEG_F), 
        .SEG_G(SEG_G), 
        .DP(DP), 
        .AN0(AN0), 
        .AN1(AN1), 
        .AN2(AN2), 
        .AN3(AN3), 
        .AN4(AN4), 
        .AN5(AN5), 
        .AN6(AN6), 
        .AN7(AN7)
    );
    
    // Test sequence
    initial begin
        // Initialize Inputs
        a = 0; b = 0; c = 0; d = 0;
        s1 = 0; s2 = 0; s3 = 0;
        
        // Apply different test cases
        #10 a = 1; b = 0; c = 0; d = 1;
        #10 a = 0; b = 1; c = 1; d = 0;
        #10 a = 1; b = 1; c = 0; d = 1;
        #10 s1 = 1; s2 = 0; s3 = 0;
        #10 s1 = 0; s2 = 1; s3 = 1;
        #10 s1 = 1; s2 = 1; s3 = 1;
        
        // Complete simulation
        #10 $stop;
    end
    
endmodule
