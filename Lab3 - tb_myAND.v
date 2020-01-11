`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 03:28:33 PM
// Design Name: 
// Module Name: tb_myAND
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


module tb_myAND;

    reg a;
    reg b;
    
    wire out;
     myAND and_gate0 (
        .a(a),
        .b(b),
        .out(out)
     );
     
     initial 
        begin
            
            a=1'b0;
            b=1'b0;
            
            #50;
            
            a=1'b0;
            b=1'b1;
            
            #50;
            a=1'b1;
            b=1'b0;
            
            #50;
            a=1'b1;
            b=1'b1;
            
        end
endmodule
