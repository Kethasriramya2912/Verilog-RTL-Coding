`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 11:51:13 AM
// Design Name: 
// Module Name: sr_ff_tb
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


module sr_ff_tb();
reg clk,rst,s,r;
wire q,qbar;
sr_ff dut(clk,rst,s,r,q,qbar);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1;
#10;
rst=0;
{s,r}=2'b00;
#10;
$display("s=%b,r=%b,q=%b,qbar=%b",s,r,q,qbar);
{s,r}=2'b01;
#10;
$display("s=%b,r=%b,q=%b,qbar=%b",s,r,q,qbar);
{s,r}=2'b10;
#10;
$display("s=%b,r=%b,q=%b,qbar=%b",s,r,q,qbar);
{s,r}=2'b11;
#10;
$display("s=%b,r=%b,q=%b,qbar=%b",s,r,q,qbar);
end
initial begin
#200;
$finish();
end
endmodule
