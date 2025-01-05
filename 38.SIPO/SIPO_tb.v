`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 02:14:46 PM
// Design Name: 
// Module Name: SIPO_tb
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


module SIPO_tb();
reg clk,rst;
reg serial_in;
wire [3:0]parallel_out;
SIPO dut(clk,rst,serial_in,parallel_out);
initial clk=0;
always #5 clk=~clk;
initial begin
rst=1;
serial_in=0;
#10;
rst=0;
#10;
serial_in=1;
#10;
serial_in=0;
#10;
serial_in=1;
#10;
serial_in=1;
#10;
serial_in=0;
#10;

#50;
rst=1;
#10;
rst=0;
#10;
$finish();
end
endmodule
