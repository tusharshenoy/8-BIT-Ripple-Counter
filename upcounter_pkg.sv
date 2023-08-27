package upcounter_pkg;

class upcounter;
bit clk;
bit reset;
bit [7:0]q;

function new(bit clk1,bit reset1);
   clk=clk1;
   reset=reset1;
endfunction

function void update(reset);
    if (reset)
        q=8'b0;
     else
        q=q+1;
endfunction

endclass
endpackage
