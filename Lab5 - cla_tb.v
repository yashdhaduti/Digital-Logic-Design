`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2019 05:45:50 PM
// Design Name: 
// Module Name: cla_tb
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


module cla_tb; 
    reg clk; 
    reg enable; 
    reg [3:0] A,B; 
    reg Cin; 
    wire [4:0] Q; 
    
    cla ul(
    .clk(clk), 
    .load(enable),
    .A(A), 
    .B(B), 
    .Cin(Cin), 
    .Q(Q)
    ); 
    
    initial begin 
 
clk = 0; 
enable = 1; 
A = 4'b0000; 
B = 4'b0000; 
Cin = 1'b0; 
 
#50; 
 
enable = 1; 
A = 4'b0000; 
B = 4'b0101; 
Cin = 1'b0; 
 
#50; 
 
A = 4'b0101; 
B = 4'b0111; 
Cin = 1'b0; 
 
#50; 
 
A = 4'b1000; 
B = 4'b0111; 
Cin = 1'b1; 
 
#50; 
 
A = 4'b1001; 
B = 4'b0100; 
Cin = 1'b0; 
 
#50; 
 
A = 4'b1000; 
B = 4'b1000; 
Cin = 1'b1; 
#50; 
A = 4'b1101; 
B = 4'b1010; 
Cin = 1'b1; 
#50; 
A = 4'b1110; 
B = 4'b1111; 
Cin = 1'b0; 
end 

always 
#5 clk = ~clk; 
endmodule


