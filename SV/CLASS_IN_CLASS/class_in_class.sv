`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 02:18:28 PM
// Design Name: 
// Module Name: class_in_class
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

class first;
int data=20;
endclass
class second;
first f1;
function new();
f1=new();
endfunction
endclass
module tb;
second s1;
initial begin
s1=new();
$display("value of data member:%d",s.f1.data);
end
endmodule
