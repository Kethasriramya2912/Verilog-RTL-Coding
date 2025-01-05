`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 12:41:30 PM
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(
input [3:0]a,
input [3:0]b,
input cin,
output [3:0]sum,
output cout);
wire w1,w2,w3;
assign { w1,sum[0]}=a[0]+b[0]+cin;
assign { w2,sum[1]}=a[1]+b[1]+w1;
assign { w3,sum[2]}=a[2]+b[2]+w2;
assign { cout,sum[3]}=a[3]+b[3]+w3;
endmodule
