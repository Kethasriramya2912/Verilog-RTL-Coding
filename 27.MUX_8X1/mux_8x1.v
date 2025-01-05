`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 04:47:57 PM
// Design Name: 
// Module Name: mux_8x1
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

module mux_2x1(
input a,b,sel,
output out);
assign out =(sel)?b:a;
endmodule
module mux_8x1(
  input[7:0]in,
  input[2:0]sel,
  output out);
  wire w1,w2,w3,w4,w5,w6;
  
  mux_2x1 M1(.a(in[0]),.b(in[1]),.sel(sel[0]),.out(w1));
  mux_2x1 M2(.a(in[2]),.b(in[3]),.sel(sel[0]),.out(w2));
  mux_2x1 M3(.a(in[4]),.b(in[5]),.sel(sel[0]),.out(w3));
  mux_2x1 M4(.a(in[6]),.b(in[7]),.sel(sel[0]),.out(w4));
  mux_2x1 M5(.a(w1),.b(w2),.sel(sel[1]),.out(w5));
  mux_2x1 M6(.a(w3),.b(w4),.sel(sel[1]),.out(w6));
  mux_2x1 M7(.a(w5),.b(w6),.sel(sel[2]),.out(out));
endmodule
