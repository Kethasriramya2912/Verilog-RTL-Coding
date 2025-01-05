`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 09:56:47 AM
// Design Name: 
// Module Name: Nbit_comparator_tb
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


module Nbit_comparator_tb #(parameter N=8)();
reg [N-1:0]a,b;
wire a_greater,a_equal,a_lesser;
Nbit_comparator dut(a,b,a_greater,a_equal,a_lesser);
integer i;
initial begin
for(i=0;i<8;i=i+1)
begin
a=$random();
b=$random();
#10;
$display("a=%d,b=%d,a_greater=%d,a_equal=%d,a_lesser=%d",a,b,a_greater,a_equal,a_lesser);
#10;
end
end
initial begin
#200;
$finish();
end
endmodule
