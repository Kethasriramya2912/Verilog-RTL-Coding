`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 01:27:12 PM
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb();
reg clk,rst,d;
wire q,qbar;
d_ff dut (clk,rst,d,q,qbar);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1;
#10;
rst=0;
d=1'b0;
#10;
$display("d=%b,q=%b,qbar=%b",d,q,qbar);
d=1'b1;
#10;
$display("d=%b,q=%b,qbar=%b",d,q,qbar);
end
initial begin
#200;
$finish();
end
endmodule
