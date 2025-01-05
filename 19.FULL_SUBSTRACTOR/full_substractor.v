`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 11:30:35 AM
// Design Name: 
// Module Name: full_substractor
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


module full_substractor(
input a,b,c,
output diff,barrow );
assign diff =a^b^c;
assign barrow=(~a)&b |(b&c)|(~a)&c;
endmodule
