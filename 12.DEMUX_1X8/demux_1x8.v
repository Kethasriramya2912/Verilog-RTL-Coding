`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 09:58:19 PM
// Design Name: 
// Module Name: demux_1x8
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


module demux_1x8(
input i,
input[2:0] sel,
output reg [7:0] y);
always @(*)
begin 
y=8'b00000000;
case(sel)
3'b000:y[0]=i;
3'b001:y[1]=i;
3'b010:y[2]=i;
3'b011:y[3]=i;
3'b100:y[4]=i;
3'b101:y[5]=i;
3'b110:y[6]=i;
3'b111:y[7]=i;
default:y=8'b00000000;
endcase
end
endmodule
