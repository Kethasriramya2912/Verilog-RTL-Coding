`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 06:34:49 PM
// Design Name: 
// Module Name: fork_join_any
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


module fork_join_any;
task first();
$display("task1 started at %0t",$time);
#20;
$display("task1 completed at %0t",$time);
endtask
task second();
$display("task2 started at %0t",$time);
#30;
$display("task2 completed at %0t",$time);
endtask
task third();
$display("reched next to join at %ot",$time);
endtask
initial begin
fork
first();
second();
join_any
third();
end
endmodule

