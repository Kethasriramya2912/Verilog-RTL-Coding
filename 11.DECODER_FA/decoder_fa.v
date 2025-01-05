`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 10:23:18 AM
// Design Name: 
// Module Name: decoder_fa
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

module decoder_3x8(
input [2:0]in,
output reg [7:0]out);
always @(*)
begin
case(in)
  3'b000:out=8'd1;
  3'b001:out=8'd2;
  3'b010:out=8'd4;
  3'b011:out=8'd8;
  3'b100:out=8'd16;
  3'b101:out=8'd32;
  3'b110:out=8'd64;
  3'b111:out=8'd128;
  default:out=8'd0;
  endcase
  end
  endmodule
module decoder_fa(
input [2:0]in,
output sum,carry);
wire[7:0]out;
decoder_3x8 M1(in,out);
assign sum=out[1]|out[2]|out[4]|out[7];
assign carry=out[3]|out[5]|out[6]|out[7];
endmodule
