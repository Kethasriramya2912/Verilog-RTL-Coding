`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 03:02:01 PM
// Design Name: 
// Module Name: bi_dir_shift_reg
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


module bi_dir_shift_reg(
input clk,
input rst,
input shift_left,
input serial_in,
output reg[3:0]data_out);
always @(posedge clk or posedge rst)
begin
if(rst)
data_out<=4'b0000;
else if (shift_left)
data_out<={data_out[2:0],serial_in};
else
data_out<={serial_in,data_out[3:1]};
end
endmodule
