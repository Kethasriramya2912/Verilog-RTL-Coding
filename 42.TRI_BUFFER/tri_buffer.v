`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 10:50:08 AM
// Design Name: 
// Module Name: tri_buffer
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


module tri_buffer(
input a,
input en,
output reg y );
always @(*)
begin
if(en)
begin
y=a;
end
else
begin
y=1'bz;
end
end
endmodule
