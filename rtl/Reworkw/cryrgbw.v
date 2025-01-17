//`include "defs.v"

module cryrgb
(
	output r_0,
	output r_1,
	output r_2,
	output r_3,
	output r_4,
	output r_5,
	output r_6,
	output r_7,
	output g_0,
	output g_1,
	output g_2,
	output g_3,
	output g_4,
	output g_5,
	output g_6,
	output g_7,
	output b_0,
	output b_1,
	output b_2,
	output b_3,
	output b_4,
	output b_5,
	output b_6,
	output b_7,
	input cry_0,
	input cry_1,
	input cry_2,
	input cry_3,
	input cry_4,
	input cry_5,
	input cry_6,
	input cry_7,
	input cry_8,
	input cry_9,
	input cry_10,
	input cry_11,
	input cry_12,
	input cry_13,
	input cry_14,
	input cry_15,
	input vclk,
	input mptest,
	input rgb,
	input ppd,
	input sys_clk // Generated
);
wire [7:0] r;
assign {r_7,r_6,r_5,r_4,r_3,r_2,r_1,r_0} = r[7:0];
wire [7:0] g;
assign {g_7,g_6,g_5,g_4,g_3,g_2,g_1,g_0} = g[7:0];
wire [7:0] b;
assign {b_7,b_6,b_5,b_4,b_3,b_2,b_1,b_0} = b[7:0];
wire [15:0] cry = {cry_15,cry_14,cry_13,cry_12,cry_11,cry_10,cry_9,cry_8,cry_7,cry_6,cry_5,cry_4,cry_3,cry_2,cry_1,cry_0};
_cryrgb pd3_inst
(
	.r /* OUT */ (r[7:0]),
	.g /* OUT */ (g[7:0]),
	.b /* OUT */ (b[7:0]),
	.cry /* IN */ (cry[15:0]),
	.vclk /* IN */ (vclk),
	.mptest /* IN */ (mptest),
	.rgb /* IN */ (rgb),
	.ppd /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
endmodule
