module saturate
(
	output [0:23] q,
	input [0:31] d,
	input sixteen,
	input twentyfour
);
_saturate saturate_inst
(
	.q /* OUT */ (q_[23:0]),
	.d /* IN */ (d_[31:0]),
	.sixteen /* IN */ (sixteen),
	.twentyfour /* IN */ (twentyfour)
);
wire [23:0] q_;
assign {q[23],q[22],q[21],q[20],
q[19],q[18],q[17],q[16],q[15],q[14],q[13],q[12],q[11],q[10],
q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]} = q_[31:0];
wire [31:0] d_ = {d[31],d[30],
d[29],d[28],d[27],d[26],d[25],d[24],d[23],d[22],d[21],d[20],
d[19],d[18],d[17],d[16],d[15],d[14],d[13],d[12],d[11],d[10],
d[9],d[8],d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0]};
endmodule
