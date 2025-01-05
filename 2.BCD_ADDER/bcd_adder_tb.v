`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 03:17:23 PM
// Design Name: 
// Module Name: bcd_adder_tb
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


module bcd_adder_tb();
reg [3:0] a,b;
reg cin;
wire [7:0] sum;
wire cout;
bcd_adder dut(a,b,cin,sum,cout);
initial begin
$monitor("a=%d,b=%d,cin=%d,sum=%d,cout=%d",a,b,cin,sum,cout);
a=6;b=12;cin=0;
#10;
a=6;b=1;cin=1;
#10;
a=6;b=7;cin=1;
#10;
a=7;b=4;cin=1;
#10;
a=8;b=15;cin=0;
#10;
$finish();
end
endmodule
