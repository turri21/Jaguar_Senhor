module acontrol
(
	output addasel_0,
	output addasel_1,
	output addasel_2,
	output addbsel_0,
	output addbsel_1,
	output addqsel,
	output adda_xconst_0,
	output adda_xconst_1,
	output adda_xconst_2,
	output adda_yconst,
	output addareg,
	output a1fracldi,
	output a1ptrldi,
	output a2ptrldi,
	output dend_0,
	output dend_1,
	output dend_2,
	output dend_3,
	output dend_4,
	output dend_5,
	output dsta2,
	output dstart_0,
	output dstart_1,
	output dstart_2,
	output dstart_3,
	output dstart_4,
	output dstart_5,
	output [0:15] dstxp,
	output modx_0,
	output modx_1,
	output modx_2,
	output phrase_cycle,
	output phrase_mode,
	output pixsize_0,
	output pixsize_1,
	output pixsize_2,
	output pwidth_0,
	output pwidth_1,
	output pwidth_2,
	output pwidth_3,
	output srcshift_0,
	output srcshift_1,
	output srcshift_2,
	output srcshift_3,
	output srcshift_4,
	output srcshift_5,
	output suba_x,
	output suba_y,
	input a1_pixsize_0,
	input a1_pixsize_1,
	input a1_pixsize_2,
	input [0:14] a1_win_x,
	input [0:15] a1_x,
	input a1addx_0,
	input a1addx_1,
	input a1addy,
	input a1xsign,
	input a1ysign,
	input a1updatei,
	input a1fupdatei,
	input a2_pixsize_0,
	input a2_pixsize_1,
	input a2_pixsize_2,
	input [0:15] a2_x,
	input a2addx_0,
	input a2addx_1,
	input a2addy,
	input a2xsign,
	input a2ysign,
	input a2updatei,
	input atick_0,
	input atick_1,
	input aticki_0,
	input bcompen,
	input clk,
	input cmdld,
	input dest_cycle_1,
	input dsta_addi,
	input [0:31] gpu_din,
	input icount_0,
	input icount_1,
	input icount_2,
	input inner0,
	input pixa_0,
	input pixa_1,
	input pixa_2,
	input srca_addi,
	input srcen,
	input sshftld,
	input step_inner,
	input sys_clk // Generated
);
wire [2:0] addasel;
assign {addasel_2,addasel_1,addasel_0} = addasel[2:0];
wire [1:0] addbsel;
assign {addbsel_1,addbsel_0} = addbsel[1:0];
wire [2:0] adda_xconst;
assign {adda_xconst_2,adda_xconst_1,adda_xconst_0} = adda_xconst[2:0];
wire [5:0] dend;
assign {dend_5,dend_4,dend_3,dend_2,dend_1,dend_0} = dend[5:0];
wire [5:0] dstart;
assign {dstart_5,dstart_4,dstart_3,dstart_2,dstart_1,dstart_0} = dstart[5:0];
wire [15:0] dstxp_;
assign {dstxp[15],dstxp[14],dstxp[13],dstxp[12],dstxp[11],dstxp[10],
dstxp[9],dstxp[8],dstxp[7],dstxp[6],dstxp[5],dstxp[4],dstxp[3],dstxp[2],dstxp[1],dstxp[0]} = dstxp_[15:0];
wire [2:0] modx;
assign {modx_2,modx_1,modx_0} = modx[2:0];
wire [2:0] pixsize;
assign {pixsize_2,pixsize_1,pixsize_0} = pixsize[2:0];
wire [3:0] pwidth;
assign {pwidth_3,pwidth_2,pwidth_1,pwidth_0} = pwidth[3:0];
wire [5:0] srcshift;
assign {srcshift_5,srcshift_4,srcshift_3,srcshift_2,srcshift_1,srcshift_0} = srcshift[5:0];
wire [2:0] a1_pixsize = {a1_pixsize_2,a1_pixsize_1,a1_pixsize_0};
wire [14:0] a1_win_x_ = {a1_win_x[14],a1_win_x[13],a1_win_x[12],a1_win_x[11],a1_win_x[10],
a1_win_x[9],a1_win_x[8],a1_win_x[7],a1_win_x[6],a1_win_x[5],a1_win_x[4],a1_win_x[3],a1_win_x[2],a1_win_x[1],a1_win_x[0]};
wire [15:0] a1_x_ = {a1_x[15],a1_x[14],a1_x[13],a1_x[12],a1_x[11],a1_x[10],
a1_x[9],a1_x[8],a1_x[7],a1_x[6],a1_x[5],a1_x[4],a1_x[3],a1_x[2],a1_x[1],a1_x[0]};
wire [1:0] a1addx = {a1addx_1,a1addx_0};
wire [2:0] a2_pixsize = {a2_pixsize_2,a2_pixsize_1,a2_pixsize_0};
wire [15:0] a2_x_ = {a2_x[15],a2_x[14],a2_x[13],a2_x[12],a2_x[11],a2_x[10],
a2_x[9],a2_x[8],a2_x[7],a2_x[6],a2_x[5],a2_x[4],a2_x[3],a2_x[2],a2_x[1],a2_x[0]};
wire [1:0] a2addx = {a2addx_1,a2addx_0};
wire [1:0] atick = {atick_1,atick_0};
wire [31:0] gpu_din_ = {gpu_din[31],gpu_din[30],
gpu_din[29],gpu_din[28],gpu_din[27],gpu_din[26],gpu_din[25],gpu_din[24],gpu_din[23],gpu_din[22],gpu_din[21],gpu_din[20],
gpu_din[19],gpu_din[18],gpu_din[17],gpu_din[16],gpu_din[15],gpu_din[14],gpu_din[13],gpu_din[12],gpu_din[11],gpu_din[10],
gpu_din[9],gpu_din[8],gpu_din[7],gpu_din[6],gpu_din[5],gpu_din[4],gpu_din[3],gpu_din[2],gpu_din[1],gpu_din[0]};
wire [2:0] icount = {icount_2,icount_1,icount_0};
wire [2:0] pixa = {pixa_2,pixa_1,pixa_0};

_acontrol acontrol_inst
(
	.addasel /* OUT */ (addasel[2:0]),
	.addbsel /* OUT */ (addbsel[1:0]),
	.addqsel /* OUT */ (addqsel),
	.adda_xconst /* OUT */ (adda_xconst[2:0]),
	.adda_yconst /* OUT */ (adda_yconst),
	.addareg /* OUT */ (addareg),
	.a1fracldi /* OUT */ (a1fracldi),
	.a1ptrldi /* OUT */ (a1ptrldi),
	.a2ptrldi /* OUT */ (a2ptrldi),
	.dend /* OUT */ (dend[5:0]),
	.dsta2 /* OUT */ (dsta2),
	.dstart /* OUT */ (dstart[5:0]),
	.dstxp /* OUT */ (dstxp_[15:0]),
	.modx /* OUT */ (modx[2:0]),
	.phrase_cycle /* OUT */ (phrase_cycle),
	.phrase_mode /* OUT */ (phrase_mode),
	.pixsize /* OUT */ (pixsize[2:0]),
	.pwidth /* OUT */ (pwidth[3:0]),
	.srcshift /* OUT */ (srcshift[5:0]),
	.suba_x /* OUT */ (suba_x),
	.suba_y /* OUT */ (suba_y),
	.a1_pixsize /* IN */ (a1_pixsize[2:0]),
	.a1_win_x /* IN */ (a1_win_x_[14:0]),
	.a1_x /* IN */ (a1_x_[15:0]),
	.a1addx /* IN */ (a1addx[1:0]),
	.a1addy /* IN */ (a1addy),
	.a1xsign /* IN */ (a1xsign),
	.a1ysign /* IN */ (a1ysign),
	.a1updatei /* IN */ (a1updatei),
	.a1fupdatei /* IN */ (a1fupdatei),
	.a2_pixsize /* IN */ (a2_pixsize[2:0]),
	.a2_x /* IN */ (a2_x_[15:0]),
	.a2addx /* IN */ (a2addx[1:0]),
	.a2addy /* IN */ (a2addy),
	.a2xsign /* IN */ (a2xsign),
	.a2ysign /* IN */ (a2ysign),
	.a2updatei /* IN */ (a2updatei),
	.atick /* IN */ (atick[1:0]),
	.aticki_0 /* IN */ (aticki_0),
	.bcompen /* IN */ (bcompen),
	.clk /* IN */ (clk),
	.cmdld /* IN */ (cmdld),
	.dest_cycle_1 /* IN */ (dest_cycle_1),
	.dsta_addi /* IN */ (dsta_addi),
	.gpu_din /* IN */ (gpu_din_[31:0]),
	.icount /* IN */ (icount[2:0]),
	.inner0 /* IN */ (inner0),
	.pixa /* IN */ (pixa[2:0]),
	.srca_addi /* IN */ (srca_addi),
	.srcen /* IN */ (srcen),
	.sshftld /* IN */ (sshftld),
	.step_inner /* IN */ (step_inner),
	.sys_clk(sys_clk) // Generated
);
endmodule
