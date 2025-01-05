`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 08:58:07 PM
// Design Name: 
// Module Name: mux_64x1
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


module mux_64x1#(parameter k=64)(
input [k-1:0]a,
input [5:0] sel,
output reg y);
always @(*)
begin
for(integer i=0;i<k;i=i+1)
begin
case(sel)
i: y= a[i];
endcase
end
end
endmodule
