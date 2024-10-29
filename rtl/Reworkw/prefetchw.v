module prefetch
(
	output gpu_dout_22_out,
	output gpu_dout_22_oe,
	input gpu_dout_22_in,
	output gpu_dout_23_out,
	output gpu_dout_23_oe,
	input gpu_dout_23_in,
	output gpu_dout_24_out,
	output gpu_dout_24_oe,
	input gpu_dout_24_in,
	output insrdy,
	output [0:15] instruction,
	output jump_atomic,
	output pabort,
	output progreq,
	output [0:21] progaddr,
	output [0:23] program_count,
	input big_instr,
	input clk,
	input dbgrd,
	input go,
	input [0:31] gpu_data,
	input [0:31] gpu_din,
	input progack,
	input jumprel,
	input jumpabs,
	input pcwr,
	input reset_n,
	input promoldx_n,
	input single_go,
	input single_step,
	input [0:31] srcd,
	input [0:31] srcdp,
	input sys_clk // Generated
);
wire [24:22] gpu_dout_out;
assign {gpu_dout_24_out,gpu_dout_23_out,gpu_dout_22_out} = gpu_dout_out[24:22];
assign {gpu_dout_24_oe,gpu_dout_23_oe} = {2{gpu_dout_22_oe}};
wire [15:0] instruction_;
assign {instruction[15],instruction[14],instruction[13],instruction[12],instruction[11],instruction[10],
instruction[9],instruction[8],instruction[7],instruction[6],instruction[5],instruction[4],instruction[3],instruction[2],instruction[1],instruction[0]} = instruction_[15:0];
wire [21:0] progaddr_;
assign {progaddr[21],progaddr[20],
progaddr[19],progaddr[18],progaddr[17],progaddr[16],progaddr[15],progaddr[14],progaddr[13],progaddr[12],progaddr[11],progaddr[10],
progaddr[9],progaddr[8],progaddr[7],progaddr[6],progaddr[5],progaddr[4],progaddr[3],progaddr[2],progaddr[1],progaddr[0]} = progaddr_[21:0];
wire [23:0] program_count_;
assign {program_count[23],program_count[22],program_count[21],program_count[20],
program_count[19],program_count[18],program_count[17],program_count[16],program_count[15],program_count[14],program_count[13],program_count[12],program_count[11],program_count[10],
program_count[9],program_count[8],program_count[7],program_count[6],program_count[5],program_count[4],program_count[3],program_count[2],program_count[1],program_count[0]} = program_count_[23:0];
wire [31:0] gpu_data_ = {gpu_data[31],gpu_data[30],
gpu_data[29],gpu_data[28],gpu_data[27],gpu_data[26],gpu_data[25],gpu_data[24],gpu_data[23],gpu_data[22],gpu_data[21],gpu_data[20],
gpu_data[19],gpu_data[18],gpu_data[17],gpu_data[16],gpu_data[15],gpu_data[14],gpu_data[13],gpu_data[12],gpu_data[11],gpu_data[10],
gpu_data[9],gpu_data[8],gpu_data[7],gpu_data[6],gpu_data[5],gpu_data[4],gpu_data[3],gpu_data[2],gpu_data[1],gpu_data[0]};
wire [31:0] gpu_din_ = {gpu_din[31],gpu_din[30],
gpu_din[29],gpu_din[28],gpu_din[27],gpu_din[26],gpu_din[25],gpu_din[24],gpu_din[23],gpu_din[22],gpu_din[21],gpu_din[20],
gpu_din[19],gpu_din[18],gpu_din[17],gpu_din[16],gpu_din[15],gpu_din[14],gpu_din[13],gpu_din[12],gpu_din[11],gpu_din[10],
gpu_din[9],gpu_din[8],gpu_din[7],gpu_din[6],gpu_din[5],gpu_din[4],gpu_din[3],gpu_din[2],gpu_din[1],gpu_din[0]};
wire [31:0] srcd_ = {srcd[31],srcd[30],
srcd[29],srcd[28],srcd[27],srcd[26],srcd[25],srcd[24],srcd[23],srcd[22],srcd[21],srcd[20],
srcd[19],srcd[18],srcd[17],srcd[16],srcd[15],srcd[14],srcd[13],srcd[12],srcd[11],srcd[10],
srcd[9],srcd[8],srcd[7],srcd[6],srcd[5],srcd[4],srcd[3],srcd[2],srcd[1],srcd[0]};
wire [31:0] srcdp_ = {srcdp[31],srcdp[30],
srcdp[29],srcdp[28],srcdp[27],srcdp[26],srcdp[25],srcdp[24],srcdp[23],srcdp[22],srcdp[21],srcdp[20],
srcdp[19],srcdp[18],srcdp[17],srcdp[16],srcdp[15],srcdp[14],srcdp[13],srcdp[12],srcdp[11],srcdp[10],
srcdp[9],srcdp[8],srcdp[7],srcdp[6],srcdp[5],srcdp[4],srcdp[3],srcdp[2],srcdp[1],srcdp[0]};
_prefetch prefetch_inst
(
	.gpu_dout_out /* BUS */ (gpu_dout_out[24:22]),
	.gpu_dout_oe /* BUS */ (gpu_dout_22_oe), //= dbgrd
	.insrdy /* OUT */ (insrdy),
	.instruction /* OUT */ (instruction_[15:0]),
	.jump_atomic /* OUT */ (jump_atomic),
	.pabort /* OUT */ (pabort),
	.progreq /* OUT */ (progreq),
	.progaddr /* OUT */ (progaddr_[21:0]),
	.program_count /* OUT */ (program_count_[23:0]),
	.big_instr /* IN */ (big_instr),
	.clk /* IN */ (clk),
	.dbgrd /* IN */ (dbgrd),
	.go /* IN */ (go),
	.gpu_data /* IN */ (gpu_data_[31:0]),
	.gpu_din /* IN */ (gpu_din_[31:0]),
	.progack /* IN */ (progack),
	.jumprel /* IN */ (jumprel),
	.jumpabs /* IN */ (jumpabs),
	.pcwr /* IN */ (pcwr),
	.reset_n /* IN */ (reset_n),
	.promoldx_n /* IN */ (promoldx_n),
	.single_go /* IN */ (single_go),
	.single_step /* IN */ (single_step),
	.srcd /* IN */ (srcd_[31:0]),
	.srcdp /* IN */ (srcdp_[31:0]),
	.sys_clk(sys_clk) // Generated
);
endmodule
