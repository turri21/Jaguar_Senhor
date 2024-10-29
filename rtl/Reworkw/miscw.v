//`include "defs.v"
// altera message_off 10036

module misc
(
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input din_11,
	input din_12,
	input din_13,
	input din_14,
	input din_15,
	input clk,
	input resetl,
	input pit0w,
	input pit1w,
	input int1w,
	input int2w,
	input intr,
	input obint,
	input gpuint,
	input vint,
	input dint,
	input refrate_0,
	input refrate_1,
	input refrate_2,
	input refrate_3,
	input refback,
	input ack,
	input startref,
	input wet,
	input pit0r,
	input pit1r,
	input tcount,
	input test3r,
	output ihandler,
	output tint,
	output refreq,
	output intl,
	output dr_0_out,
	output dr_0_oe,
	input dr_0_in,
	output dr_1_out,
	output dr_1_oe,
	input dr_1_in,
	output dr_2_out,
	output dr_2_oe,
	input dr_2_in,
	output dr_3_out,
	output dr_3_oe,
	input dr_3_in,
	output dr_4_out,
	output dr_4_oe,
	input dr_4_in,
	output dr_5_out,
	output dr_5_oe,
	input dr_5_in,
	output dr_6_out,
	output dr_6_oe,
	input dr_6_in,
	output dr_7_out,
	output dr_7_oe,
	input dr_7_in,
	output dr_8_out,
	output dr_8_oe,
	input dr_8_in,
	output dr_9_out,
	output dr_9_oe,
	input dr_9_in,
	output dr_10_out,
	output dr_10_oe,
	input dr_10_in,
	output dr_11_out,
	output dr_11_oe,
	input dr_11_in,
	output dr_12_out,
	output dr_12_oe,
	input dr_12_in,
	output dr_13_out,
	output dr_13_oe,
	input dr_13_in,
	output dr_14_out,
	output dr_14_oe,
	input dr_14_in,
	output dr_15_out,
	output dr_15_oe,
	input dr_15_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	input sys_clk // Generated
);
wire [15:0] din = {din_15,din_14,din_13,din_12,din_11,din_10,din_9,din_8,din_7,din_6,din_5,din_4,din_3,din_2,din_1,din_0};
wire [3:0] refrate = {refrate_3,refrate_2,refrate_1,refrate_0};
wire [15:0] dr_out;
assign {dr_15_out,dr_14_out,dr_13_out,dr_12_out,dr_11_out,dr_10_out,dr_9_out,dr_8_out,dr_7_out,dr_6_out,dr_5_out,dr_4_out,dr_3_out,dr_2_out,dr_1_out,dr_0_out} = dr_out[15:0];
wire dr_15_12_oe;
assign dr_15_oe = dr_15_12_oe | dr_0_oe;
assign dr_14_oe = dr_15_12_oe | dr_0_oe;
assign dr_13_oe = dr_15_12_oe | dr_0_oe;
assign dr_12_oe = dr_15_12_oe | dr_0_oe;
assign dr_11_oe = dr_0_oe;
assign dr_10_oe = dr_0_oe;
assign dr_9_oe = dr_0_oe;
assign dr_8_oe = dr_0_oe;
assign dr_7_oe = dr_0_oe;
assign dr_6_oe = dr_0_oe;
assign dr_5_oe = dr_0_oe;
assign dr_4_oe = dr_0_oe;
assign dr_3_oe = dr_0_oe;
assign dr_2_oe = dr_0_oe;
assign dr_1_oe = dr_0_oe;
// TOM.NET (465) - misc_ : misc
_misc misc__inst
(
	.din /* IN */ (din[15:0]),
	.clk /* IN */ (clk),
	.resetl /* IN */ (resetl),
	.pit0w /* IN */ (pit0w),
	.pit1w /* IN */ (pit1w),
	.int1w /* IN */ (int1w),
	.int2w /* IN */ (int2w),
	.intr /* IN */ (intr),
	.obint /* IN */ (obint),
	.gpuint /* IN */ (gpuint),
	.vint /* IN */ (vint),
	.dint /* IN */ (dint),
	.refrate /* IN */ (refrate[3:0]),
	.refback /* IN */ (refback),
	.ack /* IN */ (ack),
	.startref /* IN */ (startref),
	.wet /* IN */ (wet),
	.pit0r /* IN */ (pit0r),
	.pit1r /* IN */ (pit1r),
	.tcount /* IN */ (tcount),
	.test3r /* IN */ (test3r),
	.ihandler /* OUT */ (ihandler),
	.tint /* OUT */ (tint),
	.refreq /* OUT */ (refreq),
	.intl /* OUT */ (intl),
	.dr_out /* BUS */ (dr_out[15:0]),
	.dr_oe /* BUS */ (dr_0_oe),
	.dr_15_12_oe /* BUS */ (dr_15_12_oe), // test3r dr[11:0] driven by vid
	.mreq_out /* BUS */ (mreq_out),
	.mreq_oe /* BUS */ (mreq_oe),
	.mreq_in /* BUS */ (mreq_in),
	.sys_clk(sys_clk) // Generated
);

endmodule
