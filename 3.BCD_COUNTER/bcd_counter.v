`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 12:06:24 PM
// Design Name: 
// Module Name: bcd_counter
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


module bcd_counter(
input clk,rst,
output reg [3:0]count);
always @(posedge clk or posedge rst)
begin
if(rst)
begin
count<=4'b0000;
end
else if (count==4'b1001)
begin
count<=4'b0000;
end
else
begin
count<=count+1;
end
end
endmodule
