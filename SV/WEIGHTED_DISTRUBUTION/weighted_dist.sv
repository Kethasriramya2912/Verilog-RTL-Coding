`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 04:31:41 PM
// Design Name: 
// Module Name: weighted_dist
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

class first;
rand bit wr;
rand bit rd;
constraint cntrl{ wr dist{0:=30,1:=70};
                   rd dist{0:/30,1:/70};
                   }
 endclass
 module tb;
 first f;
 initial begin
 f=new();
 for(int i=0;i<10;i++)
 begin
 f.randomize();
 $display("value of wr:%d and rd:%d",f.wr,f.rd);
 end
 end
endmodule
