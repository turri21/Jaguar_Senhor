module addrgen
(
	output [0:23] address,
	output pixa_0,
	output pixa_1,
	output pixa_2,
	input [0:15] a1_x,
	input [0:15] a1_y,
	input [0:20] a1_base,
	input a1_pitch_0,
	input a1_pitch_1,
	input a1_pixsize_0,
	input a1_pixsize_1,
	input a1_pixsize_2,
	input a1_width_0,
	input a1_width_1,
	input a1_width_2,
	input a1_width_3,
	input a1_width_4,
	input a1_width_5,
	input a1_zoffset_0,
	input a1_zoffset_1,
	input [0:15] a2_x,
	input [0:15] a2_y,
	input [0:20] a2_base,
	input a2_pitch_0,
	input a2_pitch_1,
	input a2_pixsize_0,
	input a2_pixsize_1,
	input a2_pixsize_2,
	input a2_width_0,
	input a2_width_1,
	input a2_width_2,
	input a2_width_3,
	input a2_width_4,
	input a2_width_5,
	input a2_zoffset_0,
	input a2_zoffset_1,
	input apipe,
	input clk,
	input gena2,
	input zaddr,
	input sys_clk // Generated
);

wire [23:0] address_;
assign {address[23],address[22],address[21],address[20],
address[19],address[18],address[17],address[16],address[15],address[14],address[13],address[12],address[11],address[10],
address[9],address[8],address[7],address[6],address[5],address[4],address[3],address[2],address[1],address[0]} = address_[23:0];
wire [2:0] pixa;
assign {pixa_2,pixa_1,pixa_0} = pixa[2:0];
wire [15:0] a1_x_ = {a1_x[15],a1_x[14],a1_x[13],a1_x[12],a1_x[11],a1_x[10],
a1_x[9],a1_x[8],a1_x[7],a1_x[6],a1_x[5],a1_x[4],a1_x[3],a1_x[2],a1_x[1],a1_x[0]};
wire [15:0] a1_y_ = {a1_y[15],a1_y[14],a1_y[13],a1_y[12],a1_y[11],a1_y[10],
a1_y[9],a1_y[8],a1_y[7],a1_y[6],a1_y[5],a1_y[4],a1_y[3],a1_y[2],a1_y[1],a1_y[0]};
wire [20:0] a1_base_ = {a1_base[20],
a1_base[19],a1_base[18],a1_base[17],a1_base[16],a1_base[15],a1_base[14],a1_base[13],a1_base[12],a1_base[11],a1_base[10],
a1_base[9],a1_base[8],a1_base[7],a1_base[6],a1_base[5],a1_base[4],a1_base[3],a1_base[2],a1_base[1],a1_base[0]};
wire [1:0] a1_pitch = {a1_pitch_1,a1_pitch_0};
wire [2:0] a1_pixsize = {a1_pixsize_2,a1_pixsize_1,a1_pixsize_0};
wire [5:0] a1_width = {a1_width_5,a1_width_4,a1_width_3,a1_width_2,a1_width_1,a1_width_0};
wire [1:0] a1_zoffset = {a1_zoffset_1,a1_zoffset_0};
wire [15:0] a2_x_ = {a2_x[15],a2_x[14],a2_x[13],a2_x[12],a2_x[11],a2_x[10],
a2_x[9],a2_x[8],a2_x[7],a2_x[6],a2_x[5],a2_x[4],a2_x[3],a2_x[2],a2_x[1],a2_x[0]};
wire [15:0] a2_y_ = {a2_y[15],a2_y[14],a2_y[13],a2_y[12],a2_y[11],a2_y[10],
a2_y[9],a2_y[8],a2_y[7],a2_y[6],a2_y[5],a2_y[4],a2_y[3],a2_y[2],a2_y[1],a2_y[0]};
wire [20:0] a2_base_ = {a2_base[20],
a2_base[19],a2_base[18],a2_base[17],a2_base[16],a2_base[15],a2_base[14],a2_base[13],a2_base[12],a2_base[11],a2_base[10],
a2_base[9],a2_base[8],a2_base[7],a2_base[6],a2_base[5],a2_base[4],a2_base[3],a2_base[2],a2_base[1],a2_base[0]};
wire [1:0] a2_pitch = {a2_pitch_1,a2_pitch_0};
wire [2:0] a2_pixsize = {a2_pixsize_2,a2_pixsize_1,a2_pixsize_0};
wire [5:0] a2_width = {a2_width_5,a2_width_4,a2_width_3,a2_width_2,a2_width_1,a2_width_0};
wire [1:0] a2_zoffset = {a2_zoffset_1,a2_zoffset_0};

_addrgen addrgen_inst
(
	.address /* OUT */ (address_[23:0]),
	.pixa /* OUT */ (pixa[2:0]),
	.a1_x /* IN */ (a1_x_[15:0]),
	.a1_y /* IN */ (a1_y_[15:0]),
	.a1_base /* IN */ (a1_base_[20:0]),
	.a1_pitch /* IN */ (a1_pitch[1:0]),
	.a1_pixsize /* IN */ (a1_pixsize[2:0]),
	.a1_width /* IN */ (a1_width[5:0]),
	.a1_zoffset /* IN */ (a1_zoffset[1:0]),
	.a2_x /* IN */ (a2_x_[15:0]),
	.a2_y /* IN */ (a2_y_[15:0]),
	.a2_base /* IN */ (a2_base_[20:0]),
	.a2_pitch /* IN */ (a2_pitch[1:0]),
	.a2_pixsize /* IN */ (a2_pixsize[2:0]),
	.a2_width /* IN */ (a2_width[5:0]),
	.a2_zoffset /* IN */ (a2_zoffset[1:0]),
	.apipe /* IN */ (apipe),
	.clk /* IN */ (clk),
	.gena2 /* IN */ (gena2),
	.zaddr /* IN */ (zaddr),
	.sys_clk(sys_clk) // Generated
);

endmodule
