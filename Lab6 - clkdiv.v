`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2019 05:19:46 PM
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
    reg [25:0] count;
    always @(posedge clk)
        begin
        if (count == 499999) begin //10 ms divide by 2 for two toggle pers sec
            clk_out = ~clk_out;
            count = 0;
        end
        else begin
            count = count + 1;
        end
    end
endmodule

