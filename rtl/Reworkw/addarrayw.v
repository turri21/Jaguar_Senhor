module addarray
(
	output [0:15] addq_0,
	output [0:15] addq_1,
	output [0:15] addq_2,
	output [0:15] addq_3,
	input [0:15] adda_0,
	input [0:15] adda_1,
	input [0:15] adda_2,
	input [0:15] adda_3,
	input [0:15] addb_0,
	input [0:15] addb_1,
	input [0:15] addb_2,
	input [0:15] addb_3,
	input daddmode_0,
	input daddmode_1,
	input daddmode_2,
	input clk_0,
	input reset_n,
	input sys_clk // Generated
);
wire [15:0] addq_0_;
assign {addq_0[15],addq_0[14],addq_0[13],addq_0[12],addq_0[11],addq_0[10],
addq_0[9],addq_0[8],addq_0[7],addq_0[6],addq_0[5],addq_0[4],addq_0[3],addq_0[2],addq_0[1],addq_0[0]} = addq_0_[15:0];
wire [15:0] addq_1_;
assign {addq_1[15],addq_1[14],addq_1[13],addq_1[12],addq_1[11],addq_1[10],
addq_1[9],addq_1[8],addq_1[7],addq_1[6],addq_1[5],addq_1[4],addq_1[3],addq_1[2],addq_1[1],addq_1[0]} = addq_1_[15:0];
wire [15:0] addq_2_;
assign {addq_2[15],addq_2[14],addq_2[13],addq_2[12],addq_2[11],addq_2[10],
addq_2[9],addq_2[8],addq_2[7],addq_2[6],addq_2[5],addq_2[4],addq_2[3],addq_2[2],addq_2[1],addq_2[0]} = addq_2_[15:0];
wire [15:0] addq_3_;
assign {addq_3[15],addq_3[14],addq_3[13],addq_3[12],addq_3[11],addq_3[10],
addq_3[9],addq_3[8],addq_3[7],addq_3[6],addq_3[5],addq_3[4],addq_3[3],addq_3[2],addq_3[1],addq_3[0]} = addq_3_[15:0];
wire [15:0] adda_0_ = {adda_0[15],adda_0[14],adda_0[13],adda_0[12],adda_0[11],adda_0[10],
adda_0[9],adda_0[8],adda_0[7],adda_0[6],adda_0[5],adda_0[4],adda_0[3],adda_0[2],adda_0[1],adda_0[0]};
wire [15:0] adda_1_ = {adda_1[15],adda_1[14],adda_1[13],adda_1[12],adda_1[11],adda_1[10],
adda_1[9],adda_1[8],adda_1[7],adda_1[6],adda_1[5],adda_1[4],adda_1[3],adda_1[2],adda_1[1],adda_1[0]};
wire [15:0] adda_2_ = {adda_2[15],adda_2[14],adda_2[13],adda_2[12],adda_2[11],adda_2[10],
adda_2[9],adda_2[8],adda_2[7],adda_2[6],adda_2[5],adda_2[4],adda_2[3],adda_2[2],adda_2[1],adda_2[0]};
wire [15:0] adda_3_ = {adda_3[15],adda_3[14],adda_3[13],adda_3[12],adda_3[11],adda_3[10],
adda_3[9],adda_3[8],adda_3[7],adda_3[6],adda_3[5],adda_3[4],adda_3[3],adda_3[2],adda_3[1],adda_3[0]};
wire [15:0] addb_0_ = {addb_0[15],addb_0[14],addb_0[13],addb_0[12],addb_0[11],addb_0[10],
addb_0[9],addb_0[8],addb_0[7],addb_0[6],addb_0[5],addb_0[4],addb_0[3],addb_0[2],addb_0[1],addb_0[0]};
wire [15:0] addb_1_ = {addb_1[15],addb_1[14],addb_1[13],addb_1[12],addb_1[11],addb_1[10],
addb_1[9],addb_1[8],addb_1[7],addb_1[6],addb_1[5],addb_1[4],addb_1[3],addb_1[2],addb_1[1],addb_1[0]};
wire [15:0] addb_2_ = {addb_2[15],addb_2[14],addb_2[13],addb_2[12],addb_2[11],addb_2[10],
addb_2[9],addb_2[8],addb_2[7],addb_2[6],addb_2[5],addb_2[4],addb_2[3],addb_2[2],addb_2[1],addb_2[0]};
wire [15:0] addb_3_ = {addb_3[15],addb_3[14],addb_3[13],addb_3[12],addb_3[11],addb_3[10],
addb_3[9],addb_3[8],addb_3[7],addb_3[6],addb_3[5],addb_3[4],addb_3[3],addb_3[2],addb_3[1],addb_3[0]};
wire [2:0] daddmode = {daddmode_2,daddmode_1,daddmode_0};
_addarray addarray_inst
(
	.addq_0 /* OUT */ (addq_0_[15:0]),
	.addq_1 /* OUT */ (addq_1_[15:0]),
	.addq_2 /* OUT */ (addq_2_[15:0]),
	.addq_3 /* OUT */ (addq_3_[15:0]),
	.adda_0 /* IN */ (adda_0_[15:0]),
	.adda_1 /* IN */ (adda_1_[15:0]),
	.adda_2 /* IN */ (adda_2_[15:0]),
	.adda_3 /* IN */ (adda_3_[15:0]),
	.addb_0 /* IN */ (addb_0_[15:0]),
	.addb_1 /* IN */ (addb_1_[15:0]),
	.addb_2 /* IN */ (addb_2_[15:0]),
	.addb_3 /* IN */ (addb_3_[15:0]),
	.daddmode /* IN */ (daddmode[2:0]),
	.clk_0 /* IN */ (clk_0),
	.reset_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

endmodule
