`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 02:54:44 PM
// Design Name: 
// Module Name: PIPO_tb
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


module PIPO_tb();
reg clk;
reg rst;
reg [3:0]parallel_in;
wire[3:0]parallel_out;
PIPO dut(clk,rst,parallel_in,parallel_out);
initial clk=0;
always #5 clk=~clk;
initial begin
rst=1;
parallel_in=4'b0000;
#10;
rst=0;
#10;
parallel_in=4'b1010;
#10;
parallel_in=4'b0111;
#10;
parallel_in=4'b1111;
#10;
$finish();
end
endmodule
