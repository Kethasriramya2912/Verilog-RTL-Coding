`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 10:31:01 AM
// Design Name: 
// Module Name: decoder_fa_tb
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


module decoder_fa_tb();
reg [2:0]in;
wire sum,carry;
decoder_fa dut(in,sum,carry);
integer i;
initial begin
for(i=0;i<8;i=i+1)
begin
in=i;
#10;
$display("in=%d,sum%d,carry=%d",in,sum,carry);
#10;
end
end
initial begin
#200;
$finish();
end
endmodule
