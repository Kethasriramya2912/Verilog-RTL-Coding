`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 04:11:46 PM
// Design Name: 
// Module Name: mux_4x1_tb
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


module mux_4x1_tb();
 reg [3:0]a;
 reg [1:0]sel;
 wire y;
 mux_4x1 dut(.a(a),.s(sel),.y(y));
 integer i;
 initial begin
 for(i=0;i<15;i=i+1)
 begin
 a=$random();
 sel=$random();
 #10;
 $display("a=%b,sel=%b,y=%d",a,sel,y);
 end
 end
 endmodule

