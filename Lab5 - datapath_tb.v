`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2019 06:00:55 PM
// Design Name: 
// Module Name: datapath_tb
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


module datapath_tb;

    reg select; 
    reg clk; 
    reg load;  
    reg [3:0] A;  
    reg [3:0] B; 
    reg Cin;  
    wire [9:0] S; 
    
    datapath ul ( 
    .select(select),
    .clk(clk), 
    .load(load), 
    .A(A), 
    .B(B), 
    .Cin(Cin), 
    .S(S)
    ); 
    
    initial 
    begin 
    
    select = 0; 
    clk = 1; 
    load = 1; 
    
A = 4'b0000; 
B = 4'b0000; 
Cin = 1'b0; 

#50; 

 load = 1;     
 A = 4'b0001;      
 B = 4'b0101;      
 Cin = 1'b0;            
 
 #50; 
 
  A = 4'b0111;      
  B = 4'b0111;      
  Cin = 1'b0;            
  
  #50; 
  
   A = 4'b1000;      
   B = 4'b0111;      
   Cin = 1'b1;            
   
   #50; 
   
    A = 4'b1100;      
    B = 4'b0100;      
    Cin = 1'b0;            
    
    #50;   
    
    A = 4'b1000; 
    B = 4'b1000;      
    Cin = 1'b1;            
    
    #50; 
    
     A = 4'b1001;      
     B = 4'b1010;      
     Cin = 1'b1;          
     
     #50; 
     
     A = 4'b1111;      
     B = 4'b1111;      
     Cin = 1'b0;            
     
     select = 1; //CHANGED SELECT LINE
     
     #50; 
     
     A = 4'b0000; 
    B = 4'b0000; 
Cin = 1'b0; 

#50; 

 load = 1;     
 A = 4'b0001;      
 B = 4'b0101;      
 Cin = 1'b0;            
 
 #50; 
 
  A = 4'b0111;      
  B = 4'b0111;      
  Cin = 1'b0;            
  
  #50; 
  
  A = 4'b1000;      
  B = 4'b0111;      
   Cin = 1'b1;            
   
   #50; 
   
    A = 4'b1100;      
    B = 4'b0100;      
    Cin = 1'b0;            
    
    #50;   
    
    A = 4'b1000; 
    B = 4'b1000;      
    Cin = 1'b1;            
    
    #50; 
    
     A = 4'b1001;      
     B = 4'b1010;      
     Cin = 1'b1;          
     
     #50; 
     
     A = 4'b1111;      
     B = 4'b1111;      
     Cin = 1'b0; 
     
     end
     
    always 
        #5 clk = ~clk;   
    
endmodule

