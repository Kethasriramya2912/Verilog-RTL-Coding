`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 09:53:04 AM
// Design Name: 
// Module Name: L_R_shift_tb
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


module L_R_shift_tb();
reg clk,rst,lr_bar;
reg[3:0]i;
wire[3:0]y;
L_R_shift dut(clk,rst,i,y);
always #5 clk=~clk;
initial clk=5;
initial begin
rst=1;
#10;
rst=0;
lr_bar=0;
i=4'b0100;
#10;
$display("clk=%d,rst=%d,lr_bar=%d,i=%d,y=%d",clk,rst,lr_bar,i,y);
lr_bar=1;
i=4'b0100;
#10;
$display("clk=%d,rst=%d,lr_bar=%d,i=%d,y=%d",clk,rst,lr_bar,i,y);
end
initial begin
#200;
$finish();
end
endmodule
