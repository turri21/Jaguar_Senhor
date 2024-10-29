module zedcomp
(
	output zcomp_0,
	output zcomp_1,
	output zcomp_2,
	output zcomp_3,
	input [0:31] srczplo,
	input [0:31] srczphi,
	input [0:31] dstzlo,
	input [0:31] dstzhi,
	input zmode_0,
	input zmode_1,
	input zmode_2
);
wire [3:0] zcomp;
assign {zcomp_3,zcomp_2,zcomp_1,zcomp_0} = zcomp[3:0];
wire [31:0] srczplo_ = {srczplo[31],srczplo[30],
srczplo[29],srczplo[28],srczplo[27],srczplo[26],srczplo[25],srczplo[24],srczplo[23],srczplo[22],srczplo[21],srczplo[20],
srczplo[19],srczplo[18],srczplo[17],srczplo[16],srczplo[15],srczplo[14],srczplo[13],srczplo[12],srczplo[11],srczplo[10],
srczplo[9],srczplo[8],srczplo[7],srczplo[6],srczplo[5],srczplo[4],srczplo[3],srczplo[2],srczplo[1],srczplo[0]};
wire [31:0] srczphi_ = {srczphi[31],srczphi[30],
srczphi[29],srczphi[28],srczphi[27],srczphi[26],srczphi[25],srczphi[24],srczphi[23],srczphi[22],srczphi[21],srczphi[20],
srczphi[19],srczphi[18],srczphi[17],srczphi[16],srczphi[15],srczphi[14],srczphi[13],srczphi[12],srczphi[11],srczphi[10],
srczphi[9],srczphi[8],srczphi[7],srczphi[6],srczphi[5],srczphi[4],srczphi[3],srczphi[2],srczphi[1],srczphi[0]};
wire [31:0] dstzlo_ = {dstzlo[31],dstzlo[30],
dstzlo[29],dstzlo[28],dstzlo[27],dstzlo[26],dstzlo[25],dstzlo[24],dstzlo[23],dstzlo[22],dstzlo[21],dstzlo[20],
dstzlo[19],dstzlo[18],dstzlo[17],dstzlo[16],dstzlo[15],dstzlo[14],dstzlo[13],dstzlo[12],dstzlo[11],dstzlo[10],
dstzlo[9],dstzlo[8],dstzlo[7],dstzlo[6],dstzlo[5],dstzlo[4],dstzlo[3],dstzlo[2],dstzlo[1],dstzlo[0]};
wire [31:0] dstzhi_ = {dstzhi[31],dstzhi[30],
dstzhi[29],dstzhi[28],dstzhi[27],dstzhi[26],dstzhi[25],dstzhi[24],dstzhi[23],dstzhi[22],dstzhi[21],dstzhi[20],
dstzhi[19],dstzhi[18],dstzhi[17],dstzhi[16],dstzhi[15],dstzhi[14],dstzhi[13],dstzhi[12],dstzhi[11],dstzhi[10],
dstzhi[9],dstzhi[8],dstzhi[7],dstzhi[6],dstzhi[5],dstzhi[4],dstzhi[3],dstzhi[2],dstzhi[1],dstzhi[0]};
wire [2:0] zmode = {zmode_2,zmode_1,zmode_0};
_zedcomp zedcomp_inst
(
	.zcomp /* OUT */ (zcomp[3:0]),
	.srczplo /* IN */ (srczplo_[31:0]),
	.srczphi /* IN */ (srczphi_[31:0]),
	.dstzlo /* IN */ (dstzlo_[31:0]),
	.dstzhi /* IN */ (dstzhi_[31:0]),
	.zmode /* IN */ (zmode[2:0])
);
endmodule
