`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 02:33:15 PM
// Design Name: 
// Module Name: custom_copy_method
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
int data=30;
bit[7:0]temp=8'h11;
function first copy();
copy=new();
copy.data=data;
copy.temp=temp;
endfunction
endclass
module tb;
first f1;
first f2;
initial begin
f1=new();
f2=new();
f2=f1.copy;
$display("data=%d,temp:%0x",f2.data,f2.temp);
end
endmodule
