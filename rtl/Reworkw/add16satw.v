module add16sat
(
	output [0:15] r,
	output co,
	input [0:15] a,
	input [0:15] b,
	input cin,
	input sat,
	input eightbit,
	input hicinh
);
wire [15:0] r_;
assign {r[15],r[14],r[13],r[12],r[11],r[10],
r[9],r[8],r[7],r[6],r[5],r[4],r[3],r[2],r[1],r[0]} = r_[15:0];
wire [15:0] a_ = {a[15],a[14],a[13],a[12],a[11],a[10],
a[9],a[8],a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0]};
wire [15:0] b_ = {b[15],b[14],b[13],b[12],b[11],b[10],
b[9],b[8],b[7],b[6],b[5],b[4],b[3],b[2],b[1],b[0]};
_add16sat adder4_inst
(
	.r /* OUT */ (r_[15:0]),
	.co /* OUT */ (co),
	.a /* IN */ (a_[15:0]),
	.b /* IN */ (b_[15:0]),
	.cin /* IN */ (cin),
	.sat /* IN */ (sat),
	.eightbit /* IN */ (eightbit),
	.hicinh /* IN */ (hicinh)
);
endmodule
