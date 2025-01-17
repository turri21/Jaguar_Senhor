module pc
(
	output [0:22] pc,
	output [0:23] program_count,
	input clk,
	input go,
	input [0:31] gpu_din,
	input progack,
	input jabs,
	input jrel,
	input pcwr,
	input qs_n_0,
	input qs_n_1,
	input qs_n_2,
	input reset_n,
	input [0:31] srcd,
	input [0:31] srcdp,
	input sys_clk // Generated
);
wire [22:0] pc_;
assign {pc[22],pc[21],pc[20],
pc[19],pc[18],pc[17],pc[16],pc[15],pc[14],pc[13],pc[12],pc[11],pc[10],
pc[9],pc[8],pc[7],pc[6],pc[5],pc[4],pc[3],pc[2],pc[1],pc[0]} = pc_[22:0];
wire [23:0] program_count_;
assign {program_count[23],program_count[22],program_count[21],program_count[20],
program_count[19],program_count[18],program_count[17],program_count[16],program_count[15],program_count[14],program_count[13],program_count[12],program_count[11],program_count[10],
program_count[9],program_count[8],program_count[7],program_count[6],program_count[5],program_count[4],program_count[3],program_count[2],program_count[1],program_count[0]} = program_count_[23:0];
wire [31:0] gpu_din_ = {gpu_din[31],gpu_din[30],
gpu_din[29],gpu_din[28],gpu_din[27],gpu_din[26],gpu_din[25],gpu_din[24],gpu_din[23],gpu_din[22],gpu_din[21],gpu_din[20],
gpu_din[19],gpu_din[18],gpu_din[17],gpu_din[16],gpu_din[15],gpu_din[14],gpu_din[13],gpu_din[12],gpu_din[11],gpu_din[10],
gpu_din[9],gpu_din[8],gpu_din[7],gpu_din[6],gpu_din[5],gpu_din[4],gpu_din[3],gpu_din[2],gpu_din[1],gpu_din[0]};
wire [2:0] qs_n = {qs_n_2,qs_n_1,qs_n_0};
wire [31:0] srcd_ = {srcd[31],srcd[30],
srcd[29],srcd[28],srcd[27],srcd[26],srcd[25],srcd[24],srcd[23],srcd[22],srcd[21],srcd[20],
srcd[19],srcd[18],srcd[17],srcd[16],srcd[15],srcd[14],srcd[13],srcd[12],srcd[11],srcd[10],
srcd[9],srcd[8],srcd[7],srcd[6],srcd[5],srcd[4],srcd[3],srcd[2],srcd[1],srcd[0]};
wire [31:0] srcdp_ = {srcdp[31],srcdp[30],
srcdp[29],srcdp[28],srcdp[27],srcdp[26],srcdp[25],srcdp[24],srcdp[23],srcdp[22],srcdp[21],srcdp[20],
srcdp[19],srcdp[18],srcdp[17],srcdp[16],srcdp[15],srcdp[14],srcdp[13],srcdp[12],srcdp[11],srcdp[10],
srcdp[9],srcdp[8],srcdp[7],srcdp[6],srcdp[5],srcdp[4],srcdp[3],srcdp[2],srcdp[1],srcdp[0]};
_pc pc_inst
(
	.pc /* OUT */ (pc_[22:0]),
	.program_count /* OUT */ (program_count_[23:0]),
	.clk /* IN */ (clk),
	.go /* IN */ (go),
	.gpu_din /* IN */ (gpu_din_[31:0]),
	.progack /* IN */ (progack),
	.jabs /* IN */ (jabs),
	.jrel /* IN */ (jrel),
	.pcwr /* IN */ (pcwr),
	.qs_n /* IN */ (qs_n[2:0]),
	.reset_n /* IN */ (reset_n),
	.srcd /* IN */ (srcd_[31:0]),
	.srcdp /* IN */ (srcdp_[31:0]),
	.sys_clk(sys_clk) // Generated
);
endmodule
