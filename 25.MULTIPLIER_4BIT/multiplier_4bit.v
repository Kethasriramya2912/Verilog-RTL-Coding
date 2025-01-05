`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 03:15:48 PM
// Design Name: 
// Module Name: multiplier_4bit
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


module multiplier_4bit(
input [3:0]a,
input[3:0]b,
output [7:0]out);
wire [7:0]temp[3:0];
assign temp[0]=a[0]*b;
assign temp[1]=a[1]*b<<1;
assign temp[2]=a[2]*b<<2;
assign temp[3]=a[3]*b<<3;
assign out=temp[0]+temp[1]+temp[2]+temp[3];
endmodule
