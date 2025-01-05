`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 11:00:12 AM
// Design Name: 
// Module Name: clk_div_tb
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


module clk_div_tb();
reg clk;
reg rst;
reg en;
wire divby_2,divby_4,divby_8,divby_16;
clk_div dut(clk,rst,en,divby_2,divby_4,divby_8,divby_16);
initial clk=0;
always #5 clk=~clk;
initial begin 
#200;
$finish();
end
initial  begin
en=0;rst=1;
#5;
rst=0;en=1;
end
endmodule
