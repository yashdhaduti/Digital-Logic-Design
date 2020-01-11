`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2019 11:37:51 PM
// Design Name: 
// Module Name: tb_call_system
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


module tb_call_system;

reg clk = 0;
reg call = 0;
reg cancel = 0;
wire light_state;

call_system uut (
    .clk(clk),
    .call(call),
    .cancel(cancel),
    .light_state(light_state)
    );
    
always #5 clk = ~clk;

initial begin
    #20 call = 0; cancel = 0;
    #20 call = 1; cancel = 0;
    #20 call = 0; cancel = 1;
    #20 call = 1; cancel = 1;
    #20 call = 0; cancel = 0;
    #20 call = 1; cancel = 0;
    #20 cancel = 1;
    #20 cancel = 0;
    #20 call = 0; cancel = 1;
    #20 call = 0; cancel = 0;
end

endmodule
