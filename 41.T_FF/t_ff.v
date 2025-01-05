`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 01:33:05 PM
// Design Name: 
// Module Name: t_ff
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


module t_ff(
input clk,rst,t,
output reg q,
output qbar);
always @(posedge clk or posedge rst)
begin
if(rst)
begin
q<=0;
end
else
begin
case(t)
1'b0:q<=q;
1'b1:q<=~q;
endcase
end
end
assign qbar  =~q;
endmodule
