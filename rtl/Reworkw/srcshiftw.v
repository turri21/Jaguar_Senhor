module srcshift
(
	output [0:31] srcd_0,
	output [0:31] srcd_1,
	input big_pix,
	input [0:31] srcd1lo,
	input [0:31] srcd1hi,
	input [0:31] srcd2lo,
	input [0:31] srcd2hi,
	input srcshift_0,
	input srcshift_1,
	input srcshift_2,
	input srcshift_3,
	input srcshift_4,
	input srcshift_5
);
wire [31:0] srcd_0_;
assign {srcd_0[31],srcd_0[30],
srcd_0[29],srcd_0[28],srcd_0[27],srcd_0[26],srcd_0[25],srcd_0[24],srcd_0[23],srcd_0[22],srcd_0[21],srcd_0[20],
srcd_0[19],srcd_0[18],srcd_0[17],srcd_0[16],srcd_0[15],srcd_0[14],srcd_0[13],srcd_0[12],srcd_0[11],srcd_0[10],
srcd_0[9],srcd_0[8],srcd_0[7],srcd_0[6],srcd_0[5],srcd_0[4],srcd_0[3],srcd_0[2],srcd_0[1],srcd_0[0]} = srcd_0_[31:0];
wire [31:0] srcd_1_;
assign {srcd_1[31],srcd_1[30],
srcd_1[29],srcd_1[28],srcd_1[27],srcd_1[26],srcd_1[25],srcd_1[24],srcd_1[23],srcd_1[22],srcd_1[21],srcd_1[20],
srcd_1[19],srcd_1[18],srcd_1[17],srcd_1[16],srcd_1[15],srcd_1[14],srcd_1[13],srcd_1[12],srcd_1[11],srcd_1[10],
srcd_1[9],srcd_1[8],srcd_1[7],srcd_1[6],srcd_1[5],srcd_1[4],srcd_1[3],srcd_1[2],srcd_1[1],srcd_1[0]} = srcd_1_[31:0];
wire [31:0] srcd1lo_ = {srcd1lo[31],srcd1lo[30],
srcd1lo[29],srcd1lo[28],srcd1lo[27],srcd1lo[26],srcd1lo[25],srcd1lo[24],srcd1lo[23],srcd1lo[22],srcd1lo[21],srcd1lo[20],
srcd1lo[19],srcd1lo[18],srcd1lo[17],srcd1lo[16],srcd1lo[15],srcd1lo[14],srcd1lo[13],srcd1lo[12],srcd1lo[11],srcd1lo[10],
srcd1lo[9],srcd1lo[8],srcd1lo[7],srcd1lo[6],srcd1lo[5],srcd1lo[4],srcd1lo[3],srcd1lo[2],srcd1lo[1],srcd1lo[0]};
wire [31:0] srcd1hi_ = {srcd1hi[31],srcd1hi[30],
srcd1hi[29],srcd1hi[28],srcd1hi[27],srcd1hi[26],srcd1hi[25],srcd1hi[24],srcd1hi[23],srcd1hi[22],srcd1hi[21],srcd1hi[20],
srcd1hi[19],srcd1hi[18],srcd1hi[17],srcd1hi[16],srcd1hi[15],srcd1hi[14],srcd1hi[13],srcd1hi[12],srcd1hi[11],srcd1hi[10],
srcd1hi[9],srcd1hi[8],srcd1hi[7],srcd1hi[6],srcd1hi[5],srcd1hi[4],srcd1hi[3],srcd1hi[2],srcd1hi[1],srcd1hi[0]};
wire [31:0] srcd2lo_ = {srcd2lo[31],srcd2lo[30],
srcd2lo[29],srcd2lo[28],srcd2lo[27],srcd2lo[26],srcd2lo[25],srcd2lo[24],srcd2lo[23],srcd2lo[22],srcd2lo[21],srcd2lo[20],
srcd2lo[19],srcd2lo[18],srcd2lo[17],srcd2lo[16],srcd2lo[15],srcd2lo[14],srcd2lo[13],srcd2lo[12],srcd2lo[11],srcd2lo[10],
srcd2lo[9],srcd2lo[8],srcd2lo[7],srcd2lo[6],srcd2lo[5],srcd2lo[4],srcd2lo[3],srcd2lo[2],srcd2lo[1],srcd2lo[0]};
wire [31:0] srcd2hi_ = {srcd2hi[31],srcd2hi[30],
srcd2hi[29],srcd2hi[28],srcd2hi[27],srcd2hi[26],srcd2hi[25],srcd2hi[24],srcd2hi[23],srcd2hi[22],srcd2hi[21],srcd2hi[20],
srcd2hi[19],srcd2hi[18],srcd2hi[17],srcd2hi[16],srcd2hi[15],srcd2hi[14],srcd2hi[13],srcd2hi[12],srcd2hi[11],srcd2hi[10],
srcd2hi[9],srcd2hi[8],srcd2hi[7],srcd2hi[6],srcd2hi[5],srcd2hi[4],srcd2hi[3],srcd2hi[2],srcd2hi[1],srcd2hi[0]};
wire [5:0] srcshift = {srcshift_5,srcshift_4,srcshift_3,srcshift_2,srcshift_1,srcshift_0};

_srcshift src_shift_inst
(
	.srcd_0 /* OUT */ (srcd_0_[31:0]),
	.srcd_1 /* OUT */ (srcd_1_[31:0]),
	.big_pix /* IN */ (big_pix),
	.srcd1lo /* IN */ (srcd1lo_[31:0]),
	.srcd1hi /* IN */ (srcd1hi_[31:0]),
	.srcd2lo /* IN */ (srcd2lo_[31:0]),
	.srcd2hi /* IN */ (srcd2hi_[31:0]),
	.srcshift /* IN */ (srcshift[5:0])
);

endmodule
