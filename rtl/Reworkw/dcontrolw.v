module dcontrol
(
	output daddasel_0,
	output daddasel_1,
	output daddasel_2,
	output daddbsel_0,
	output daddbsel_1,
	output daddbsel_2,
	output daddmode_0,
	output daddmode_1,
	output daddmode_2,
	output data_sel_0,
	output data_sel_1,
	output daddq_sel,
	output gourd,
	output gourz,
	output patdadd,
	output patfadd,
	output srcz1add,
	output srcz2add,
	input atick_0,
	input atick_1,
	input clk_0,
	input cmdld,
	input dwrite,
	input dzwrite,
	input dzwrite1,
	input [0:31] gpu_din,
	input srcdreadd,
	input srcshade,
	input sys_clk // Generated
);

wire [2:0] daddasel;
assign {daddasel_2,daddasel_1,daddasel_0} = daddasel[2:0];
wire [2:0] daddbsel;
assign {daddbsel_2,daddbsel_1,daddbsel_0} = daddbsel[2:0];
wire [2:0] daddmode;
assign {daddmode_2,daddmode_1,daddmode_0} = daddmode[2:0];
wire [1:0] data_sel;
assign {data_sel_1,data_sel_0} = data_sel[1:0];
wire [1:0] atick = {atick_1,atick_0};
wire [31:0] gpu_din_ = {gpu_din[31],gpu_din[30],
gpu_din[29],gpu_din[28],gpu_din[27],gpu_din[26],gpu_din[25],gpu_din[24],gpu_din[23],gpu_din[22],gpu_din[21],gpu_din[20],
gpu_din[19],gpu_din[18],gpu_din[17],gpu_din[16],gpu_din[15],gpu_din[14],gpu_din[13],gpu_din[12],gpu_din[11],gpu_din[10],
gpu_din[9],gpu_din[8],gpu_din[7],gpu_din[6],gpu_din[5],gpu_din[4],gpu_din[3],gpu_din[2],gpu_din[1],gpu_din[0]};

_dcontrol dcontrol_inst
(
	.daddasel /* OUT */ (daddasel[2:0]),
	.daddbsel /* OUT */ (daddbsel[2:0]),
	.daddmode /* OUT */ (daddmode[2:0]),
	.data_sel /* OUT */ (data_sel[1:0]),
	.daddq_sel /* OUT */ (daddq_sel),
	.gourd /* OUT */ (gourd),
	.gourz /* OUT */ (gourz),
	.patdadd /* OUT */ (patdadd),
	.patfadd /* OUT */ (patfadd),
	.srcz1add /* OUT */ (srcz1add),
	.srcz2add /* OUT */ (srcz2add),
	.atick /* IN */ (atick[1:0]),
	.clk /* IN */ (clk_0),
	.cmdld /* IN */ (cmdld),
	.dwrite /* IN */ (dwrite),
	.dzwrite /* IN */ (dzwrite),
	.dzwrite1 /* IN */ (dzwrite1),
	.gpu_din /* IN */ (gpu_din_[31:0]),
	.srcdreadd /* IN */ (srcdreadd),
	.srcshade /* IN */ (srcshade),
	.sys_clk(sys_clk) // Generated
);
endmodule
