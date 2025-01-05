`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 09:49:40 AM
// Design Name: 
// Module Name: L_R_shift
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


module L_R_shift(
input clk,rst,lr_bar,
input[3:0]i,
output reg[3:0]y);
always @(posedge clk)
begin
if(rst)
y<=4'b0000;
else
begin
if(lr_bar)
y<=(i<<1);
else
y<=(i>>1);
end
end
endmodule
