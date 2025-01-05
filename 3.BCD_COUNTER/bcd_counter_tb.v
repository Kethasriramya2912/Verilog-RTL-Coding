`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 12:11:41 PM
// Design Name: 
// Module Name: bcd_counter_tb
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


module bcd_counter_tb();
reg clk,rst;
wire [3:0]count;
bcd_counter dut(clk,rst,count);
initial clk=0;
always #5 clk=~clk;
initial begin 
rst=1;
#10;
rst=0;
#200;
$finish();
end
endmodule

