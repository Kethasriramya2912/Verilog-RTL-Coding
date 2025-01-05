`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 10:39:48 AM
// Design Name: 
// Module Name: p_encoder
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


module p_encoder(
input [7:0]a,
output reg [2:0]out);
always @(*)
begin
casex(a)
8'b00000001:out=3'b000;
8'b0000001x:out=3'b001;
8'b000001xx:out=3'b010;
8'b00001xxx:out=3'b011;
8'b0001xxxx:out=3'b100;
8'b001xxxxx:out=3'b101;
8'b01xxxxxx:out=3'b110;
8'b1xxxxxxx:out=3'b111;
default:out=3'b000;
endcase
end
endmodule
