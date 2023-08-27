module D_Flip_Flop(D,clk,reset,Q,Qb);
input D,clk,reset;
output reg Q,Qb;

always @(posedge clk,posedge reset) //Asynchronous Reset and Positive Edge Clock
begin
    if (reset)
    begin
       Q=1'b0;
       Qb=1'b1;
    end
    else
    begin
       Q=D;
       Qb=~Q;
    end
end
endmodule
