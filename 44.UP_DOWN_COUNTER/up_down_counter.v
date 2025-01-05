`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 03:12:43 PM
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(
input clk,rst ,
input up_down,
output reg [3:0]count);
always @(posedge clk or posedge rst)
begin
if(rst)
begin
count<=4'b0000;
end
else if(up_down) begin
count<=count+1;
end
else begin
count<=count-1;
end
end
endmodule

