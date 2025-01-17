module daddamux
(
	output [0:15] adda_0,
	output [0:15] adda_1,
	output [0:15] adda_2,
	output [0:15] adda_3,
	input [0:31] dstd_0,
	input [0:31] dstd_1,
	input [0:31] srcd_0,
	input [0:31] srcd_1,
	input [0:31] patd_0,
	input [0:31] patd_1,
	input [0:31] srcz1_0,
	input [0:31] srcz1_1,
	input [0:31] srcz2_0,
	input [0:31] srcz2_1,
	input daddasel_0,
	input daddasel_1,
	input daddasel_2
);
wire [15:0] adda_0_;
assign {adda_0[15],adda_0[14],adda_0[13],adda_0[12],adda_0[11],adda_0[10],
adda_0[9],adda_0[8],adda_0[7],adda_0[6],adda_0[5],adda_0[4],adda_0[3],adda_0[2],adda_0[1],adda_0[0]} = adda_0_[15:0];
wire [15:0] adda_1_;
assign {adda_1[15],adda_1[14],adda_1[13],adda_1[12],adda_1[11],adda_1[10],
adda_1[9],adda_1[8],adda_1[7],adda_1[6],adda_1[5],adda_1[4],adda_1[3],adda_1[2],adda_1[1],adda_1[0]} = adda_1_[15:0];
wire [15:0] adda_2_;
assign {adda_2[15],adda_2[14],adda_2[13],adda_2[12],adda_2[11],adda_2[10],
adda_2[9],adda_2[8],adda_2[7],adda_2[6],adda_2[5],adda_2[4],adda_2[3],adda_2[2],adda_2[1],adda_2[0]} = adda_2_[15:0];
wire [15:0] adda_3_;
assign {adda_3[15],adda_3[14],adda_3[13],adda_3[12],adda_3[11],adda_3[10],
adda_3[9],adda_3[8],adda_3[7],adda_3[6],adda_3[5],adda_3[4],adda_3[3],adda_3[2],adda_3[1],adda_3[0]} = adda_3_[15:0];
wire [31:0] dstd_0_ = {dstd_0[31],dstd_0[30],
dstd_0[29],dstd_0[28],dstd_0[27],dstd_0[26],dstd_0[25],dstd_0[24],dstd_0[23],dstd_0[22],dstd_0[21],dstd_0[20],
dstd_0[19],dstd_0[18],dstd_0[17],dstd_0[16],dstd_0[15],dstd_0[14],dstd_0[13],dstd_0[12],dstd_0[11],dstd_0[10],
dstd_0[9],dstd_0[8],dstd_0[7],dstd_0[6],dstd_0[5],dstd_0[4],dstd_0[3],dstd_0[2],dstd_0[1],dstd_0[0]};
wire [31:0] dstd_1_ = {dstd_1[31],dstd_1[30],
dstd_1[29],dstd_1[28],dstd_1[27],dstd_1[26],dstd_1[25],dstd_1[24],dstd_1[23],dstd_1[22],dstd_1[21],dstd_1[20],
dstd_1[19],dstd_1[18],dstd_1[17],dstd_1[16],dstd_1[15],dstd_1[14],dstd_1[13],dstd_1[12],dstd_1[11],dstd_1[10],
dstd_1[9],dstd_1[8],dstd_1[7],dstd_1[6],dstd_1[5],dstd_1[4],dstd_1[3],dstd_1[2],dstd_1[1],dstd_1[0]};
wire [31:0] srcd_0_ = {srcd_0[31],srcd_0[30],
srcd_0[29],srcd_0[28],srcd_0[27],srcd_0[26],srcd_0[25],srcd_0[24],srcd_0[23],srcd_0[22],srcd_0[21],srcd_0[20],
srcd_0[19],srcd_0[18],srcd_0[17],srcd_0[16],srcd_0[15],srcd_0[14],srcd_0[13],srcd_0[12],srcd_0[11],srcd_0[10],
srcd_0[9],srcd_0[8],srcd_0[7],srcd_0[6],srcd_0[5],srcd_0[4],srcd_0[3],srcd_0[2],srcd_0[1],srcd_0[0]};
wire [31:0] srcd_1_ = {srcd_1[31],srcd_1[30],
srcd_1[29],srcd_1[28],srcd_1[27],srcd_1[26],srcd_1[25],srcd_1[24],srcd_1[23],srcd_1[22],srcd_1[21],srcd_1[20],
srcd_1[19],srcd_1[18],srcd_1[17],srcd_1[16],srcd_1[15],srcd_1[14],srcd_1[13],srcd_1[12],srcd_1[11],srcd_1[10],
srcd_1[9],srcd_1[8],srcd_1[7],srcd_1[6],srcd_1[5],srcd_1[4],srcd_1[3],srcd_1[2],srcd_1[1],srcd_1[0]};
wire [31:0] patd_0_ = {patd_0[31],patd_0[30],
patd_0[29],patd_0[28],patd_0[27],patd_0[26],patd_0[25],patd_0[24],patd_0[23],patd_0[22],patd_0[21],patd_0[20],
patd_0[19],patd_0[18],patd_0[17],patd_0[16],patd_0[15],patd_0[14],patd_0[13],patd_0[12],patd_0[11],patd_0[10],
patd_0[9],patd_0[8],patd_0[7],patd_0[6],patd_0[5],patd_0[4],patd_0[3],patd_0[2],patd_0[1],patd_0[0]};
wire [31:0] patd_1_ = {patd_1[31],patd_1[30],
patd_1[29],patd_1[28],patd_1[27],patd_1[26],patd_1[25],patd_1[24],patd_1[23],patd_1[22],patd_1[21],patd_1[20],
patd_1[19],patd_1[18],patd_1[17],patd_1[16],patd_1[15],patd_1[14],patd_1[13],patd_1[12],patd_1[11],patd_1[10],
patd_1[9],patd_1[8],patd_1[7],patd_1[6],patd_1[5],patd_1[4],patd_1[3],patd_1[2],patd_1[1],patd_1[0]};
wire [31:0] srcz1_0_ = {srcz1_0[31],srcz1_0[30],
srcz1_0[29],srcz1_0[28],srcz1_0[27],srcz1_0[26],srcz1_0[25],srcz1_0[24],srcz1_0[23],srcz1_0[22],srcz1_0[21],srcz1_0[20],
srcz1_0[19],srcz1_0[18],srcz1_0[17],srcz1_0[16],srcz1_0[15],srcz1_0[14],srcz1_0[13],srcz1_0[12],srcz1_0[11],srcz1_0[10],
srcz1_0[9],srcz1_0[8],srcz1_0[7],srcz1_0[6],srcz1_0[5],srcz1_0[4],srcz1_0[3],srcz1_0[2],srcz1_0[1],srcz1_0[0]};
wire [31:0] srcz1_1_ = {srcz1_1[31],srcz1_1[30],
srcz1_1[29],srcz1_1[28],srcz1_1[27],srcz1_1[26],srcz1_1[25],srcz1_1[24],srcz1_1[23],srcz1_1[22],srcz1_1[21],srcz1_1[20],
srcz1_1[19],srcz1_1[18],srcz1_1[17],srcz1_1[16],srcz1_1[15],srcz1_1[14],srcz1_1[13],srcz1_1[12],srcz1_1[11],srcz1_1[10],
srcz1_1[9],srcz1_1[8],srcz1_1[7],srcz1_1[6],srcz1_1[5],srcz1_1[4],srcz1_1[3],srcz1_1[2],srcz1_1[1],srcz1_1[0]};
wire [31:0] srcz2_0_ = {srcz2_0[31],srcz2_0[30],
srcz2_0[29],srcz2_0[28],srcz2_0[27],srcz2_0[26],srcz2_0[25],srcz2_0[24],srcz2_0[23],srcz2_0[22],srcz2_0[21],srcz2_0[20],
srcz2_0[19],srcz2_0[18],srcz2_0[17],srcz2_0[16],srcz2_0[15],srcz2_0[14],srcz2_0[13],srcz2_0[12],srcz2_0[11],srcz2_0[10],
srcz2_0[9],srcz2_0[8],srcz2_0[7],srcz2_0[6],srcz2_0[5],srcz2_0[4],srcz2_0[3],srcz2_0[2],srcz2_0[1],srcz2_0[0]};
wire [31:0] srcz2_1_ = {srcz2_1[31],srcz2_1[30],
srcz2_1[29],srcz2_1[28],srcz2_1[27],srcz2_1[26],srcz2_1[25],srcz2_1[24],srcz2_1[23],srcz2_1[22],srcz2_1[21],srcz2_1[20],
srcz2_1[19],srcz2_1[18],srcz2_1[17],srcz2_1[16],srcz2_1[15],srcz2_1[14],srcz2_1[13],srcz2_1[12],srcz2_1[11],srcz2_1[10],
srcz2_1[9],srcz2_1[8],srcz2_1[7],srcz2_1[6],srcz2_1[5],srcz2_1[4],srcz2_1[3],srcz2_1[2],srcz2_1[1],srcz2_1[0]};
wire [2:0] daddasel = {daddasel_2,daddasel_1,daddasel_0};
_daddamux addamux_inst
(
	.adda_0 /* OUT */ (adda_0_[15:0]),
	.adda_1 /* OUT */ (adda_1_[15:0]),
	.adda_2 /* OUT */ (adda_2_[15:0]),
	.adda_3 /* OUT */ (adda_3_[15:0]),
	.dstd_0 /* IN */ (dstd_0_[31:0]),
	.dstd_1 /* IN */ (dstd_1_[31:0]),
	.srcd_0 /* IN */ (srcd_0_[31:0]),
	.srcd_1 /* IN */ (srcd_1_[31:0]),
	.patd_0 /* IN */ (patd_0_[31:0]),
	.patd_1 /* IN */ (patd_1_[31:0]),
	.srcz1_0 /* IN */ (srcz1_0_[31:0]),
	.srcz1_1 /* IN */ (srcz1_1_[31:0]),
	.srcz2_0 /* IN */ (srcz2_0_[31:0]),
	.srcz2_1 /* IN */ (srcz2_1_[31:0]),
	.daddasel /* IN */ (daddasel[2:0])
);
endmodule
