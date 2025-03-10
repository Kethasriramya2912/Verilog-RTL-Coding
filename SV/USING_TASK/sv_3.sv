`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 09:55:14 AM
// Design Name: 
// Module Name: sv_3
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


module sv_3();
reg clk=0;
reg clk50=0;
always #5 clk=~clk;
task clkgen(input real phase,input real ton,input real toff);
#phase;
while(1) begin
clk50=1;
#ton;
clk50=0;
#toff;
end
endtask
initial begin
clkgen(7,5,5);
end
initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
initial begin
#200;
$finish();
end
endmodule
