module divider
(
	output [0:31] gpu_data_out,
	output [0:31] gpu_data_oe,
	input [0:31] gpu_data_in,
	output div_activei,
	output [0:31] quotient,
	input clk,
	input div_start,
	input divwr,
	input [0:31] dstd,
	input [0:31] gpu_din,
	input remrd,
	input reset_n,
	input [0:31] srcd,
	input sys_clk // Generated
);
wire [31:0] gpu_data_out_;
assign {gpu_data_out[31],gpu_data_out[30],
gpu_data_out[29],gpu_data_out[28],gpu_data_out[27],gpu_data_out[26],gpu_data_out[25],gpu_data_out[24],gpu_data_out[23],gpu_data_out[22],gpu_data_out[21],gpu_data_out[20],
gpu_data_out[19],gpu_data_out[18],gpu_data_out[17],gpu_data_out[16],gpu_data_out[15],gpu_data_out[14],gpu_data_out[13],gpu_data_out[12],gpu_data_out[11],gpu_data_out[10],
gpu_data_out[9],gpu_data_out[8],gpu_data_out[7],gpu_data_out[6],gpu_data_out[5],gpu_data_out[4],gpu_data_out[3],gpu_data_out[2],gpu_data_out[1],gpu_data_out[0]} = gpu_data_out_[31:0];
assign {gpu_data_oe[31],gpu_data_oe[30],
gpu_data_oe[29],gpu_data_oe[28],gpu_data_oe[27],gpu_data_oe[26],gpu_data_oe[25],gpu_data_oe[24],gpu_data_oe[23],gpu_data_oe[22],gpu_data_oe[21],gpu_data_oe[20],
gpu_data_oe[19],gpu_data_oe[18],gpu_data_oe[17],gpu_data_oe[16],gpu_data_oe[15],gpu_data_oe[14],gpu_data_oe[13],gpu_data_oe[12],gpu_data_oe[11],gpu_data_oe[10],
gpu_data_oe[9],gpu_data_oe[8],gpu_data_oe[7],gpu_data_oe[6],gpu_data_oe[5],gpu_data_oe[4],gpu_data_oe[3],gpu_data_oe[2],gpu_data_oe[1]} = {31{gpu_data_oe[0]}};
wire [31:0] quotient_;
assign {quotient[31],quotient[30],
quotient[29],quotient[28],quotient[27],quotient[26],quotient[25],quotient[24],quotient[23],quotient[22],quotient[21],quotient[20],
quotient[19],quotient[18],quotient[17],quotient[16],quotient[15],quotient[14],quotient[13],quotient[12],quotient[11],quotient[10],
quotient[9],quotient[8],quotient[7],quotient[6],quotient[5],quotient[4],quotient[3],quotient[2],quotient[1],quotient[0]} = quotient_[31:0];
wire [31:0] dstd_ = {dstd[31],dstd[30],
dstd[29],dstd[28],dstd[27],dstd[26],dstd[25],dstd[24],dstd[23],dstd[22],dstd[21],dstd[20],
dstd[19],dstd[18],dstd[17],dstd[16],dstd[15],dstd[14],dstd[13],dstd[12],dstd[11],dstd[10],
dstd[9],dstd[8],dstd[7],dstd[6],dstd[5],dstd[4],dstd[3],dstd[2],dstd[1],dstd[0]};
wire [31:0] gpu_din_ = {gpu_din[31],gpu_din[30],
gpu_din[29],gpu_din[28],gpu_din[27],gpu_din[26],gpu_din[25],gpu_din[24],gpu_din[23],gpu_din[22],gpu_din[21],gpu_din[20],
gpu_din[19],gpu_din[18],gpu_din[17],gpu_din[16],gpu_din[15],gpu_din[14],gpu_din[13],gpu_din[12],gpu_din[11],gpu_din[10],
gpu_din[9],gpu_din[8],gpu_din[7],gpu_din[6],gpu_din[5],gpu_din[4],gpu_din[3],gpu_din[2],gpu_din[1],gpu_din[0]};
wire [31:0] srcd_ = {srcd[31],srcd[30],
srcd[29],srcd[28],srcd[27],srcd[26],srcd[25],srcd[24],srcd[23],srcd[22],srcd[21],srcd[20],
srcd[19],srcd[18],srcd[17],srcd[16],srcd[15],srcd[14],srcd[13],srcd[12],srcd[11],srcd[10],
srcd[9],srcd[8],srcd[7],srcd[6],srcd[5],srcd[4],srcd[3],srcd[2],srcd[1],srcd[0]};
_divider divide_inst
(
	.gpu_data_out /* BUS */ (gpu_data_out_[31:0]),
	.gpu_data_oe /* BUS */ (gpu_data_oe[0]),
	.div_activei /* OUT */ (div_activei),
	.quotient /* OUT */ (quotient_[31:0]),
	.clk /* IN */ (clk),
	.div_start /* IN */ (div_start),
	.divwr /* IN */ (divwr),
	.dstd /* IN */ (dstd_[31:0]),
	.gpu_din /* IN */ (gpu_din_[31:0]),
	.remrd /* IN */ (remrd),
	.reset_n /* IN */ (reset_n),
	.srcd /* IN */ (srcd_[31:0]),
	.sys_clk(sys_clk) // Generated
);
endmodule
