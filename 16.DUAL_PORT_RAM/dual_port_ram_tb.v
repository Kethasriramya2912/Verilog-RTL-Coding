`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 10:14:15 PM
// Design Name: 
// Module Name: dual_port_ram_tb
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


module dual_port_ram_tb();
reg clk;
reg we1,we2;
reg[3:0]addr1,addr2;
reg [7:0]din1,din2;
wire [7:0]dout1,dout2;
dual_port_ram dut (clk,we1,addr1,din1,dout1,we2,addr2,din2,dout2);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
we1=1;addr1=4'd0;din1=8'd10;#10;
we2=1;addr2=4'd1;din2=8'd20;#10;
we1=0;addr1=4'd0;#10;
we2=0;addr1=4'd1;#10;
$finish();
end
initial begin
$monitor("time=%0d addr1=%d din1=%b dout1=%d we1=%b addr2=%d din2=%b dout2=%d we2=%b",$time,addr1,din1,dout1,we1,addr2,din2,dout2,we2);
end
endmodule
