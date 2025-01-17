module addrcomp
(
	output a1_outside,
	input [0:15] a1_x,
	input [0:15] a1_y,
	input [0:14] a1_win_x,
	input [0:14] a1_win_y
);
wire [14:0] a1_win_x_ = {a1_win_x[14],a1_win_x[13],a1_win_x[12],a1_win_x[11],a1_win_x[10],
a1_win_x[9],a1_win_x[8],a1_win_x[7],a1_win_x[6],a1_win_x[5],a1_win_x[4],a1_win_x[3],a1_win_x[2],a1_win_x[1],a1_win_x[0]};
wire [15:0] a1_x_ = {a1_x[15],a1_x[14],a1_x[13],a1_x[12],a1_x[11],a1_x[10],
a1_x[9],a1_x[8],a1_x[7],a1_x[6],a1_x[5],a1_x[4],a1_x[3],a1_x[2],a1_x[1],a1_x[0]};
wire [14:0] a1_win_y_ = {a1_win_y[14],a1_win_y[13],a1_win_y[12],a1_win_y[11],a1_win_y[10],
a1_win_y[9],a1_win_y[8],a1_win_y[7],a1_win_y[6],a1_win_y[5],a1_win_y[4],a1_win_y[3],a1_win_y[2],a1_win_y[1],a1_win_y[0]};
wire [15:0] a1_y_ = {a1_y[15],a1_y[14],a1_y[13],a1_y[12],a1_y[11],a1_y[10],
a1_y[9],a1_y[8],a1_y[7],a1_y[6],a1_y[5],a1_y[4],a1_y[3],a1_y[2],a1_y[1],a1_y[0]};

_addrcomp addrcomp_inst
(
	.a1_outside /* OUT */ (a1_outside),
	.a1_x /* IN */ (a1_x_[15:0]),
	.a1_y /* IN */ (a1_y_[15:0]),
	.a1_win_x /* IN */ (a1_win_x_[14:0]),
	.a1_win_y /* IN */ (a1_win_y_[14:0])
);

endmodule
