`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 03:27:36 PM
// Design Name: 
// Module Name: check_randomization
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
class generator;
randc bit[3:0]a,b;
bit [3:0] y;
endclass
module tb;
generator g;
int i=0;
int status=0;
initial begin
g=new();
for(i=0;i<10;i++)
begin
status=g.randomize();
$display("value of a:%d,b:%d, with status :%d",g.a,g.b,status);
end
end
endmodule
