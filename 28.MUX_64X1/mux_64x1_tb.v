`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 09:21:32 PM
// Design Name: 
// Module Name: mux_64x1_tb
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


module mux_64x1_tb#(parameter k=64);
reg [k-1:0]a;
reg [5:0]sel;
wire y;
mux_64x1 dut(a,sel,y);
initial begin
for(integer i=0;i<k;i=i+1)
begin
a=$random();
sel=$random();
#10;
$display("a=%b;sel=%d;y=%d",a,sel,y);
#10;
end
end
initial begin
#200;
$finish();
end
endmodule
