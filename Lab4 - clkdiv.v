`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2019 12:44:11 AM
// Design Name: 
// Module Name: clkdiv
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


module clkdiv(
    input clk,
    input reset,
    output reg clk_out
    );
    
    reg [24:0] count = 0;   //26 for board?
        //assign clk_out = count[15];
    initial clk_out = 0;
    
    always @(posedge clk) begin
        if(reset) count = 0;
        else count = count+1;
        
        if(count == 20000000) clk_out = ~clk_out;
    end
endmodule
