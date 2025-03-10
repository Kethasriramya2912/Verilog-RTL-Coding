`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 10:57:03 AM
// Design Name: 
// Module Name: sv_5
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


module sv_5();
bit arr1[8];
bit arr2 [] ={0,1,1,1};
initial begin
$display("size of arr1:%d",$sizeof(arr1));
$display("size of arr2:%d",$sizeof(arr2));
$display("value of first element:%d",arr1[0]);
arr1[1] = 1;
$display("value of first element :%d",arr1[1]);
$display("value of all elemnts of arr2: %0p",arr2);
end
endmodule
