`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2019 07:17:13 PM
// Design Name: 
// Module Name: clkdiv2
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


module clkdiv2(
    input clk,
    input reset,
    output clk_out
);
    reg [15:0] count;
    assign clk_out = count[15];
    always @(posedge clk)
        begin
        if (reset)
        count = 0;
        else
        count = count + 1;
    end
endmodule
