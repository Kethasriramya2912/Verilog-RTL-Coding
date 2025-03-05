`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 10:05:20 AM
// Design Name: 
// Module Name: sync_fifo_tb
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


module sync_fifo_tb;
reg clk;
reg reset;
reg wr_en;
reg rd_en;
reg [7:0] din;
wire [7:0] dout;
wire full;
wire empty;

sync_fifo #(
      .DATA_WIDTH(8),
      .FIFO_DEPTH(16)
      ) dut (
      .clk(clk),
      .reset(reset),
      .wr_en(wr_en),
      .rd_en(rd_en),
      .din(din),
      .dout(dout),
      .full(full),
      .empty(empty)
      );
 initial begin
    clk=0;
    forever #5 clk=~clk;
 end
 initial begin
 reset=1; #10;
 reset=0; wr_en=1;rd_en=0;din=8'hC4; #10;
 din=8'hC4;#10;
 din=8'hFF;#10;
 wr_en =0; rd_en=1; #10;
 #10;
 rd_en =0; #10;
 $finish;
 end
 initial begin
 $monitor("time=%0d,wr_en=%b,rd_en=%b,din=%h,dout=%h,full=%b, empty=%b", $time,wr_en,rd_en,din,dout,full,empty);
 end
endmodule
