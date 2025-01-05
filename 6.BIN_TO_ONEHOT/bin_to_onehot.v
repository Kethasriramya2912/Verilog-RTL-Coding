`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 11:54:55 AM
// Design Name: 
// Module Name: bin_to_onehot
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


module bin_to_onehot(
input[1:0]a,
output reg [3:0]y);
always @(*)
begin
case(a)
2'b00:y=4'b0000;
2'b01:y=4'b0010;
2'b10:y=4'b0100;
2'b11:y=4'b1000;
default:begin end
endcase
end
endmodule
