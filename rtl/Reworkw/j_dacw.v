module j_dac
(
	input resetl,
	input clk,
	input dac1w,
	input dac2w,
	input tint_0,
	input ts,
	input dspd_0,
	input dspd_1,
	input dspd_2,
	input dspd_3,
	input dspd_4,
	input dspd_5,
	input dspd_6,
	input dspd_7,
	input dspd_8,
	input dspd_9,
	input dspd_10,
	input dspd_11,
	input dspd_12,
	input dspd_13,
	input dspd_14,
	input dspd_15,
	output rdac_0,
	output rdac_1,
	output ldac_0,
	output ldac_1,
	input sys_clk // Generated
);
wire [15:0] dspd = {dspd_15,dspd_14,dspd_13,dspd_12,dspd_11,dspd_10,
dspd_9,dspd_8,dspd_7,dspd_6,dspd_5,dspd_4,dspd_3,dspd_2,dspd_1,dspd_0};
wire [1:0] ldac;
assign {ldac_1,ldac_0} = ldac[1:0];
wire [1:0] rdac;
assign {rdac_1,rdac_0} = rdac[1:0];
_j_dac dac_inst
(
	.resetl /* IN */ (resetl),
	.clk /* IN */ (clk),
	.dac1w /* IN */ (dac1w),
	.dac2w /* IN */ (dac2w),
	.tint_0 /* IN */ (tint_0),
	.ts /* IN */ (ts),
	.dspd /* IN */ (dspd[15:0]),
	.rdac /* OUT */ (rdac[1:0]),
	.ldac /* OUT */ (ldac[1:0]),
	.sys_clk(sys_clk) // Generated
);
endmodule
