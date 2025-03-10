`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 07:04:00 PM
// Design Name: 
// Module Name: transaction_data_with_mailbox
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

class transaction;
rand bit[3:0]din1;
rand bit[3:0]din2;
bit[4:0]dout;
endclass
class generator;
transaction t;
mailbox mbx;
function new (mailbox mbx);
this.mbx=mbx;
endfunction
task main();
for(int i=0;i<10;i++) begin
t=new();
assert(t.randomize) else
$display("randomization failed");
$display("[GEN]:data sent :din1:%0d and din2:%0d",t.din1,t.din2);
mbx.put(t);
#10;
end
endtask
endclass
class driver;
transaction dc;
mailbox mbx;
function new(mailbox mbx);
this.mbx=mbx;
endfunction
task main();
forever begin
mbx.get(dc);
$display("[DRV]:data recieved:data1:%0d and din2:%0d",dc.din1,dc.din2);
#10;
end
endtask
endclass
module transaction_data_with_mailbox;
generator g;
driver d;
mailbox mbx;
initial begin
mbx=new();
g=new(mbx);
d=new(mbx);
fork
g.main();
d.main();
join
end
endmodule
