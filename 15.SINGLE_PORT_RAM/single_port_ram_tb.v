`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 09:35:24 PM
// Design Name: 
// Module Name: single_port_ram_tb
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


module single_port_ram_tb();
reg clk;
reg we;
reg [3:0]addr;
reg [7:0]din;
wire[7:0]dout;
single_port_ram dut(clk,we,addr,din,dout);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
we=1;addr=4'd0; din = 8'd15; #10;
we=1;addr=4'd1; din = 8'd25; #10;
we=1;addr=4'd2; din = 8'd35; #10;
we=0;addr=4'd0;#10;
we=0;addr=4'd1; #10;
we=0;addr=4'd2; #10;
$finish;
end
initial begin
$monitor("time=%od ,addr=%d ,din=%d ,dout=%d, we=%b",$time,addr,din,dout,we);
end
endmodule
