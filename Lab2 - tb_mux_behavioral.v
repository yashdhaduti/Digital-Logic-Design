`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2019 05:48:15 PM
// Design Name: 
// Module Name: tb_mux_behavioral
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:n 
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_mux_behavioral;

    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg s0;
    reg s1;
    wire d;
   
    mux_behavioral uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .d(d)
    );
   
    initial begin
    i0=0;
    i1=0;
    i2=0;
    i3=0;
    s1=0;
    s0=0;
   
    #50
   
    i0=0;
    i1=0;
    i2=0;
    i3=0;
    s1=0;
    s0=0;
   
    #50
    $display("TC01 ");
    if(d!=1'b0) $display ("Result is wrong");
   
    i0=0;
    i1=0;
    i2=0;
    i3=0;
    s1=0;
    s0=1;
    #50
    $display("TC02 ");
    if(d!=1'b0) $display ("Result is wrong");
   
    i0=0;
    i1=0;
    i2=0;
    i3=0;
    s1=1;
    s0=0;
    #50
    $display("TC03 ");
    if(d!=1'b0) $display ("Result is wrong");
    i0=0;
    i1=0;
    i2=0;
    i3=0;
    s1=1;
    s0=1;
    #50
    $display("TC04 ");
    if(d!=1'b0) $display ("Result is wrong");
    i0=1;
    i1=0;
    i2=0;
    i3=0;
    s1=0;
    s0=0;
    #50
    $display("TC05 ");
    if(d!=1'b1) $display ("Result is wrong");
    i0=0;
    i1=1;
    i2=0;
    i3=0;
    s1=0;
    s0=1;
    #50
    $display("TC06 ");
    if(d!=1'b1) $display ("Result is wrong");
    i0=0;
    i1=0;
    i2=1;
    i3=0;
    s1=1;
    s0=0;
    #50
    $display("TC07 ");
    if(d!=1'b1) $display ("Result is wrong");
    i0=0;
    i1=0;
    i2=0;
    i3=1;
    s1=1;
    s0=1;
    #50
    $display("TC08 ");
    if(d!=1'b1) $display ("Result is wrong");
   
    end
endmodule
