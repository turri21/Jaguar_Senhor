module brlshift
(
	output [0:31] brlq,
	output brl_carry,
	input brlmux_0,
	input brlmux_1,
	input [0:31] srcdp,
	input [0:31] brld
);
wire [31:0] brlq_;
assign {brlq[31],brlq[30],
brlq[29],brlq[28],brlq[27],brlq[26],brlq[25],brlq[24],brlq[23],brlq[22],brlq[21],brlq[20],
brlq[19],brlq[18],brlq[17],brlq[16],brlq[15],brlq[14],brlq[13],brlq[12],brlq[11],brlq[10],
brlq[9],brlq[8],brlq[7],brlq[6],brlq[5],brlq[4],brlq[3],brlq[2],brlq[1],brlq[0]} = brlq_[31:0];
wire [1:0] brlmux = {brlmux_1,brlmux_0};
wire [31:0] srcdp_ = {srcdp[31],srcdp[30],
srcdp[29],srcdp[28],srcdp[27],srcdp[26],srcdp[25],srcdp[24],srcdp[23],srcdp[22],srcdp[21],srcdp[20],
srcdp[19],srcdp[18],srcdp[17],srcdp[16],srcdp[15],srcdp[14],srcdp[13],srcdp[12],srcdp[11],srcdp[10],
srcdp[9],srcdp[8],srcdp[7],srcdp[6],srcdp[5],srcdp[4],srcdp[3],srcdp[2],srcdp[1],srcdp[0]};
wire [31:0] brld_ = {brld[31],brld[30],
brld[29],brld[28],brld[27],brld[26],brld[25],brld[24],brld[23],brld[22],brld[21],brld[20],
brld[19],brld[18],brld[17],brld[16],brld[15],brld[14],brld[13],brld[12],brld[11],brld[10],
brld[9],brld[8],brld[7],brld[6],brld[5],brld[4],brld[3],brld[2],brld[1],brld[0]};

_brlshift brl_inst
(
	.brlq /* OUT */ (brlq_[31:0]),
	.brl_carry /* OUT */ (brl_carry),
	.brlmux /* IN */ (brlmux[1:0]),
	.srcdp /* IN */ (srcdp_[31:0]),
	.brld /* IN */ (brld_[31:0])
);
endmodule
