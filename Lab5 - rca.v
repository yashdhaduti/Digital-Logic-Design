`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2019 05:38:25 PM
// Design Name: 
// Module Name: rca
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


module rca(
    input clk, 
    input load, 
    input [3:0] A,B, 
    input Cin, 
    output [4:0] Q
    );
    
    wire c2, c3, c4; 
    wire [4:0] Q_out; 
    
    adder a0(.a(A[0]), .b(B[0]), .Cin(Cin), .S(Q_out[0]), .Cout(c2));
    adder a1(.a(A[1]), .b(B[1]), .Cin(c2), .S(Q_out[1]), .Cout(c3));
    adder a2(.a(A[2]), .b(B[2]), .Cin(c3), .S(Q_out[2]), .Cout(c4));
    adder a3(.a(A[3]), .b(B[3]), .Cin(c4), .S(Q_out[3]), .Cout(Q_out[4])); 
    
    loadreg register(.clk(clk), .load(load), .D(Q_out), .Q(Q)); 
    
    
endmodule

