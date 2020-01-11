`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2019 05:58:19 PM
// Design Name: 
// Module Name: datapath
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


module datapath(
    input select, 
    input clk, 
    input load, 
    input [3:0] A, 
    input [3:0] B,
    input Cin, 
    output [9:0] S
    );
    
    wire [4:0] rip; 
    wire [4:0] carry; 
    reg [9:0] pass; 
    
    rca ripple(.clk(clk), .load(load), .A(A), .B(B), .Cin(Cin), .Q(rip)); 
    cla lookAhead(.clk(clk), .load(load), .A(A), .B(B), .Cin(Cin), .Q(carry)); 
    
    loadreg reg1(.clk(clk), .load(load), .D(pass), .Q(S)); 
    
    always @(*) begin 
        if (select == 0) begin 
          pass[9:5] = 5'b00000; 
          pass[4:0] = rip; 
        end
        
        else begin 
            pass [9:5] = carry; 
            pass [4:0] = 5'b00000;
        end
    end
endmodule

