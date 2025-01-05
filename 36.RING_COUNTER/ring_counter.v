`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 11:09:35 AM
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(
input clk,rst,
output reg [3:0]q);
always @(posedge clk or posedge rst)
begin
if(rst)
q<=4'b1000;
else
begin
q[3]<=q[2];
q[2]<=q[1];
q[1]<=q[0];
q[0]<=q[3];
end
end
endmodule
