`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 07:34:54 PM
// Design Name: 
// Module Name: semaphore_2
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
rand int data;
constraint data_c{data<10;data>10;}
endclass
class second;
rand int data;
constraint data_c{data>10;data<10;}
endclass
class main;
semaphore sem;
first f;
second s;
int data;
int i=0;
task send_first();
sem.get(1);
for(i=0;i<10;i++) begin
f.randomize();
data=f.data;
$display("first access semaphore and data sent %0d",f.data);
#10;
end
sem.put(1);
$display("semaphore unoccupied");
endtask
task send_second();
sem.get(1);
for(i=0;i<10;i++) begin
s.randomize();
data=s.data;
$display("second access semaphore and data sent :%0d",s.data);
#10;
end
sem.put(1);
endtask
task run();
sem=new();
f=new();
s=new();
fork
send_first();
send_second();
join
endtask
endclass
module semaphore_2;
main m;
initial begin
m=new();
m.run();
end
initial begin
#250;
$finish();
end
endmodule

