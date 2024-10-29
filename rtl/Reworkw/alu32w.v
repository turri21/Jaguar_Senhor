module alu32
(
	output [0:31] aluq,
	output alu_co,
	input [0:31] alua,
	input [0:31] alub,
	input carry_flag,
	input [0:2] alufunc,
	input dstdp_31,
	input rev_subp
);
wire [31:0] aluq_;
assign {aluq[31],aluq[30],
aluq[29],aluq[28],aluq[27],aluq[26],aluq[25],aluq[24],aluq[23],aluq[22],aluq[21],aluq[20],
aluq[19],aluq[18],aluq[17],aluq[16],aluq[15],aluq[14],aluq[13],aluq[12],aluq[11],aluq[10],
aluq[9],aluq[8],aluq[7],aluq[6],aluq[5],aluq[4],aluq[3],aluq[2],aluq[1],aluq[0]} = aluq_[31:0];
wire [31:0] alua_ = {alua[31],alua[30],
alua[29],alua[28],alua[27],alua[26],alua[25],alua[24],alua[23],alua[22],alua[21],alua[20],
alua[19],alua[18],alua[17],alua[16],alua[15],alua[14],alua[13],alua[12],alua[11],alua[10],
alua[9],alua[8],alua[7],alua[6],alua[5],alua[4],alua[3],alua[2],alua[1],alua[0]};
wire [31:0] alub_ = {alub[31],alub[30],
alub[29],alub[28],alub[27],alub[26],alub[25],alub[24],alub[23],alub[22],alub[21],alub[20],
alub[19],alub[18],alub[17],alub[16],alub[15],alub[14],alub[13],alub[12],alub[11],alub[10],
alub[9],alub[8],alub[7],alub[6],alub[5],alub[4],alub[3],alub[2],alub[1],alub[0]};
wire [2:0] alufunc_ = {alufunc[2],alufunc[1],alufunc[0]};
_alu32 alu_inst
(
	.aluq /* OUT */ (aluq_[31:0]),
	.alu_co /* OUT */ (alu_co),
	.alua /* IN */ (alua_[31:0]),
	.alub /* IN */ (alub_[31:0]),
	.carry_flag /* IN */ (carry_flag),
	.alufunc /* IN */ (alufunc_[2:0]),
	.dstdp_31 /* IN */ (dstdp_31),
	.rev_subp /* IN */ (rev_subp)
);
endmodule
