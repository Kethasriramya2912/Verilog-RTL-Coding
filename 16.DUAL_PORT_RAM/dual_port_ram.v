`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 10:06:23 PM
// Design Name: 
// Module Name: dual_port_ram
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


module dual_port_ram #(
parameter DATA_WIDTH=8,
parameter ADDR_WIDTH=4)
(
input clk,
input we1,
input[ADDR_WIDTH-1:0]addr1,
input[DATA_WIDTH-1:0]din1,
output reg [DATA_WIDTH-1:0]dout1,
input we2,
input[ADDR_WIDTH-1:0]addr2,
input[DATA_WIDTH-1:0]din2,
output reg [DATA_WIDTH-1:0]dout2);
reg [DATA_WIDTH-1:0] mem [(2**ADDR_WIDTH)-1:0];
always @ (posedge clk)
begin
if(we1)
mem[addr1]<=din1;
else
dout1<=mem[addr1];
if(we2)
mem[addr2]<=din2;
else
dout2<=mem[addr2];
end
endmodule
