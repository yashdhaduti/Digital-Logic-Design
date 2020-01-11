`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2019 01:00:28 AM
// Design Name: 
// Module Name: edge_detector
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


module edge_detector(
    input clk,
    input signal,
    input reset,
    output reg outedge
    );
    
    wire slow_clk;
    reg [1:0] state;
    reg [1:0] next;
    
    clkdiv c1(.clk(clk), .reset(reset), .clk_out(slow_clk));
    
    always @(*) begin
        case(state)
            2'b00: begin
                outedge = 1'b0;
                if(~signal) next = 2'b00;
                else next = 2'b01;
            end
            2'b01: begin
                outedge = 1'b1;
                next = 2'b10;
            end
            2'b10: begin
                outedge = 1'b0;
                if(signal) next = 2'b10;
                else next = 2'b00;
            end
            default: begin
                outedge = 1'b0;
                next = 2'b00;
                end
        endcase
    end
    
    always @(posedge slow_clk) begin
        if(reset) state <= 2'b00;
        else state <= next;
    end
endmodule
