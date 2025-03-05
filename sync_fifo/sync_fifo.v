`timescale 1ns / 1ps
module sync_fifo #(
parameter DATA_WIDTH=8,
parameter FIFO_DEPTH=16
) (
input clk,
input reset,
input wr_en,
input rd_en,
input [DATA_WIDTH-1:0] din,
output reg [DATA_WIDTH-1:0] dout,
output full,
output empty
);
reg [DATA_WIDTH-1:0] mem [FIFO_DEPTH-1:0];
reg [$clog2 (FIFO_DEPTH):0] wr_ptr =0;
reg [$clog2 (FIFO_DEPTH):0] rd_ptr =0;
reg [$clog2 (FIFO_DEPTH):0] count =0;
assign full= (count==FIFO_DEPTH);
assign empty=(count==0);
always @(posedge clk or posedge reset)
begin
  if(reset) begin
     wr_ptr<=0;
     rd_ptr<=0;
     count<=0;
  end
  else begin
     if (wr_en && !full) begin
         mem[wr_ptr]<=din;
         wr_ptr<=wr_ptr+1;
         count<=count+1;
     end
     if(rd_en&&!empty) begin
          dout<=mem[rd_ptr];
          rd_ptr<=rd_ptr+1;
          count<=count - 1;
      end
   end
 end
endmodule
