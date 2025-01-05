`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 05:53:54 PM
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb();
reg clk,rst,wr,rd;
reg[7:0]data_in;
reg[7:0]tempdata;
wire[7:0]data_out;
wire[3:0]fifo_cnt;
fifo dut(.clk(clk),.rst(rst),.data_in(data_in),.wr(wr),.rd(rd),.empty(empty),.full(full),.fifo_cnt(fifo_cnt));
initial 
begin
clk=0;
rst=1;
rd=0;
wr=0;
tempdata=0;
data_in=0;
#15;
rst=0;
push(1);
fork
push(2);
pop(tempdata);
join
push(10);
push(20);
push(30);
push(40);
push(50);
push(60);
push(70);
push(80);
push(90);
push(100);
push(110);
push(120);
push(130);


//pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
push(140);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
pop(tempdata);
push(5);
pop(tempdata);
end
always #5 clk=~clk;
task push;
input[7:0] data;
if(full)
$display("cannot push:fifo full--");
else
begin
$display("pushed ",data);
data_in=data;
wr=1;
@(posedge clk);
#1 wr=0;
end
endtask
task pop;
output[7:0] data;
if(empty)
$display("--cannot pop:fifo empty--");
else
begin
rd=1;
@(posedge clk);
data=data_out;
#1 rd=0;
$display("--- poped=%d",data);
end
endtask
endmodule
