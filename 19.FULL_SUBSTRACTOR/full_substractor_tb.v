`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 11:33:09 AM
// Design Name: 
// Module Name: full_substractor_tb
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


module full_substractor_tb();
reg a,b,c;
wire diff,barrow;
full_substractor dut(a,b,c,diff,barrow);
integer i;
initial begin 
for(i=0;i<8;i=i+1)
begin
a=$random();
b=$random();
c=$random();
#10;
$display("a=%b,b=%b,c=%b,diff=%b,barrow=%b",a,b,c,diff,barrow);
#10;
end
end
initial begin
#200;
$finish();
end
endmodule
