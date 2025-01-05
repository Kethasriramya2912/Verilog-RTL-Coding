`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 02:02:20 PM
// Design Name: 
// Module Name: RAM_32bit_tb
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


module RAM_32bit_tb();
reg clk,rst,wr,rd;
reg [31:0]data_in;
reg [4:0]addr;
wire [31:0]data_out;
RAM_32bit dut(clk,rst,wr,rd,data_in,addr,data_out);
integer i;
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1;
#10;
rst=0;
for(i=0;i<15;i=i+1)
begin
wr=1'b1;
data_in=$random();
addr=$random();
#10;
$display("wr=%b,data_in=%d,addr=%d",wr,data_in,addr);
#10;
rd=1'b1;
#10;
$display("rd=%b,data_in=%b,addr=%d",wr,data_in,addr);
end
end
initial begin
#200;
$finish();
end
endmodule
