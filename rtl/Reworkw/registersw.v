module registers
(
	output [0:31] srcd,
	output [0:31] srcdp,
	output [0:31] srcdpa,
	output [0:31] dstd,
	output [0:31] dstdp,
	input clk,
	input [0:5] dsta,
	input dstrwen_n,
	input [0:31] dstwd,
	input exe,
	input locden,
	input [0:31] locsrc,
	input [0:31] mem_data,
	input mtx_dover,
	input [0:5] srca,
	input srcrwen_n,
	input [0:31] srcwd,
	input sys_clk // Generated
);
wire [31:0] srcd_;
assign {srcd[31],srcd[30],
srcd[29],srcd[28],srcd[27],srcd[26],srcd[25],srcd[24],srcd[23],srcd[22],srcd[21],srcd[20],
srcd[19],srcd[18],srcd[17],srcd[16],srcd[15],srcd[14],srcd[13],srcd[12],srcd[11],srcd[10],
srcd[9],srcd[8],srcd[7],srcd[6],srcd[5],srcd[4],srcd[3],srcd[2],srcd[1],srcd[0]} = srcd_[31:0];
wire [31:0] srcdp_;
assign {srcdp[31],srcdp[30],
srcdp[29],srcdp[28],srcdp[27],srcdp[26],srcdp[25],srcdp[24],srcdp[23],srcdp[22],srcdp[21],srcdp[20],
srcdp[19],srcdp[18],srcdp[17],srcdp[16],srcdp[15],srcdp[14],srcdp[13],srcdp[12],srcdp[11],srcdp[10],
srcdp[9],srcdp[8],srcdp[7],srcdp[6],srcdp[5],srcdp[4],srcdp[3],srcdp[2],srcdp[1],srcdp[0]} = srcdp_[31:0];
wire [31:0] srcdpa_;
assign {srcdpa[31],srcdpa[30],
srcdpa[29],srcdpa[28],srcdpa[27],srcdpa[26],srcdpa[25],srcdpa[24],srcdpa[23],srcdpa[22],srcdpa[21],srcdpa[20],
srcdpa[19],srcdpa[18],srcdpa[17],srcdpa[16],srcdpa[15],srcdpa[14],srcdpa[13],srcdpa[12],srcdpa[11],srcdpa[10],
srcdpa[9],srcdpa[8],srcdpa[7],srcdpa[6],srcdpa[5],srcdpa[4],srcdpa[3],srcdpa[2],srcdpa[1],srcdpa[0]} = srcdpa_[31:0];
wire [31:0] dstd_;
assign {dstd[31],dstd[30],
dstd[29],dstd[28],dstd[27],dstd[26],dstd[25],dstd[24],dstd[23],dstd[22],dstd[21],dstd[20],
dstd[19],dstd[18],dstd[17],dstd[16],dstd[15],dstd[14],dstd[13],dstd[12],dstd[11],dstd[10],
dstd[9],dstd[8],dstd[7],dstd[6],dstd[5],dstd[4],dstd[3],dstd[2],dstd[1],dstd[0]} = dstd_[31:0];
wire [31:0] dstdp_;
assign {dstdp[31],dstdp[30],
dstdp[29],dstdp[28],dstdp[27],dstdp[26],dstdp[25],dstdp[24],dstdp[23],dstdp[22],dstdp[21],dstdp[20],
dstdp[19],dstdp[18],dstdp[17],dstdp[16],dstdp[15],dstdp[14],dstdp[13],dstdp[12],dstdp[11],dstdp[10],
dstdp[9],dstdp[8],dstdp[7],dstdp[6],dstdp[5],dstdp[4],dstdp[3],dstdp[2],dstdp[1],dstdp[0]} = dstdp_[31:0];
wire [5:0] dsta_ = {dsta[5],dsta[4],dsta[3],dsta[2],dsta[1],dsta[0]};
wire [31:0] dstwd_ = {dstwd[31],dstwd[30],
dstwd[29],dstwd[28],dstwd[27],dstwd[26],dstwd[25],dstwd[24],dstwd[23],dstwd[22],dstwd[21],dstwd[20],
dstwd[19],dstwd[18],dstwd[17],dstwd[16],dstwd[15],dstwd[14],dstwd[13],dstwd[12],dstwd[11],dstwd[10],
dstwd[9],dstwd[8],dstwd[7],dstwd[6],dstwd[5],dstwd[4],dstwd[3],dstwd[2],dstwd[1],dstwd[0]};
wire [31:0] locsrc_ = {locsrc[31],locsrc[30],
locsrc[29],locsrc[28],locsrc[27],locsrc[26],locsrc[25],locsrc[24],locsrc[23],locsrc[22],locsrc[21],locsrc[20],
locsrc[19],locsrc[18],locsrc[17],locsrc[16],locsrc[15],locsrc[14],locsrc[13],locsrc[12],locsrc[11],locsrc[10],
locsrc[9],locsrc[8],locsrc[7],locsrc[6],locsrc[5],locsrc[4],locsrc[3],locsrc[2],locsrc[1],locsrc[0]};
wire [31:0] mem_data_ = {mem_data[31],mem_data[30],
mem_data[29],mem_data[28],mem_data[27],mem_data[26],mem_data[25],mem_data[24],mem_data[23],mem_data[22],mem_data[21],mem_data[20],
mem_data[19],mem_data[18],mem_data[17],mem_data[16],mem_data[15],mem_data[14],mem_data[13],mem_data[12],mem_data[11],mem_data[10],
mem_data[9],mem_data[8],mem_data[7],mem_data[6],mem_data[5],mem_data[4],mem_data[3],mem_data[2],mem_data[1],mem_data[0]};
wire [5:0] srca_ = {srca[5],srca[4],srca[3],srca[2],srca[1],srca[0]};
wire [31:0] srcwd_ = {srcwd[31],srcwd[30],
srcwd[29],srcwd[28],srcwd[27],srcwd[26],srcwd[25],srcwd[24],srcwd[23],srcwd[22],srcwd[21],srcwd[20],
srcwd[19],srcwd[18],srcwd[17],srcwd[16],srcwd[15],srcwd[14],srcwd[13],srcwd[12],srcwd[11],srcwd[10],
srcwd[9],srcwd[8],srcwd[7],srcwd[6],srcwd[5],srcwd[4],srcwd[3],srcwd[2],srcwd[1],srcwd[0]};
_registers registers_inst
(
	.srcd /* OUT */ (srcd_[31:0]),
	.srcdp /* OUT */ (srcdp_[31:0]),
	.srcdpa /* OUT */ (srcdpa_[31:0]),
	.dstd /* OUT */ (dstd_[31:0]),
	.dstdp /* OUT */ (dstdp_[31:0]),
	.clk /* IN */ (clk),
	.dsta /* IN */ (dsta_[5:0]),
	.dstrwen_n /* IN */ (dstrwen_n),
	.dstwd /* IN */ (dstwd_[31:0]),
	.exe /* IN */ (exe),
	.locden /* IN */ (locden),
	.locsrc /* IN */ (locsrc_[31:0]),
	.mem_data /* IN */ (mem_data_[31:0]),
	.mtx_dover /* IN */ (mtx_dover),
	.srca /* IN */ (srca_[5:0]),
	.srcrwen_n /* IN */ (srcrwen_n),
	.srcwd /* IN */ (srcwd_[31:0]),
	.sys_clk(sys_clk) // Generated
);
endmodule
