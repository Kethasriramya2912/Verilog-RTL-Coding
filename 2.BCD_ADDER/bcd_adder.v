`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 03:10:22 PM
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(
input [3:0] a,b,
input cin,
output reg [7:0]sum,
output reg cout);
reg [7:0] temp_sum;
always@(*)
begin
 temp_sum=a+b+cin;
   if(temp_sum>9)
   begin
   temp_sum=temp_sum+4'b0110;
   cout=1;
   sum=temp_sum[7:0];
   end
   else begin
   cout=0;
   sum=temp_sum[7:0];
   end
  end
endmodule
