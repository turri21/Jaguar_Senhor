module srcdgen
(
	output locdent,
	output [0:31] locsrc,
	input [0:31] program_count,
	input srcdat_0,
	input srcdat_1,
	input srcdat_2,
	input srcdat_3,
	input [0:4] srcop
);
wire [31:0] locsrc_;
assign {locsrc[31],locsrc[30],
locsrc[29],locsrc[28],locsrc[27],locsrc[26],locsrc[25],locsrc[24],locsrc[23],locsrc[22],locsrc[21],locsrc[20],
locsrc[19],locsrc[18],locsrc[17],locsrc[16],locsrc[15],locsrc[14],locsrc[13],locsrc[12],locsrc[11],locsrc[10],
locsrc[9],locsrc[8],locsrc[7],locsrc[6],locsrc[5],locsrc[4],locsrc[3],locsrc[2],locsrc[1],locsrc[0]} = locsrc_[31:0];
wire [31:0] program_count_ = {program_count[31],program_count[30],
program_count[29],program_count[28],program_count[27],program_count[26],program_count[25],program_count[24],program_count[23],program_count[22],program_count[21],program_count[20],
program_count[19],program_count[18],program_count[17],program_count[16],program_count[15],program_count[14],program_count[13],program_count[12],program_count[11],program_count[10],
program_count[9],program_count[8],program_count[7],program_count[6],program_count[5],program_count[4],program_count[3],program_count[2],program_count[1],program_count[0]};
wire [3:0] srcdat = {srcdat_3,srcdat_2,srcdat_1,srcdat_0};
wire [4:0] srcop_ = {srcop[4],srcop[3],srcop[2],srcop[1],srcop[0]};
_srcdgen srcdgen_inst
(
	.locdent /* OUT */ (locdent),
	.locsrc /* OUT */ (locsrc_[31:0]),
	.program_count /* IN */ (program_count_[31:0]),
	.srcdat /* IN */ (srcdat[3:0]),
	.srcop /* IN */ (srcop_[4:0])
);
endmodule
