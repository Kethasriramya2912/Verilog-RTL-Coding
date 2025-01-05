`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 02:51:57 PM
// Design Name: 
// Module Name: PIPO
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


module PIPO(
input clk,
input rst,
input[3:0] parallel_in,
output reg [3:0]parallel_out );
always @(posedge clk or posedge rst)
begin
if(rst)
parallel_out<=4'b0000;
else
parallel_out<=parallel_in;
end
endmodule
