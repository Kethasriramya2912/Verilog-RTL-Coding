`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 02:14:18 PM
// Design Name: 
// Module Name: SIPO
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


module SIPO(
input clk,rst,
input serial_in,
output reg [3:0] parallel_out);
reg [3:0]shift_reg;
always @(posedge clk or posedge rst)
begin
if(rst)
begin
shift_reg<=4'b0000;
parallel_out<=4'b0000;
end
else begin
shift_reg[3]<=serial_in;
shift_reg[2]<=shift_reg[3];
shift_reg[1]<=shift_reg[2];
shift_reg[0]<=shift_reg[1];
parallel_out<=shift_reg;
end
end
endmodule

