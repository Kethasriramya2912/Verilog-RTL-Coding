`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 11:12:34 PM
// Design Name: 
// Module Name: frequency_divider_tb
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


module frequency_divider_tb();
reg clk;
reg rst;
wire clk_out;
frequency_divider dut(clk,rst,clk_out);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
#10;
rst=0;
#100;
$finish();
end
initial begin
$monitor("time=%d, clk=%b ,rst=%b ,clk_out=%b",$time,clk,rst,clk_out);
end
endmodule
