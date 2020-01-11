`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2019 05:50:28 PM
// Design Name: 
// Module Name: rca_tb
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


module rca_tb;
   reg clk;
   reg load;
   reg [3:0] A,B;
   reg Cin;
   wire [4:0] Q;
   //reg [4:0] Q_1;
   
   rca u1(
        .clk(clk),
        .load(load),
        .A(A),
        .B(B),
        .Cin(Cin),
        .Q(Q)
   );
   
   
   initial begin
   clk = 0;
   load = 1;
   Cin=0;
   A=0;
   B=0;
   #20
   A = 0;
   B = 0;
   Cin = 0;
 
   
   #20
   A = 4'b0001;
   B = 4'b0101;
   Cin = 0;
   
   #20
   A = 4'b0111;
   B = 4'b0111;
   Cin = 0;
   
   #20
   A = 4'b1000;
   B = 4'b0111;
   Cin = 1;
   
   #20
   A = 4'b1100;
   B = 4'b0100;
   Cin = 0;
   
   #20
   A = 4'b1000;
   B = 4'b1000;
   Cin = 1;
   
   #20
   A = 4'b1001;
   B = 4'b1010;
   Cin = 1;
   
   #20
   A = 4'b1111;
   B = 4'b1111;
   Cin = 0;
     
   end  
   
     
   always
   #5 clk = ~clk;
endmodule
