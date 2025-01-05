`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 01:21:46 PM
// Design Name: 
// Module Name: d_ff
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


module d_ff(
input clk,rst,d,
output reg  q ,qbar);
always @(posedge clk)
begin
if(rst)
begin
q <=0;
qbar <=1;
end
else begin
case(d)
1'b0:{q,qbar}<={1'b0,1'b1};
1'b1:{q,qbar}<={1'b1,1'b0};
endcase
end
end
endmodule
