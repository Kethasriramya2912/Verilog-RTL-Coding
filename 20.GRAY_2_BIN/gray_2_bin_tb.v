`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 11:20:35 AM
// Design Name: 
// Module Name: gray_2_bin_tb
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


module gray_2_bin_tb();
reg [4:0]g;
wire [4:0]b;
gray_2_bin dut(g,b);
integer i;
initial begin
for(i=0;i<10;i=i+1)
begin
g=$random();
#10;
$display("g=%b,b=%b",g,b);
#10;
end
end
initial begin
#200;
$finish();
end
endmodule
