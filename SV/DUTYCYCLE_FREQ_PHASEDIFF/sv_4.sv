`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 10:08:17 AM
// Design Name: 
// Module Name: sv_4
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


module sv_4();
reg clk=0;
reg clk50=0;
always #5 clk=~clk;
task calc(input real freq_hz,input real duty_cycle,input real phase,output real pout,output real ton,output toff);
pout=phase;
ton=(1.0/freq_hz)*duty_cycle*1000_000_000;
toff=(1000_000_000/freq_hz)-ton;
endtask
task clkgen(input real phase,input real ton, input real toff);
#phase;
while(1) begin
clk50=1;
#ton;
clk50=0;
#toff;
end
endtask
real phase;
real ton; 
real toff;
initial begin
calc(1000_000_000, 0.5,7,phase,ton,toff);
clkgen(phase,ton,toff);
end
initial begin
#200;
$finish();
end
endmodule
