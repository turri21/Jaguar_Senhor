module daddbmux
(
	output [0:15] addb_0,
	output [0:15] addb_1,
	output [0:15] addb_2,
	output [0:15] addb_3,
	input [0:31] srcdlo,
	input [0:31] srcdhi,
	input [0:31] iinc,
	input [0:31] zinc,
	input daddbsel_0,
	input daddbsel_1,
	input daddbsel_2
);
wire [15:0] addb_0_;
assign {addb_0[15],addb_0[14],addb_0[13],addb_0[12],addb_0[11],addb_0[10],
addb_0[9],addb_0[8],addb_0[7],addb_0[6],addb_0[5],addb_0[4],addb_0[3],addb_0[2],addb_0[1],addb_0[0]} = addb_0_[15:0];
wire [15:0] addb_1_;
assign {addb_1[15],addb_1[14],addb_1[13],addb_1[12],addb_1[11],addb_1[10],
addb_1[9],addb_1[8],addb_1[7],addb_1[6],addb_1[5],addb_1[4],addb_1[3],addb_1[2],addb_1[1],addb_1[0]} = addb_1_[15:0];
wire [15:0] addb_2_;
assign {addb_2[15],addb_2[14],addb_2[13],addb_2[12],addb_2[11],addb_2[10],
addb_2[9],addb_2[8],addb_2[7],addb_2[6],addb_2[5],addb_2[4],addb_2[3],addb_2[2],addb_2[1],addb_2[0]} = addb_2_[15:0];
wire [15:0] addb_3_;
assign {addb_3[15],addb_3[14],addb_3[13],addb_3[12],addb_3[11],addb_3[10],
addb_3[9],addb_3[8],addb_3[7],addb_3[6],addb_3[5],addb_3[4],addb_3[3],addb_3[2],addb_3[1],addb_3[0]} = addb_3_[15:0];
wire [31:0] srcdlo_ = {srcdlo[31],srcdlo[30],
srcdlo[29],srcdlo[28],srcdlo[27],srcdlo[26],srcdlo[25],srcdlo[24],srcdlo[23],srcdlo[22],srcdlo[21],srcdlo[20],
srcdlo[19],srcdlo[18],srcdlo[17],srcdlo[16],srcdlo[15],srcdlo[14],srcdlo[13],srcdlo[12],srcdlo[11],srcdlo[10],
srcdlo[9],srcdlo[8],srcdlo[7],srcdlo[6],srcdlo[5],srcdlo[4],srcdlo[3],srcdlo[2],srcdlo[1],srcdlo[0]};
wire [31:0] srcdhi_ = {srcdhi[31],srcdhi[30],
srcdhi[29],srcdhi[28],srcdhi[27],srcdhi[26],srcdhi[25],srcdhi[24],srcdhi[23],srcdhi[22],srcdhi[21],srcdhi[20],
srcdhi[19],srcdhi[18],srcdhi[17],srcdhi[16],srcdhi[15],srcdhi[14],srcdhi[13],srcdhi[12],srcdhi[11],srcdhi[10],
srcdhi[9],srcdhi[8],srcdhi[7],srcdhi[6],srcdhi[5],srcdhi[4],srcdhi[3],srcdhi[2],srcdhi[1],srcdhi[0]};
wire [31:0] iinc_ = {iinc[31],iinc[30],
iinc[29],iinc[28],iinc[27],iinc[26],iinc[25],iinc[24],iinc[23],iinc[22],iinc[21],iinc[20],
iinc[19],iinc[18],iinc[17],iinc[16],iinc[15],iinc[14],iinc[13],iinc[12],iinc[11],iinc[10],
iinc[9],iinc[8],iinc[7],iinc[6],iinc[5],iinc[4],iinc[3],iinc[2],iinc[1],iinc[0]};
wire [31:0] zinc_ = {zinc[31],zinc[30],
zinc[29],zinc[28],zinc[27],zinc[26],zinc[25],zinc[24],zinc[23],zinc[22],zinc[21],zinc[20],
zinc[19],zinc[18],zinc[17],zinc[16],zinc[15],zinc[14],zinc[13],zinc[12],zinc[11],zinc[10],
zinc[9],zinc[8],zinc[7],zinc[6],zinc[5],zinc[4],zinc[3],zinc[2],zinc[1],zinc[0]};
wire [2:0] daddbsel = {daddbsel_2,daddbsel_1,daddbsel_0};
_daddbmux addbmux_inst
(
	.addb_0 /* OUT */ (addb_0_[15:0]),
	.addb_1 /* OUT */ (addb_1_[15:0]),
	.addb_2 /* OUT */ (addb_2_[15:0]),
	.addb_3 /* OUT */ (addb_3_[15:0]),
	.srcdlo /* IN */ (srcdlo_[31:0]),
	.srcdhi /* IN */ (srcdhi_[31:0]),
	.iinc /* IN */ (iinc_[31:0]),
	.zinc /* IN */ (zinc_[31:0]),
	.daddbsel /* IN */ (daddbsel[2:0])
);
endmodule
