`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 10:06:10 AM
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4(
input [1:0]in,
input en,
output reg [3:0] out);
always @(*)
begin
if(en)
begin
case(in)
2'b00:out=4'b0001;
2'b01:out=4'b0010;
2'b10:out=4'b0100;
2'b11:out=4'b1000;
default:out=4'b0000;
endcase
end
end
endmodule
