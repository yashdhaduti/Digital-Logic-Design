`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2019 11:53:22 PM
// Design Name: 
// Module Name: call_system_2
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


module call_system_2(
    input clk,
    input call,
    input cancel,
    output reg light_state
    );
    
    wire next_state;
    initial light_state = 0;
    
    assign next_state = call | (~cancel & light_state);
    
    
    
    always @(posedge clk) begin
        light_state <= next_state;
    end
endmodule
