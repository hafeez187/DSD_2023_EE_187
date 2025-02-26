`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 09:12:36 PM
// Design Name: 
// Module Name: lab05
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module lab05(
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    input wire s1,  
    input wire s2,  
    input wire s3, 
    
    output wire SEG_A, SEG_B, SEG_C, SEG_D, SEG_E, SEG_F, SEG_G, DP,
    output wire AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7
);

assign SEG_A = (~a & ~b & ~c & d) | (~a & b & ~c & ~d) | (a & ~b & c & d) | (a & b & ~c & d);
assign SEG_B = (b & c & ~d) | (a & c & d) | (a & b & ~d) | (~a & b & ~c & d);
assign SEG_C = (a & b & ~d) | (a & b & c) | (~a & ~b & c & ~d);
assign SEG_D = (b & c & d) | (~a & ~b & ~c & d) | (~a & b & ~c & ~d) | (a & ~b & c & ~d);
assign SEG_E = (~a & d) | (~b & ~c & d) | (~a & b & ~c);
assign SEG_F = (~a & ~b & d) | (~a & ~b & c) | (~a & c & d) | (a & b & ~c & d);
assign SEG_G = (~a & ~b & ~c) | (~a & b & c & d) | (a & b & ~c & ~d);
assign DP = 1;
assign AN0 = ~(~s1 & ~s2 & ~s3);   
assign AN1 = ~(~s1 & ~s2 & s3);
assign AN2 = ~(~s1 & s2 & ~s3);
assign AN3 = ~(~s1 & s2 & s3);
assign AN4 = ~(s1 & ~s2 & ~s3);
assign AN5 = ~(s1 & ~s2 & s3);
assign AN6 = ~(s1 & s2 & ~s3);
assign AN7 = ~(s1 & s2 & s3);

endmodule
