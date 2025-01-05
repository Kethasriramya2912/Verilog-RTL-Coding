`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 11:13:20 AM
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb();
reg clk,rst;
wire [3:0]q;
ring_counter dut (clk,rst,q);
initial clk=0;
always #5 clk=~clk;
initial begin
rst=1;
#10;
rst=0;
#10;
#200;
end
initial begin
#200;
$finish();
end
endmodule
