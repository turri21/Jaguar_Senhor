module systolic
(
	output mtx_atomic,
	output mtx_dover,
	output mtx_wait,
	output mtxaddr_2,
	output mtxaddr_3,
	output mtxaddr_4,
	output mtxaddr_5,
	output mtxaddr_6,
	output mtxaddr_7,
	output mtxaddr_8,
	output mtxaddr_9,
	output mtxaddr_10,
	output mtxaddr_11,
	output mtx_mreq,
	output multsel,
	output [0:15] sysins,
	output sysser,
	input movei_data,
	input clk,
	input datack,
	input [0:31] gpu_din,
	input [0:15] instruction,
	input mtxawr,
	input mtxcwr,
	input reset_n,
	input romold,
	input sys_clk // Generated
);
wire [11:2] mtxaddr;
assign {mtxaddr_11,mtxaddr_10,mtxaddr_9,mtxaddr_8,mtxaddr_7,mtxaddr_6,mtxaddr_5,mtxaddr_4,mtxaddr_3,mtxaddr_2} = mtxaddr[11:2];
wire [15:0] sysins_;
assign {sysins[15],sysins[14],sysins[13],sysins[12],sysins[11],sysins[10],
sysins[9],sysins[8],sysins[7],sysins[6],sysins[5],sysins[4],sysins[3],sysins[2],sysins[1],sysins[0]} = sysins_[15:0];
wire [31:0] gpu_din_ = {gpu_din[31],gpu_din[30],
gpu_din[29],gpu_din[28],gpu_din[27],gpu_din[26],gpu_din[25],gpu_din[24],gpu_din[23],gpu_din[22],gpu_din[21],gpu_din[20],
gpu_din[19],gpu_din[18],gpu_din[17],gpu_din[16],gpu_din[15],gpu_din[14],gpu_din[13],gpu_din[12],gpu_din[11],gpu_din[10],
gpu_din[9],gpu_din[8],gpu_din[7],gpu_din[6],gpu_din[5],gpu_din[4],gpu_din[3],gpu_din[2],gpu_din[1],gpu_din[0]};
wire [15:0] instruction_ = {instruction[15],instruction[14],instruction[13],instruction[12],instruction[11],instruction[10],
instruction[9],instruction[8],instruction[7],instruction[6],instruction[5],instruction[4],instruction[3],instruction[2],instruction[1],instruction[0]};
_systolic systolic_inst
(
	.mtx_atomic /* OUT */ (mtx_atomic),
	.mtx_dover /* OUT */ (mtx_dover),
	.mtx_wait /* OUT */ (mtx_wait),
	.mtxaddr /* OUT */ (mtxaddr[11:2]),
	.mtx_mreq /* OUT */ (mtx_mreq),
	.multsel /* OUT */ (multsel),
	.sysins /* OUT */ (sysins_[15:0]),
	.sysser /* OUT */ (sysser),
	.movei_data /* IN */ (movei_data),
	.clk /* IN */ (clk),
	.datack /* IN */ (datack),
	.gpu_din /* IN */ (gpu_din_[31:0]),
	.instruction /* IN */ (instruction_[15:0]),
	.mtxawr /* IN */ (mtxawr),
	.mtxcwr /* IN */ (mtxcwr),
	.reset_n /* IN */ (reset_n),
	.romold /* IN */ (romold),
	.sys_clk(sys_clk) // Generated
);
endmodule
