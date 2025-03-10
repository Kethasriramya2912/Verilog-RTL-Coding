`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 11:53:33 AM
// Design Name: 
// Module Name: queue
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


module queue();
int arr[$];
initial begin
arr={1,2,3};
$display("arr:%0p",arr);
arr.push_front(7);
$display("arr:%0p",arr);
arr.push_back(9);
$display("arr:%0p",arr);
arr.insert(2,10);
$display("arr:%0p",arr);
arr.pop_front();
$display("arr:%0p",arr);
//$display("value of j:%0p",j);
arr.pop_back();
$display("arr:%0p",arr);
//$display("value of :%0p",j);
arr.delete(1);
end
endmodule
