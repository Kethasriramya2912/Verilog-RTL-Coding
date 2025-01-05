`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 02:25:35 PM
// Design Name: 
// Module Name: PISO
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


module PISO(
input clk,rst,
input load,
input [3:0]parallel_in,
output reg serial_out);
reg [3:0]shift_reg;
always @(posedge clk or posedge rst)
begin
if(rst)
begin
shift_reg<=4'b0000;
serial_out<=0;
end
else if(load)
begin
shift_reg<=parallel_in;
end
else begin
serial_out<=shift_reg[3];
shift_reg[3]<=shift_reg[2];
shift_reg[2]<=shift_reg[1];
shift_reg[1]<=shift_reg[0];
shift_reg[0]<=1'b0;
end
end
endmodule

