`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 03:27:36 PM
// Design Name: 
// Module Name: moore_1010_detector
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


module moore_1010_detector(
input clk,
input rst,
input in,
output reg out);
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
reg [2:0]state,next_state;
always @(posedge clk or posedge rst)
begin
if(rst)
state<=s0;
else 
state<=next_state;
end
always @(state or in) 
begin
case(state)
s0:next_state=in?s1:s0;
s1:next_state=in?s1:s2;
s2:next_state=in?s3:s0;
s3:next_state=in?s1:s4;
s4:next_state=in?s1:s0;
default:next_state=s0;
endcase
end
always @(state)
begin
out=(state==s4);
end
endmodule
