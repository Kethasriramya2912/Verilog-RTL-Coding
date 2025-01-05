`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 05:00:40 PM
// Design Name: 
// Module Name: mux_8x1_tb
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


module mux_8x1_tb();
reg [7:0] in;
reg [2:0]sel;
wire out;
mux_8x1 dut (in,sel,out);
integer i;
initial begin
for(i=0;i<20;i=i+1)
begin
 in=$random();
 sel=$random();
 #10;
 $display("in=%b;sel=%b,out=%d",in,sel,out);
 #10;
 end
 end
 initial begin
 #300;
 $finish();
 end
 endmodule
