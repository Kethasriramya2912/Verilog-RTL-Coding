`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 11:22:29 AM
// Design Name: 
// Module Name: johnson
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


module johnson(
input clk,rst,
output [3:0]count);
reg [3:0]q;
always @(posedge clk or posedge rst)
begin
if(rst)
q<=4'b0000;
else
begin
q[3]<=~q[0];
q[2]<=q[3];
q[1]<=q[2];
q[0]<=q[1];
end
end
assign count=q;
endmodule
