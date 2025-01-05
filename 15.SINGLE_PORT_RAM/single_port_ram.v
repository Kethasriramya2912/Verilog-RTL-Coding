`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 09:28:22 PM
// Design Name: 
// Module Name: single_port_ram
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


module single_port_ram #(
parameter DATA_WIDTH=8,
parameter ADDR_WIDTH=4
)(
input clk,
input we,
input[ADDR_WIDTH-1:0]addr,
input[DATA_WIDTH-1:0]din,
output reg [DATA_WIDTH-1:0]dout);
reg [DATA_WIDTH-1:0] mem [(2**ADDR_WIDTH)-1:0];
always @(posedge clk) begin
if(we)
mem[addr]<=din;
else
dout<=mem[addr];
end
endmodule
