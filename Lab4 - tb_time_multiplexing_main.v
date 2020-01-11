`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2019 03:10:23 AM
// Design Name: 
// Module Name: tb_time_multiplexing_main
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


module tb_time_multiplexing_main;
    reg clk;
    reg reset; 
    reg [15:0] sw;
    
    wire [3:0] an;
    wire [6:0] sseg;        

    time_multiplexing_main uut (
        .clk(clk),
        .reset(reset),
        .sw(sw),
        .an(an),
        .sseg(sseg)
);
    initial
    begin
    clk = 0;
    reset = 0;
    sw = 0;
    #10
    reset = 1;
    sw = 16'h0000;
    #10
    sw = 16'h0001;
    #10
    sw = 16'h0002;
    #10
    sw = 16'h0003;
    #10
    sw = 16'h0004;
    #10
    sw = 16'h0005;
    #10
    sw = 16'h0006;
    #10
    sw = 16'h0007;
    #10
    sw = 16'h0008;
    #10
    sw = 16'h000A;
    #10
    sw = 16'h000B;
    #10
    sw = 16'h000C;
    #10
    sw = 16'h000D;
    #10
    sw = 16'h000E;
    #10
    sw = 16'h000F;
    end
    always
    #5 clk = ~clk;
endmodule
