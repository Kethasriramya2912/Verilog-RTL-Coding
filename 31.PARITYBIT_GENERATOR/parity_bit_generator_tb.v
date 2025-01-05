`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 10:26:33 AM
// Design Name: 
// Module Name: parity_bit_generator_tb
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


module parity_bit_generator_tb();
reg data_in;
reg en;
wire parity_bit;
parity_bit_generator dut(data_in,en,parity_bit);
initial begin
for(integer i=0;i<15;i=i+1)
begin
data_in=$random();
en=$random();
#10;
$display("data_in=%b,en=%b,parity_bit=%b",data_in,en,parity_bit);
end
end
initial begin
#200;
$finish();
end
endmodule
