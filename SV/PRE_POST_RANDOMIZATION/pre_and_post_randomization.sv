`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 03:55:15 PM
// Design Name: 
// Module Name: pre_and_post_randomization
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

class generator;
randc bit[3:0]a,b;
bit[3:0]y;
int min;
int max;
function void pre_randomized(input int min,input int max);
this.min=min;
this.max=max;
endfunction
constraint data{
a inside {[min:max]};
b inside {[min:max]};
};
function void post_randomized();
$display("value of a:%d and b:%d",a,b);
endfunction
endclass
module tb;
int i=0;
generator g;
initial begin
g=new();
for(i=0;i<10;i++) begin
g.pre_randomized(3,8);
g.randomize();
g.post_randomized();
end
end
endmodule
