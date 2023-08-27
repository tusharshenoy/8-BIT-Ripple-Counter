module EightBitRippleCounter(clk,reset,Q);

input clk,reset;
output [7:0]Q;
wire [7:0]Qb;

D_Flip_Flop dff0(.D(Qb[0]),.clk(clk),.reset(reset),.Q(Q[0]),.Qb(Qb[0]));
D_Flip_Flop dff1(.D(Qb[1]),.clk(Qb[0]),.reset(reset),.Q(Q[1]),.Qb(Qb[1]));
D_Flip_Flop dff2(.D(Qb[2]),.clk(Qb[1]),.reset(reset),.Q(Q[2]),.Qb(Qb[2]));
D_Flip_Flop dff3(.D(Qb[3]),.clk(Qb[2]),.reset(reset),.Q(Q[3]),.Qb(Qb[3]));
D_Flip_Flop dff4(.D(Qb[4]),.clk(Qb[3]),.reset(reset),.Q(Q[4]),.Qb(Qb[4]));
D_Flip_Flop dff5(.D(Qb[5]),.clk(Qb[4]),.reset(reset),.Q(Q[5]),.Qb(Qb[5]));
D_Flip_Flop dff6(.D(Qb[6]),.clk(Qb[5]),.reset(reset),.Q(Q[6]),.Qb(Qb[6]));
D_Flip_Flop dff7(.D(Qb[7]),.clk(Qb[6]),.reset(reset),.Q(Q[7]),.Qb(Qb[7]));

endmodule
