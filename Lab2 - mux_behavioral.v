`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2019 05:40:50 PM
// Design Name: 
// Module Name: mux_behavioral
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


module mux_behavioral(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output reg d
    );
    
    always @(i0, i1, i2, i3)
    
    begin
    
    d=1'b0;
    
    case({s0,s1})
    2'b00 : d=i0;
    2'b01 : d=i1;
    2'b10 : d=i2;
    2'b11 : d=i3;
    default : begin
    d=1'b0;
    end
    endcase
    end     
endmodule
