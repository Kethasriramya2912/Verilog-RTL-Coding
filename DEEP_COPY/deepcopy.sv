`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 03:06:49 PM
// Design Name: 
// Module Name: deepcopy
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
int data=10;
function first copy();
copy=new();
copy.data=data;
endfunction
endclass
class second;
int ds=15;
first f1;
function new();
f1=new();
endfunction
function second copy();
copy=new();
copy.ds=ds;
endfunction
endclass
module tb;
second s1,s2;
initial begin
s1=new();
s2=new();
s1.ds=40;
s2=s1.copy();
$display("value of s2",s2.ds);
s2.ds=78;
$display("value of s1:%0d",s1.ds);
s2.f1.data=90;
$display("value of s1:%0d",s1.f1.data);
s1.f1.data=80;
$display("value of ds:%0d",s2.f1.data);
end
endmodule
