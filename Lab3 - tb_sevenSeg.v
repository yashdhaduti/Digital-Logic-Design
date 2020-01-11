`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 05:53:27 PM
// Design Name: 
// Module Name: tb_sevenSeg
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


module tb_sevenSeg;
    reg s0;
    reg s1;
    reg s2;
    reg s3;                    
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
    wire an0;
    wire an1;
    wire an2;
    wire an3;

sevenSeg uut (
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .s3(s3),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g),
    .an0(an0),
    .an1(an1),
    .an2(an2),
    .an3(an3)                    
);

initial                                    
    begin
   
    s3 = 0;
    s2 = 0;
    s1 = 0;
    s0 = 0;
   
    #50
   
    s3 = 0;
    s2 = 0;
    s1 = 0;
    s0 = 0;
   
    $display ("TC01 ");
   
    #50
   
    s3 = 0;
    s2 = 0;
    s1 = 0;
    s0 = 1;
    $display ("TC02 ");
   
    #50
   
    s3 = 0;
    s2 = 0;
    s1 = 1;
    s0 = 0;
    $display ("TC03 ");
   
    #50
   
    s3 = 0;
    s2 = 0;
    s1 = 1;
    s0 = 1;
    $display ("TC04 ");
   
    #50
   
    s3 = 0;
    s2 = 1;
    s1 = 0;
    s0 = 0;
    $display ("TC05 ");
   
    #50
   
    s3 = 0;
    s2 = 1;
    s1 = 0;
    s0 = 1;
    $display ("TC06 ");

    #50
   
    s3 = 0;
    s2 = 1;
    s1 = 1;
    s0 = 0;
    $display ("TC07 ");

    #50
   
    s3 = 0;
    s2 = 1;
    s1 = 1;
    s0 = 1;
    $display ("TC08 ");

    #50
   
    s3 = 1;
    s2 = 0;
    s1 = 0;
    s0 = 0;
    $display ("TC09 ");

    #50
   
    s3 = 1;
    s2 = 0;
    s1 = 0;
    s0 = 1;
    $display ("TC10 ");

    #50
   
    s3 = 1;
    s2 = 0;
    s1 = 1;
    s0 = 0;
    $display ("TC11 ");

    #50
   
    s3 = 1;
    s2 = 0;
    s1 = 1;
    s0 = 1;
    $display ("TC12 ");

    #50
   
    s3 = 1;
    s2 = 1;
    s1 = 0;
    s0 = 0;
    $display ("TC13 ");

    #50
   
    s3 = 1;
    s2 = 1;
    s1 = 0;
    s0 = 1;
    $display ("TC14 ");

    #50
   
    s3 = 1;
    s2 = 1;
    s1 = 1;
    s0 = 0;
    $display ("TC15 ");

    #50
   
    s3 = 1;
    s2 = 1;
    s1 = 1;
    s0 = 1;
    $display ("TC16 ");
   
    end
endmodule
