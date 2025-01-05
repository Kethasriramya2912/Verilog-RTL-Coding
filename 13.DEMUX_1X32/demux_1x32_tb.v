`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 10:42:29 PM
// Design Name: 
// Module Name: demux_1x32_tb
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


module demux_1x32_tb();
reg i;
reg [4:0] sel;
wire [31:0]y;
demux_1x32 dut(i,sel,y);
integer k;
initial begin
for(k=0;k<32;k=k+1)
begin
i=1;
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

