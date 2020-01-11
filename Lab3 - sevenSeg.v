`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 05:49:13 PM
// Design Name: 
// Module Name: sevenSeg
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


module sevenSeg(
    input s0,
    input s1,
    input s2,
    input s3,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output an0,
    output an1,
    output an2,
    output an3
    );
    wire s0_not, s1_not, s2_not, s3_not;
    wire x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24;
    
    or(an1, 1);
    or(an2, 1);
    or(an3, 1);
    and(an0, 0);
    not(s0_not, s0);
    not(s1_not, s1);
    not(s2_not, s2);
    not(s3_not, s3);
    
    and(x0, s3_not, s2, s1_not, s0_not);
    and(x1, s3_not, s2_not, s1_not, s0);
    and(x2, s3, s2, s1_not, s0);
    and(x3, s3, s2_not, s1, s0);
    or(a, x0, x1, x2, x3);
    
    and(x4, s3, s2, s1_not, s0_not);
    and(x5, s3_not, s2, s1_not, s0);
    and(x6, s3, s1, s0);
    and(x7, s2, s1, s0_not);
    or(b, x4, x5, x6, x7);
    
    and(x8, s3, s2, s1_not, s0_not);
    and(x9, s3_not, s2_not, s1, s0_not);
    and(x10, s3, s2, s1);
    or(c, x8, x9, x10);
    
    and(x11, s3_not, s2, s1_not, s0_not);
    and(x12, s3_not, s2_not, s1_not, s0);
    and(x13, s3, s2_not, s1, s0_not);
    and(x14, s2, s1, s0);
    or(d, x11, x12, x13, x14);
    
    and(x15, s3_not, s2, s1_not);
    and(x16, s2_not, s1_not, s0);
    and(x17, s3_not, s0);
    or(e, x15, x16, x17);
    
    and(x18, s3, s2, s1_not, s0);
    and(x19, s3_not, s2_not, s0);
    and(x20, s3_not, s2_not, s1);
    and(x21, s3_not, s1, s0);
    or(f, x18, x19, x20, x21);
    
    and(x22, s3, s2, s1_not, s0_not);
    and(x23, s3_not, s2, s1, s0);
    and(x24, s3_not, s2_not, s1_not);
    or(g, x22, x23, x24);
    
endmodule
