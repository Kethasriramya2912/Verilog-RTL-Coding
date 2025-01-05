`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 03:22:49 PM
// Design Name: 
// Module Name: up_down_counter_tb
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


module up_down_counter_tb();
reg clk,rst;
reg up_down;
wire [3:0]count;
integer i;
up_down_counter dut(clk,rst,up_down,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
#10;
$display("clk=%d,rst=%d,up_down=%d,count=%d",clk,rst,up_down,count);
for(i=0;i<16;i=i+1)
begin
rst=0;
#10;
up_down=1;
#10;
$display("clk=%d,rst=%d,up_down=%d,count=%d",clk,rst,up_down,count);
end
end
initial begin
#200;
$finish();
end
endmodule
