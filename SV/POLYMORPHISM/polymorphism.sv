`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2024 03:55:28 PM
// Design Name: 
// Module Name: polymorphism
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
  virtual function void display();
      $display("data:%0d",data);
   endfunction
endclass
class second extends first;
   int datas=20;
   function void add();
      $display("datas value :%0d",datas+4);
   endfunction
    function void display();
       $display("data:%0d",data);
     endfunction
 endclass
module tb;
   first f;
   second s;
   initial begin
      f=new();
      s=new();
      f=s;
      f.display();
      f.add();
   end
endmodule
