`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2019 05:51:39 PM
// Design Name: 
// Module Name: cla
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


module cla(
    input clk, load, 
    input [3:0] A, B, 
    input Cin, 
    output [4:0] Q
    );
    
    wire [3:0] G, P, S; 
    wire [4:0] C; 
    wire [3:0] Sum; 
    wire Cout; 
    assign C[0] = Cin; 
    
    assign P[0] = A[0]^B[0]; 
    assign G[0] = A[0]&B[0]; 
    assign Sum[0] = P[0]^C[0];
    
   
    assign C[1] = G[0] | P[0] & C[0]; 
 
    assign P[1] = A[1] ^B[1]; 
    assign G[1] = A[1] & B[1]; 
    assign Sum[1] = P[1]^C[1]; 
    assign C[2] = G[1] | P[1] & ( G[0]|P[0] & C[0]);     
     
    assign P[2] = A[2] ^B[2]; 
    assign G[2] = A[2] & B[2]; 
    assign Sum[2] = P[2]^C[2]; 
    assign C[3] = (G[2] | P[2] & ( G[1]|P[1] & ( G[0]|P[0] & C[0]))); 
     
    assign P[3] = A[3] ^B[3]; 
    assign G[3] = A[3] & B[3]; 
    assign Sum[3] = P[3]^C[3]; 
    assign C[4] = (G[3] | P[3] & ( G[2]|P[2] & ( G[1]|P[1] & (G[0]|P[0] & C[0])))); 
     
    register_logic register((clk),(load), {C[4], Sum},(Q)); 
    
    
endmodule

