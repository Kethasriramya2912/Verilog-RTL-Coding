`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:44:21 PM
// Design Name: 
// Module Name: sv_10
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

class parent_trans;
 bit [31:0] data;
 int id;
 virtual function void display();
 $display("Base: Value of data = %0d and id = %0d", data, id);
 endfunction
endclass
class child_trans extends parent_trans;
 bit [31:0] data;
 int id;
 function void display();
 $display("Child: Value of data = %0d and id = %0d", data, id);
 endfunction 
endclass
module class_example;
 initial begin
 parent_trans p_tr;
 child_trans c_tr;
 c_tr = new();
 
 p_tr = c_tr;
 c_tr.data = 10;
 c_tr.id = 2;
 
 p_tr.data = 5;
 p_tr.id = 1;
 p_tr.display();
 end
endmodule
