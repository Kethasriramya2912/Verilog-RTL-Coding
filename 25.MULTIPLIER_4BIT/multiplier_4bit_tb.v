`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 03:21:11 PM
// Design Name: 
// Module Name: multiplier_4bit_tb
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


module multiplier_4bit_tb();
reg [3:0]a,b;
wire[7:0]out;
multiplier_4bit dut(a,b,out);
initial begin
a=4'd5;
b=4'd6;
#10;
a=4'd12;
b=4'd9;
#10;
a=4'd15;
b=4'd15;
#10;
$finish;
end
endmodule
