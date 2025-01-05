`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 10:52:19 AM
// Design Name: 
// Module Name: tri_buffer_tb
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


module tri_buffer_tb();
reg a;
reg en;
wire y;
integer i;
tri_buffer dut(a,en,y);
initial begin
for(i=0;i<8;i=i+1)
begin
a=$random();
en=$random();
#10;
$display("a=%d,en=%d,y=%d",a,en,y);
#10;
end
end
initial begin
#200;
$finish();
end
endmodule
