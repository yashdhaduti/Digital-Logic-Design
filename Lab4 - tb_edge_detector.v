`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2019 01:23:35 AM
// Design Name: 
// Module Name: tb_edge_detector
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


module tb_edge_detector;
    reg clk;
    reg signal;
    reg reset;
    
    wire outedge;
    
    edge_detector uut(
        .clk(clk),
        .signal(signal),
        .reset(reset),
        .outedge(outedge)
    );
    
    initial
    begin
    
    clk = 0;
    signal = 0;
    reset = 1;
    
    #50
    signal = 0;
    reset = 0;
    
    #50
    signal = 1;
    reset = 0;
    
    #50
    signal = 1;
    reset = 0;
    
    #50
    signal = 0;
    reset = 0;
    
    #100 
    signal = 1;
    reset = 0;
    
    #50
    signal = 1;
    reset = 1;
    
    #50
    signal = 1;
    reset = 0;
    
    #50
    signal = 0;
    reset = 0;
    
    end
    
    always 
    #5 clk=~clk;
    
endmodule
