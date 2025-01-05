`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 08:59:51 PM
// Design Name: 
// Module Name: moore_1010_detector_tb
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


module moore_1010_detector_tb();
reg clk;
reg rst;
reg in;
wire out;
moore_1010_detector dut(clk,rst,in,out);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
in=0;
#10;
rst=0;
#10;
in=1;
#10;
in=0;
#10;
in=1;
#10;
in=0;
#10;
in=1;
#10;
in=0;
#10;
in=1;
#10;
in=0;
#10;
in=1;
#10;
in=1;
#10;
in=0;
#10;
in=1;
#10;
in=0;
#10
$finish();
end
initial begin
$monitor("time:%0t|reset:%b|input:%b|output:%b",$time,rst,in,out);
end
endmodule