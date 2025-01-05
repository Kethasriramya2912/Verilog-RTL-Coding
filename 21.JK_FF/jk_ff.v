`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 01:08:07 PM
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
input clk,rst,j,k,
output reg q,qbar);
always @(posedge clk)
begin
if(rst)
begin
q<=0;
qbar<=1;
end
else begin
case({j,k})
2'b00:{q,qbar}<={q,qbar};
2'b01:{q,qbar}<={1'b0,1'b1};
2'b10:{q,qbar}<={1'b1,1'b0};
2'b11:{q,qbar}<={qbar,q};
endcase
end
end
endmodule
