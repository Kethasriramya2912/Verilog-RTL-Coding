`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 11:45:45 AM
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
input clk,rst,s,r,
output reg q,qbar);
always @(posedge clk)
begin
if(rst)
begin
q<=0;
qbar<=1;
end
else begin
case({s,r})
2'b00:{q,qbar}<={q,qbar};
2'b01:{q,qbar}<={1'b0,1'b1};
2'b10:{q,qbar}<={1'b1,1'b0};
2'b11:{q,qbar}<={1'bx,1'bx};
default: begin end
endcase
end
end
endmodule
