`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 10:22:43 AM
// Design Name: 
// Module Name: parity_bit_generator
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


module parity_bit_generator(
input data_in,
input en,
output reg parity_bit);
wire w1,w2;
assign w1=^(data_in);
assign w2=~(^data_in);
always @(*)
begin
if(en)
begin
parity_bit=~w1;
end
else
begin
parity_bit=~w2;
end
end
endmodule
