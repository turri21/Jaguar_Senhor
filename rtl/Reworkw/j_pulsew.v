module j_pulse
(
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input b_0,
	input b_1,
	input b_2,
	input b_3,
	input b_4,
	input b_5,
	input b_6,
	input stop,
	input clk,
	input resetl,
	output pulse,
	input sys_clk // Generated
);
wire [7:0] a = {a_7,a_6,a_5,a_4,a_3,a_2,a_1,a_0};
wire [6:0] b = {b_6,b_5,b_4,b_3,b_2,b_1,b_0};
_j_pulse ldac_index_0_inst
(
	.a /* IN */ (a[7:0]),
	.b /* IN */ (b[6:0]),
	.stop /* IN */ (stop),
	.clk /* IN */ (clk),
	.resetl /* IN */ (resetl),
	.pulse /* OUT */ (pulse),
	.sys_clk(sys_clk) // Generated
);
endmodule
