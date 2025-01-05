`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 10:11:26 AM
// Design Name: 
// Module Name: decoder_2x4_tb
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


module decoder_2x4_tb();
reg [1:0]in;
reg en;
wire [3:0]out;
decoder_2x4 dut (in,en,out);
integer i;
initial begin
for(i=0;i<8;i=i+1)
begin
in=$random();
en=1;
#10;
$display("in=%d,en=%d,out=%d",in,en,out);
#10;
end
end
initial begin
#200;
$finish();
end
endmodule
