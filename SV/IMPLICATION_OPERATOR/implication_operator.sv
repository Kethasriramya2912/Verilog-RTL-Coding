`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 05:58:50 PM
// Design Name: 
// Module Name: implication_operator
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

class generator;
rand bit[1:0]a;
rand bit ce;
rand bit rst;
constraint cntrl_rst{rst dist{0:=80,1:=20};}
constraint cntrl_ce{ce dist{1:=80,0:=20};}
constraint cntrl_rst_ce{(rst==0)->(ce==1);}
endclass
module tb;
generator g;
initial begin
g=new();
for(int i=0;i<10;i++) begin
assert(g.randomize()) else
$display("randomization failed");
$display("value of rst:%0b and ce=%0b",g.rst,g.ce);
end
end
endmodule
