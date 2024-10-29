module arith
(
	output [0:31] gpu_data_out,
	output [0:31] gpu_data_oe,
	input [0:31] gpu_data_in,
	output gpu_dout_0_out,
	output gpu_dout_0_oe,
	input gpu_dout_0_in,
	output gpu_dout_1_out,
	output gpu_dout_1_oe,
	input gpu_dout_1_in,
	output gpu_dout_2_out,
	output gpu_dout_2_oe,
	input gpu_dout_2_in,
	output carry_flag,
	output nega_flag,
	output [0:31] result,
	output zero_flag,
	input accumrd, // jerry only
	input [0:31] dstdp,
	input [0:31] srcdp,
	input srcd_31,
	input [0:2] alufunc,
	input brlmux_0,
	input brlmux_1,
	input clk,
	input flagld,
	input flagrd,
	input flagwr,
	input [0:31] gpu_din,
	input macop,
	input modulowr, // jerry only
	input multsel,
	input multsign,
	input reset_n,
	input resld,
	input ressel_0,
	input ressel_1,
	input ressel_2,
	input rev_sub,
	input satsz_0,
	input satsz_1,
	input sys_clk // Generated
);
parameter JERRY = 0;

wire [31:0] gpu_data_out_;
assign {gpu_data_out[31],gpu_data_out[30],
gpu_data_out[29],gpu_data_out[28],gpu_data_out[27],gpu_data_out[26],gpu_data_out[25],gpu_data_out[24],gpu_data_out[23],gpu_data_out[22],gpu_data_out[21],gpu_data_out[20],
gpu_data_out[19],gpu_data_out[18],gpu_data_out[17],gpu_data_out[16],gpu_data_out[15],gpu_data_out[14],gpu_data_out[13],gpu_data_out[12],gpu_data_out[11],gpu_data_out[10],
gpu_data_out[9],gpu_data_out[8],gpu_data_out[7],gpu_data_out[6],gpu_data_out[5],gpu_data_out[4],gpu_data_out[3],gpu_data_out[2],gpu_data_out[1],gpu_data_out[0]} = gpu_data_out_[31:0];
assign {gpu_data_oe[31],gpu_data_oe[30],
gpu_data_oe[29],gpu_data_oe[28],gpu_data_oe[27],gpu_data_oe[26],gpu_data_oe[25],gpu_data_oe[24],gpu_data_oe[23],gpu_data_oe[22],gpu_data_oe[21],gpu_data_oe[20],
gpu_data_oe[19],gpu_data_oe[18],gpu_data_oe[17],gpu_data_oe[16],gpu_data_oe[15],gpu_data_oe[14],gpu_data_oe[13],gpu_data_oe[12],gpu_data_oe[11],gpu_data_oe[10],
gpu_data_oe[9],gpu_data_oe[8],gpu_data_oe[7],gpu_data_oe[6],gpu_data_oe[5],gpu_data_oe[4],gpu_data_oe[3],gpu_data_oe[2],gpu_data_oe[1]} = {31{gpu_data_oe[0]}};
wire [2:0] gpu_dout_out;
assign {gpu_dout_2_out,gpu_dout_1_out,gpu_dout_0_out} = gpu_dout_out[2:0];
assign {gpu_dout_2_oe,gpu_dout_1_oe} = {2{gpu_dout_0_oe}};
wire [31:0] result_;
assign {result[31],result[30],
result[29],result[28],result[27],result[26],result[25],result[24],result[23],result[22],result[21],result[20],
result[19],result[18],result[17],result[16],result[15],result[14],result[13],result[12],result[11],result[10],
result[9],result[8],result[7],result[6],result[5],result[4],result[3],result[2],result[1],result[0]} = result_[31:0];
wire [31:0] dstdp_ = {dstdp[31],dstdp[30],
dstdp[29],dstdp[28],dstdp[27],dstdp[26],dstdp[25],dstdp[24],dstdp[23],dstdp[22],dstdp[21],dstdp[20],
dstdp[19],dstdp[18],dstdp[17],dstdp[16],dstdp[15],dstdp[14],dstdp[13],dstdp[12],dstdp[11],dstdp[10],
dstdp[9],dstdp[8],dstdp[7],dstdp[6],dstdp[5],dstdp[4],dstdp[3],dstdp[2],dstdp[1],dstdp[0]};
wire [31:0] srcdp_ = {srcdp[31],srcdp[30],
srcdp[29],srcdp[28],srcdp[27],srcdp[26],srcdp[25],srcdp[24],srcdp[23],srcdp[22],srcdp[21],srcdp[20],
srcdp[19],srcdp[18],srcdp[17],srcdp[16],srcdp[15],srcdp[14],srcdp[13],srcdp[12],srcdp[11],srcdp[10],
srcdp[9],srcdp[8],srcdp[7],srcdp[6],srcdp[5],srcdp[4],srcdp[3],srcdp[2],srcdp[1],srcdp[0]};
wire [2:0] alufunc_ = {alufunc[2],alufunc[1],alufunc[0]};
wire [1:0] brlmux = {brlmux_1,brlmux_0};
wire [31:0] gpu_din_ = {gpu_din[31],gpu_din[30],
gpu_din[29],gpu_din[28],gpu_din[27],gpu_din[26],gpu_din[25],gpu_din[24],gpu_din[23],gpu_din[22],gpu_din[21],gpu_din[20],
gpu_din[19],gpu_din[18],gpu_din[17],gpu_din[16],gpu_din[15],gpu_din[14],gpu_din[13],gpu_din[12],gpu_din[11],gpu_din[10],
gpu_din[9],gpu_din[8],gpu_din[7],gpu_din[6],gpu_din[5],gpu_din[4],gpu_din[3],gpu_din[2],gpu_din[1],gpu_din[0]};
wire [2:0] ressel = {ressel_2,ressel_1,ressel_0};
wire [1:0] satsz = {satsz_1,satsz_0};
_arith #(.JERRY(JERRY)) arith_inst
(
	.gpu_data_out /* BUS */ (gpu_data_out_[31:0]), // jerry only
	.gpu_data_oe /* BUS */ (gpu_data_oe[0]), // jerry only
	.gpu_dout_out /* BUS */ (gpu_dout_out[2:0]),
	.gpu_dout_oe /* BUS */ (gpu_dout_0_oe),
	.carry_flag /* OUT */ (carry_flag),
	.nega_flag /* OUT */ (nega_flag),
	.result /* OUT */ (result_[31:0]),
	.zero_flag /* OUT */ (zero_flag),
	.accumrd /* IN */ (accumrd), // jerry only
	.dstdp /* IN */ (dstdp_[31:0]),
	.srcdp /* IN */ (srcdp_[31:0]),
	.srcd_31 /* IN */ (srcd_31),
	.alufunc /* IN */ (alufunc_[2:0]),
	.brlmux /* IN */ (brlmux[1:0]),
	.clk /* IN */ (clk),
	.flagld /* IN */ (flagld),
	.flagrd /* IN */ (flagrd),
	.flagwr /* IN */ (flagwr),
	.gpu_din /* IN */ (gpu_din_[31:0]),
	.macop /* IN */ (macop),
	.modulowr /* IN */ (modulowr), // jerry only
	.multsel /* IN */ (multsel),
	.multsign /* IN */ (multsign),
	.reset_n /* IN */ (reset_n),
	.resld /* IN */ (resld),
	.ressel /* IN */ (ressel[2:0]),
	.rev_sub /* IN */ (rev_sub),
	.satsz /* IN */ (satsz[1:0]), // satsz[1] tom only
	.sys_clk(sys_clk) // Generated
);
endmodule
