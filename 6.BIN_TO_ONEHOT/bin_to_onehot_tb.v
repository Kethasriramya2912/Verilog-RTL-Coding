`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 11:59:15 AM
// Design Name: 
// Module Name: bin_to_onehot_tb
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


module bin_to_onehot_tb();
reg [1:0]a;
reg clk;
wire [3:0]y;
bin_to_onehot dut(a,y);
initial clk=0;
always #5 clk=~clk;
initial begin
a=2'b00;
end
always @(posedge clk)
begin
a=a+1;
if(a==2'b11)
begin
$finish();
end
end
endmodule
