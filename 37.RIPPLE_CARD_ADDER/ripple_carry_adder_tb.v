`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 01:57:45 PM
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;
ripple_carry_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
a=4'b0000;b=4'b0000;cin=0;
#10;
$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
a=4'b0001;b=4'b0010;cin=0;
#10;
$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
a=4'b0011;b=4'b0000;cin=0;
#10;
$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
a=4'b0100;b=4'b0101;cin=0;
#10;
$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
a=4'b0101;b=4'b0110;cin=1;
#10;
$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
a=4'b1111;b=4'b1111;cin=0;
#10;
$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
$finish();
end
endmodule
