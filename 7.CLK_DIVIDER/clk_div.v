`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 10:34:42 AM
// Design Name: 
// Module Name: clk_div
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


module clk_div(
input clk,rst,en,
output reg divby_2,divby_4,divby_8,divby_16);
reg [3:0]count;
always @(posedge clk or posedge rst)
begin
if(rst==1)
count<=4'b0000;
else
if(en==1)
count=count+1;

divby_2<=count[0];
divby_4<=count[1];
divby_8<=count[2];
divby_16<=count[3];
end
endmodule
