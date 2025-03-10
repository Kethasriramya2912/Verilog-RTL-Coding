`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 11:17:39 AM
// Design Name: 
// Module Name: sv_7
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


module sv_7();
int arr1[];
initial begin
arr1=new[5];
for (int i=0;i<5;i++)
begin
arr1[i]=5*i;
end
arr1=new[30](arr1);
$display("arr:%p",arr);
end
endmodule
