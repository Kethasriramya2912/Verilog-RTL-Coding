`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 07:05:34 PM
// Design Name: 
// Module Name: events
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


module events;
int i=0;
bit [7:0] data1,data2;
event done;
event next;
task generator();
for(i=0;i<10;i++) begin
data1=$urandom();
$display("data sent:%0d",data1);
#10;
wait(next.triggered);
end
-> done;
endtask
task receiver();
forever begin
#10;
data2=data1;
$display("data rcvd:%0d",data2);
->next;
end
endtask
task wait_event();
wait(done.triggered);
$display("completing sending all stimulus");
$finish();
endtask
initial begin
fork 
generator();
receiver();
wait_event();
join
end
endmodule
