`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 04:00:05 PM
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
input [3:0] a,
input [1:0]sel,
output reg y);
always @(*)
begin
case(sel)
 2'b00:y=a[0];
 2'b10:y=a[1];
 2'b01:y=a[2];
 2'b11:y=a[3];
endcase
end
endmodule
