`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 03:05:33 PM
// Design Name: 
// Module Name: down_counter_tb
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


module down_counter_tb();
reg clk,rst;
wire [5:0]count;
integer i;
down_counter dut(clk,rst,count);
initial clk=0;
always #5 clk=~clk;
initial begin
rst=1;
#10;
rst=0;
end
initial begin
for(i=0;i<63;i=i+1) begin
#10;
$display("time=%0t,clk=%d,rst=%d,count=%d",$time,clk,rst,count);
end
#10;
$finish();
end
endmodule
