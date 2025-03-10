`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 09:45:43 AM
// Design Name: 
// Module Name: sv_2
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


module sv_2();
reg clk=0;
reg clk50=0;
always #5 clk=~clk;
real phase=10;
real ton=5;
real toff=5;
initial begin
#phase;
while(1) begin
clk50=1;
#ton;
clk50=0;
#toff;
end 
end
initial begin
#200;
$finish();
end

endmodule
