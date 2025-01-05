`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 03:07:38 PM
// Design Name: 
// Module Name: bi_dir_shift_reg_tb
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


module bi_dir_shift_reg_tb();
reg clk;
reg rst;
reg shift_left;
reg serial_in;
wire [3:0]data_out;
bi_dir_shift_reg dut(clk,rst,shift_left,serial_in,data_out);
initial clk=0;
always #5 clk=~clk;
initial begin
rst=1;
shift_left =0;
serial_in=0;
#10;
rst=0;
#10;
shift_left=0;
serial_in=1;
#10;
#10;
shift_left=1;
serial_in=0;
#10;
#10;
shift_left=1;
serial_in=1;
#10;
#10;
$finish();
end
endmodule
