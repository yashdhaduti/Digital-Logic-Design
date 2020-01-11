`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2019 03:15:53 PM
// Design Name: 
// Module Name: Mux_structural
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


module Mux_structural(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output d
    );
    
    wire s0_not, s1_not, i0_and, i1_and, i2_and, i3_and;
    
    not n0 (s0_not, s0);
    not n1 (s1_not, s1);
    
    and g0 (i0_and, s0_not, s1_not, i0);
    and g1 (i1_and, s0_not, s1, i1); 
    and g2 (i2_and, s0, s1_not, i2);
    and g3 (i3_and, s0, s1, i3);
    
    or g4 (d, i0_and, i1_and, i2_and, i3_and);
    
endmodule
