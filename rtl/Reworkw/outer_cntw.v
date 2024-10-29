module outer_cnt
(
	output outer0,
	input clk,
	input countld,
	input [0:31] gpu_din,
	input ocntena,
	input sys_clk // Generated
);
wire [31:0] gpu_din_ = {gpu_din[31],gpu_din[30],
gpu_din[29],gpu_din[28],gpu_din[27],gpu_din[26],gpu_din[25],gpu_din[24],gpu_din[23],gpu_din[22],gpu_din[21],gpu_din[20],
gpu_din[19],gpu_din[18],gpu_din[17],gpu_din[16],gpu_din[15],gpu_din[14],gpu_din[13],gpu_din[12],gpu_din[11],gpu_din[10],
gpu_din[9],gpu_din[8],gpu_din[7],gpu_din[6],gpu_din[5],gpu_din[4],gpu_din[3],gpu_din[2],gpu_din[1],gpu_din[0]};

_outer_cnt outer_cnt_inst
(
	.outer0 /* OUT */ (outer0),
	.clk /* IN */ (clk),
	.countld /* IN */ (countld),
	.gpu_din /* IN */ (gpu_din_[31:0]),
	.ocntena /* IN */ (ocntena),
	.sys_clk(sys_clk) // Generated
);

endmodule
