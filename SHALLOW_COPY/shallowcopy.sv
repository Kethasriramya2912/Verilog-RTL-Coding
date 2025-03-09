`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 02:52:31 PM
// Design Name: 
// Module Name: shallowcopy
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
int data=12;
endclass
class second;
int ds=34;
first f1;
function new();
f1=new();
endfunction
endclass
module tb;
second s1,s2;
initial begin
s1=new();
s1.ds=45;
s2 = new s1;
$display("value of ds:%0d",s2.ds);
s2.ds=78;
$display("value of ds:%0d",s1.ds);
$display("value of ds:%0d",s2.ds);
s2.f1.data=56;
$display("value of data:%0d",s1.f1.data);
end
endmodule
