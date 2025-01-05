`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 09:51:08 AM
// Design Name: 
// Module Name: Nbit_comparator
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


module Nbit_comparator#(parameter N=8)(
input [N-1:0]a,b,
output reg a_greater,a_equal,a_lesser);
always @(*)
begin
if(a>b)
begin
a_greater=1;
a_equal=0;
a_lesser=0;
end
else if(a<b)
begin
a_greater=0;
a_equal=0;
a_lesser=1;
end
else
begin
a_greater=0;
a_equal=1;
a_lesser=0;
end
end
endmodule
