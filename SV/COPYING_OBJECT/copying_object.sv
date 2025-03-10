`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 02:25:03 PM
// Design Name: 
// Module Name: copying_object
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
endclass
module tb;
first f1;
first p1;
initial begin
f1=new();
f1.data=20;
p1=new f1;
$display("value of data:%d",f1.data);
$display("value of data:%d",p1.data);
end
endmodule
