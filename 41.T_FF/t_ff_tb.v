`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 01:39:07 PM
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb();
reg clk,rst,t;
wire q,qbar;
t_ff dut (clk,rst,t,q,qbar);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1;
#10;
rst=0;
t=1'b0;
#10;
$display("t=%b,q=%b,qbar=%b",t,q,qbar);
t=1'b1;
#10;
$display("t=%b,q=%b,qbar=%b",t,q,qbar);
end
initial begin
#200;
$finish();
end
endmodule

