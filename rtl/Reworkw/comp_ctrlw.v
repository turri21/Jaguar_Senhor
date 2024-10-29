module comp_ctrl
(
	output dbinh_n_0,
	output dbinh_n_1,
	output dbinh_n_2,
	output dbinh_n_3,
	output dbinh_n_4,
	output dbinh_n_5,
	output dbinh_n_6,
	output dbinh_n_7,
	output nowrite,
	input bcompen,
	input big_pix,
	input bkgwren,
	input clk,
	input dcomp_0,
	input dcomp_1,
	input dcomp_2,
	input dcomp_3,
	input dcomp_4,
	input dcomp_5,
	input dcomp_6,
	input dcomp_7,
	input dcompen,
	input icount_0,
	input icount_1,
	input icount_2,
	input pixsize_0,
	input pixsize_1,
	input pixsize_2,
	input phrase_mode,
	input srcd_0,
	input srcd_1,
	input srcd_2,
	input srcd_3,
	input srcd_4,
	input srcd_5,
	input srcd_6,
	input srcd_7,
	input step_inner,
	input zcomp_0,
	input zcomp_1,
	input zcomp_2,
	input zcomp_3,
	input sys_clk // Generated
);

wire [7:0] dbinh_n;
assign {dbinh_n_7,dbinh_n_6,dbinh_n_5,dbinh_n_4,dbinh_n_3,dbinh_n_2,dbinh_n_1,dbinh_n_0} = dbinh_n[7:0];
wire [7:0] dcomp = {dcomp_7,dcomp_6,dcomp_5,dcomp_4,dcomp_3,dcomp_2,dcomp_1,dcomp_0};
wire [2:0] icount = {icount_2,icount_1,icount_0};
wire [2:0] pixsize = {pixsize_2,pixsize_1,pixsize_0};
wire [7:0] srcd = {srcd_7,srcd_6,srcd_5,srcd_4,srcd_3,srcd_2,srcd_1,srcd_0};
wire [3:0] zcomp = {zcomp_3,zcomp_2,zcomp_1,zcomp_0};

_comp_ctrl comp_ctrl_inst
(
	.dbinh_n /* OUT */ (dbinh_n[7:0]),
	.nowrite /* OUT */ (nowrite),
	.bcompen /* IN */ (bcompen),
	.big_pix /* IN */ (big_pix),
	.bkgwren /* IN */ (bkgwren),
	.clk /* IN */ (clk),
	.dcomp /* IN */ (dcomp[7:0]),
	.dcompen /* IN */ (dcompen),
	.icount /* IN */ (icount[2:0]),
	.pixsize /* IN */ (pixsize[2:0]),
	.phrase_mode /* IN */ (phrase_mode),
	.srcd /* IN */ (srcd[7:0]),
	.step_inner /* IN */ (step_inner),
	.zcomp /* IN */ (zcomp[3:0]),
	.sys_clk(sys_clk) // Generated
);
endmodule
