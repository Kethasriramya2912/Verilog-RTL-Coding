`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 02:07:04 PM
// Design Name: 
// Module Name: task_in_classs
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
int data1;
bit[7:0]data2;
shortint data3;
function new(input int data1=0,input bit[7:0] data2=8'h0,input shortint data3=0);
this.data1=data1;
this.data2=data2;
this.data3=data3;
endfunction
task display();
$display("value of data2:%d,data3=%d,data1=%d",data2,data3,data1);
endtask
endclass
module tb;
first f1;
initial begin
f1=new(.data2(3),.data3(5),.data1(24));
f1.display();
end
endmodule
