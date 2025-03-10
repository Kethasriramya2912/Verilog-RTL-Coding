`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2024 03:50:54 PM
// Design Name: 
// Module Name: inheritance_2
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
  int data=15;
  function void display();
    $display("data:%0d",data);
  endfunction
endclass
class second extends first;
  int datas=20;
  function void add();
     $display("datas value :%0d",datas+4);
  endfunction
endclass
module tb;
second s;
initial begin
   s=new();
   s.display();
   s.add();
end
endmodule


