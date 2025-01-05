`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 10:41:52 PM
// Design Name: 
// Module Name: demux_1x32
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


module demux_1x32(
input i,
input [4:0] sel,
output reg [31:0]y);
always @(*)
begin
y=32'b0;
case(sel)
  5'b00000:y[0]=i;
  5'b00001:y[1]=i;
  5'b00010:y[2]=i;
  5'b00011:y[3]=i;
  5'b00100:y[4]=i;
  5'b00101:y[5]=i;
  5'b00110:y[6]=i;
  5'b00111:y[7]=i;
  5'b01000:y[8]=i;
  5'b01001:y[9]=i;
  5'b01010:y[10]=i;
  5'b01011:y[11]=i;
  5'b01100:y[12]=i;
  5'b01101:y[13]=i;
  5'b01110:y[14]=i;
  5'b01111:y[15]=i;
  5'b10000:y[16]=i;
  5'b10001:y[17]=i;
  5'b10010:y[18]=i;
  
  
  5'b10011:y[19]=i;
  5'b10100:y[20]=i;
  5'b10101:y[21]=i;
  5'b10110:y[22]=i;
  5'b10111:y[23]=i;
  5'b11000:y[24]=i;
  5'b11001:y[25]=i;
  5'b11010:y[26]=i;
  5'b11011:y[27]=i;
  5'b11100:y[28]=i;
  5'b11101:y[29]=i;
  5'b11110:y[30]=i;
  5'b11111:y[31]=i;
  default: y=32'b0;
 endcase
end
endmodule
