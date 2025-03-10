`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 12:13:03 PM
// Design Name: 
// Module Name: pass_by_reference
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


module pass_by_reference;
task automatic swap( ref bit[1:0]a, ref bit [1:0]b);
bit[1:0]temp;
temp=a;
a=b;
b=temp;
$display("value of a:%0d and b:%0d",a,b);
endtask
bit[1:0]a;
bit[1:0]b;
initial begin
a=1;
b=2;
swap(a,b);
$display("value of a:%0d and b:%0d",a,b);
end
endmodule
