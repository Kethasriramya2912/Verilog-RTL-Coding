`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 10:13:32 PM
// Design Name: 
// Module Name: demux_1x8_tb
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


module demux_1x8_tb();
reg i;
reg [2:0] sel;
wire [7:0]y;
demux_1x8 dut(i,sel,y);
integer k;
initial begin
for(k=0;k<18;k=k+1)
begin
i=$random();
sel=$random();
#10;
$display("i=%d,sel=%d,y=%d",i,sel,y);
end
end
initial begin
#200;
$finish();
end
endmodule
