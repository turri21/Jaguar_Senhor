//`include "defs.v"

module blitstop
(
	output gpu_dout_1_out,
	output gpu_dout_1_oe,
	input gpu_dout_1_in,
	output stopped,
	output reset_n,
	input clk_0,
	input dwrite_1,
	input [0:31] gpu_din,
	input nowrite,
	input statrd,
	input stopld,
	input xreset_n,
	input sys_clk // Generated
);

wire [31:0] gpu_din_ = {gpu_din[31],gpu_din[30],
gpu_din[29],gpu_din[28],gpu_din[27],gpu_din[26],gpu_din[25],gpu_din[24],gpu_din[23],gpu_din[22],gpu_din[21],gpu_din[20],
gpu_din[19],gpu_din[18],gpu_din[17],gpu_din[16],gpu_din[15],gpu_din[14],gpu_din[13],gpu_din[12],gpu_din[11],gpu_din[10],
gpu_din[9],gpu_din[8],gpu_din[7],gpu_din[6],gpu_din[5],gpu_din[4],gpu_din[3],gpu_din[2],gpu_din[1],gpu_din[0]};

_blitstop blitstop_inst
(
	.gpu_dout_1_out /* BUS */ (gpu_dout_1_out),
	.gpu_dout_1_oe /* BUS */ (gpu_dout_1_oe),// = statrd; already handled
	.stopped /* OUT */ (stopped),
	.reset_n /* OUT */ (reset_n),
	.clk /* IN */ (clk_0),
	.dwrite_1 /* IN */ (dwrite_1),
	.gpu_din /* IN */ (gpu_din_[31:0]),
	.nowrite /* IN */ (nowrite),
	.statrd /* IN */ (statrd),
	.stopld /* IN */ (stopld),
	.xreset_n /* IN */ (xreset_n),
	.sys_clk(sys_clk) // Generated
);
endmodule
