module testbench;

import upcounter_pkg::*;

bit clk,reset;
bit [7:0]Q;
bit [7:0]out;

EightBitRippleCounter dut(.clk(clk),.reset(reset),.Q(Q));
upcounter counter=new(clk,reset);

    initial begin
        clk=1'b0;
        reset=1'b1;
     #8 reset=1'b0;
    end
    always@(posedge clk,posedge reset)
    begin
     counter.update(reset);
     out=counter.q;
   end
     always@(posedge clk,posedge reset)
     #1$display("The Expected and got output are:%b %b",out,Q);
    
    always #5 clk=~clk;
 
endmodule
