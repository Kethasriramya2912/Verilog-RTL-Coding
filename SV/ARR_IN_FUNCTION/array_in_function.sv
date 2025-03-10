`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 12:25:41 PM
// Design Name: 
// Module Name: array_in_function
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


module array_in_function();
bit [3:0] res [16];
function automatic void init_arr(ref bit [3:0]a[16]);
for(int i=0;i<=15;i++)
begin
a[i]=i;
end
endfunction
initial begin
init_arr(res);
for(int i=0;i<=15;i++) begin
$display("res[%0d]:%0d",i,res[i]);
end
end
endmodule
