`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 09:09:59 AM
// Design Name: 
// Module Name: sv_1
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


module sv_1();
reg clk;
reg rst;
reg clk50;
reg clk25;
initial begin
clk=1'b0;
rst=1'b0;
clk25=1'b0;
clk50=1'b0;
end
always #5 clk=~clk;
always begin
#5;
clk50=1;
#10;
clk50=0;
end
always begin
#5;
clk25=1;
#20;
clk25=0;
#15;
end
initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
initial begin
#200;
$finish();
end
endmodule

