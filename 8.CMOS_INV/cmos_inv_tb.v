`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 11:40:49 AM
// Design Name: 
// Module Name: cmos_inv_tb
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


module cmos_inv_tb();
reg a;
wire y;
cmos_inv dut(a,y);
initial begin
a=1'b1;
#10;
$display("a=%b,y=%b",a,y);
a=1'b0;
#10;
$display("a=%b,y=%b",a,y);
#20;
end
initial begin
#200;
$finish();
end
endmodule
