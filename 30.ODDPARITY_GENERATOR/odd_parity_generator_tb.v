`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 11:46:40 AM
// Design Name: 
// Module Name: odd_parity_generator_tb
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


module odd_parity_generator_tb();
reg [3:0]a;
reg clk;
wire y;
odd_parity_generator dut(a,y);
initial clk=0;
always #5 clk=~clk;
initial begin
a=4'b0000;
end
always @(posedge clk)
begin
if(a==4'b1111)
begin
$finish();
end
else
begin
a=a+1;
end
end
endmodule
