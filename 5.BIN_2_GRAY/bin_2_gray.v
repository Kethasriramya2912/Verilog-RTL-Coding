`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 10:58:44 AM
// Design Name: 
// Module Name: bin_2_gray
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


module bin_2_gray(
input [4:0]a,
output [4:0]b );
assign b[4]=a[4];
assign b[3]=a[4]^a[3];
assign b[2]=a[3]^a[2];
assign b[1]=a[2]^a[1];
assign b[0]=a[1]^a[0];
endmodule
