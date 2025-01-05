`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 01:55:54 PM
// Design Name: 
// Module Name: SISO
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


module SISO(
input clk,rst,
input serial_in,
output reg serial_out);
reg [3:0]shift_reg;
always @(posedge clk or posedge rst)
begin
if(rst)
begin
shift_reg<=4'b0000;
serial_out<=0;
end
else begin
shift_reg[3]<=shift_reg[2];
shift_reg[2]<=shift_reg[1];
shift_reg[1]<=shift_reg[0];
shift_reg[0]<=serial_in;
serial_out<=shift_reg[3];
end
end
endmodule
