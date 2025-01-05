`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 10:44:31 AM
// Design Name: 
// Module Name: p_encoder_tb
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


module p_encoder_tb();
reg [7:0]a;
wire[2:0] out;
p_encoder dut(a,out);
integer i;
initial begin
for(i=0;i<8;i=i+1)
begin
a=$random();
#10;
$display("a=%b,out=%d",a,out);
#10;
end
end
initial begin
#200;
$finish();
end
endmodule
