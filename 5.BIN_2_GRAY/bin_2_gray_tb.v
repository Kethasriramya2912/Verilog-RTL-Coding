`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 11:02:59 AM
// Design Name: 
// Module Name: bin_2_gray_tb
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


module bin_2_gray_tb();
reg [4:0]a;
wire [4:0]b;
bin_2_gray dut(a,b);
integer i;
initial begin
for(i=0;i<10;i=i+1)
begin
a=$random();
#10;
$display("a=%d,b=%d",a,b);
#10;
end
end
initial begin
#200;
$finish();
end
endmodule
