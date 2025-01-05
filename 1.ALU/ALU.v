`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 06:36:08 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
input a,b,
input en,
input [3:0]opcode,
output reg[31:0]result);
always @(a or b or en or opcode)
begin
if(en==1)
case(opcode)
4'b0000:result=a+b;
4'b0001:result=a-b;
4'b0010:result=a*b;
4'b0011:result=a+1;
4'b0100:result=a-1;
4'b0101:result=a;
4'b0110:result=~(a);
4'b0111:result=a&b;
4'b1000:result=a|b;
4'b1001:result=a^b;
4'b1010:result=~(a&b);
4'b1011:result=~(a|b);
4'b1100:result=~(a^b);
4'b1101:result=a<<b;
4'b1110:result=a>>b;
4'b1111:result=a/b;
default: result=16'hxxxx;
endcase
else
result=16'hzzzz;
end
endmodule

