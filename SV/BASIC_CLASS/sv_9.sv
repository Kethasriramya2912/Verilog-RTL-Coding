`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 04:39:24 PM
// Design Name: 
// Module Name: sv_9
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


class first;
reg [2:0]data;
reg [2:0] dataa;
endclass
module sv_9;
first f;
initial begin
f=new();
#1
$display("value of data:%0d and value of dataa:%od",f.data,f.dataa);
end
endmodule
