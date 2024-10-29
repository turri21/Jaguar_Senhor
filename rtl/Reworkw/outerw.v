module outer
(
	output gpu_dout_11_out,
	output gpu_dout_11_oe,
	input gpu_dout_11_in,
	output gpu_dout_12_out,
	output gpu_dout_12_oe,
	input gpu_dout_12_in,
	output gpu_dout_13_out,
	output gpu_dout_13_oe,
	input gpu_dout_13_in,
	output gpu_dout_14_out,
	output gpu_dout_14_oe,
	input gpu_dout_14_in,
	output gpu_dout_15_out,
	output gpu_dout_15_oe,
	input gpu_dout_15_in,
	output a1updatei,
	output a1fupdatei,
	output a2updatei,
	output blit_breq_0,
	output blit_breq_1,
	output blit_int,
	output instart,
	output sshftld,
	input active,
	input clk,
	input cmdld,
	input countld,
	input [0:31] gpu_din,
	input indone,
	input reset_n,
	input statrd,
	input stopped,
	input sys_clk // Generated
);

wire [15:11] gpu_dout_out;
assign {gpu_dout_15_out,gpu_dout_14_out,gpu_dout_13_out,gpu_dout_12_out,gpu_dout_11_out} = gpu_dout_out[15:11];
assign {gpu_dout_15_oe,gpu_dout_14_oe,gpu_dout_13_oe,gpu_dout_12_oe} = {4{gpu_dout_11_oe}};
wire [1:0] blit_breq;
assign {blit_breq_1,blit_breq_0} = blit_breq[1:0];
wire [31:0] gpu_din_ = {gpu_din[31],gpu_din[30],
gpu_din[29],gpu_din[28],gpu_din[27],gpu_din[26],gpu_din[25],gpu_din[24],gpu_din[23],gpu_din[22],gpu_din[21],gpu_din[20],
gpu_din[19],gpu_din[18],gpu_din[17],gpu_din[16],gpu_din[15],gpu_din[14],gpu_din[13],gpu_din[12],gpu_din[11],gpu_din[10],
gpu_din[9],gpu_din[8],gpu_din[7],gpu_din[6],gpu_din[5],gpu_din[4],gpu_din[3],gpu_din[2],gpu_din[1],gpu_din[0]};

_outer outer_inst
(
	.gpu_dout_out /* BUS */ (gpu_dout_out[15:11]),
	.gpu_dout_15_11_oe /* BUS */ (gpu_dout_11_oe),// = statrd; already handled
	.a1updatei /* OUT */ (a1updatei),
	.a1fupdatei /* OUT */ (a1fupdatei),
	.a2updatei /* OUT */ (a2updatei),
	.blit_breq /* OUT */ (blit_breq[1:0]),
	.blit_int /* OUT */ (blit_int),
	.instart /* OUT */ (instart),
	.sshftld /* OUT */ (sshftld),
	.active /* IN */ (active),
	.clk /* IN */ (clk),
	.cmdld /* IN */ (cmdld),
	.countld /* IN */ (countld),
	.gpu_din /* IN */ (gpu_din_[31:0]),
	.indone /* IN */ (indone),
	.reset_n /* IN */ (reset_n),
	.statrd /* IN */ (statrd),
	.stopped /* IN */ (stopped),
	.sys_clk(sys_clk) // Generated
);
endmodule
