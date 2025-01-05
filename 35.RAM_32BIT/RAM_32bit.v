`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 01:54:42 PM
// Design Name: 
// Module Name: RAM_32bit
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


module RAM_32bit(
input clk,rst,wr,rd,
input[31:0] data_in,
input[4:0]addr,
output [31:0]data_out);
reg [31:0]ram[0:31];
always @(posedge clk)
begin 
if(rst)
begin
ram[addr]<=32'b0;
end
else
begin
if(wr)
ram[addr]<=data_in;
end
end
assign data_out=rd?ram[addr] : 32'bz;
endmodule

