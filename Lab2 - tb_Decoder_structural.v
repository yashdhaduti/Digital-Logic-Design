`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2019 01:05:26 AM
// Design Name: 
// Module Name: tb_Decoder_structural
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


module tb_Decoder_structural;
 //Inputs to be definsed as registers
    reg e;
    reg a;
    reg b;
    reg c;
   
    //Outputs to be defined as wires
    wire d0;
    wire d1;
    wire d2;
    wire d3;
    wire d4;
    wire d5;
    wire d6;
    wire d7;
   
    //Instantiate the Unit Under Test (UUT)
    Decoder_structural uut(
        .e(e),
        .a(a),
        .b(b),
        .c(c),
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .d4(d4),
        .d5(d5),
        .d6(d6),
        .d7(d7)
       
       
        );
       
     initial begin
     //Initialize Inputs
     e=0;
     a=0;
     b=0;
     c=0;
     
     //Wait 50 ns for global reset to finish
     #50;
     
     //Stimilus - All input combinations followed by some wait time to observe the o/p
     e=0;
     a=0;
     b=0;
     c=0;
     $display ("TC01");
     if(d0!=1'b0) $display ("Result is wrong");
     
     e=0;
     a=0;
     b=0;
     c=1;
     #50;
     $display ("TC02");
     if(d1!=1'b0) $display ("Result is wrong");
     
     e=0;
     a=0;
     b=1;
     c=0;
     #50;
     $display ("TC03");
     if(d2!=1'b0) $display ("Result is wrong");
     
     e=0;
     a=0;
     b=1;
     c=1;
     #50;
     $display ("TC04");
     if(d3!=1'b0) $display ("Result is wrong");
     
     e=0;
     a=1;
     b=0;
     c=0;
     #50;
     $display ("TC05");
     if(d4!=1'b0) $display ("Result is wrong");
     
     e=0;
     a=1;
     b=0;
     c=1;
     #50;
     $display ("TC06");
     if(d5!=1'b0) $display ("Result is wrong");
     
     e=0;
     a=1;
     b=1;
     c=0;
     #50;
     $display ("TC07");
     if(d6!=1'b0) $display ("Result is wrong");
     
     e=0;
     a=1;
     b=1;
     c=1;
     #50;
     $display ("TC08");
     if(d7!=1'b0) $display ("Result is wrong");
     
     e=1;
     a=0;
     b=0;
     c=0;
     #50;
     $display ("TC11");
     if(d0!=1'b1) $display ("Result is wrong");
     
     e=1;
     a=0;
     b=0;
     c=1;
     #50;
     $display ("TC12");
     if(d1!=1'b1) $display ("Result is wrong");
     
     e=1;
     a=0;
     b=1;
     c=0;
     #50;
     $display ("TC13");
     if(d2!=1'b1) $display ("Result is wrong");
     
     e=1;
     a=0;
     b=1;
     c=1;
     #50;
     $display ("TC14");
     if(d3!=1'b1) $display ("Result is wrong");
     
     e=1;
     a=1;
     b=0;
     c=0;
     #50;
     $display ("TC15");
     if(d5!=1'b1) $display ("Result is wrong");
     
     e=1;
     a=1;
     b=0;
     c=1;
     #50;
     $display ("TC16");
     if(d5!=1'b1) $display ("Result is wrong");
     
     e=1;
     a=1;
     b=1;
     c=0;
     #50;
     $display ("TC17");
     if(d6!=1'b1) $display ("Result is wrong");
     
     e=1;
     a=1;
     b=1;
     c=1;
     #50;
     $display ("TC18");
     if(d7!=1'b1) $display ("Result is wrong");
     
     end
endmodule

