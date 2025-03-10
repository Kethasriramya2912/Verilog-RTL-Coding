`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 03:18:37 PM
// Design Name: 
// Module Name: super_keyword
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
int data;
function new(input int data);
this.data=data;
endfunction
endclass
class second extends first;
int temp;
function new(int data,int temp);
super.new(data);
this.temp=temp;
endfunction
endclass
module tb;
second s;
initial begin
s=new(10,20);
$display("value of data:%d,temp:%d",s.data,s.temp);
end
endmodule
