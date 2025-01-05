`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 11:38:45 AM
// Design Name: 
// Module Name: cmos_inv
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


module cmos_inv(
input [1:0]a,
output y);
supply1 pow;
supply0 gnd;
pmos(y,pow,a);
nmos(y,gnd,a);
endmodule
