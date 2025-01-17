module addradd
(
	output [0:15] addq_x,
	output [0:15] addq_y,
	input a1fracld,
	input [0:15] adda_x,
	input [0:15] adda_y,
	input [0:15] addb_x,
	input [0:15] addb_y,
	input clk_0,
	input modx_0,
	input modx_1,
	input modx_2,
	input suba_x,
	input suba_y,
	input sys_clk // Generated
);
wire [15:0] addq_x_;
assign {addq_x[15],addq_x[14],addq_x[13],addq_x[12],addq_x[11],addq_x[10],
addq_x[9],addq_x[8],addq_x[7],addq_x[6],addq_x[5],addq_x[4],addq_x[3],addq_x[2],addq_x[1],addq_x[0]} = addq_x_[15:0];
wire [15:0] addq_y_;
assign {addq_y[15],addq_y[14],addq_y[13],addq_y[12],addq_y[11],addq_y[10],
addq_y[9],addq_y[8],addq_y[7],addq_y[6],addq_y[5],addq_y[4],addq_y[3],addq_y[2],addq_y[1],addq_y[0]} = addq_y_[15:0];
wire [15:0] adda_x_ = {adda_x[15],adda_x[14],adda_x[13],adda_x[12],adda_x[11],adda_x[10],
adda_x[9],adda_x[8],adda_x[7],adda_x[6],adda_x[5],adda_x[4],adda_x[3],adda_x[2],adda_x[1],adda_x[0]};
wire [15:0] adda_y_ = {adda_y[15],adda_y[14],adda_y[13],adda_y[12],adda_y[11],adda_y[10],
adda_y[9],adda_y[8],adda_y[7],adda_y[6],adda_y[5],adda_y[4],adda_y[3],adda_y[2],adda_y[1],adda_y[0]};
wire [15:0] addb_x_ = {addb_x[15],addb_x[14],addb_x[13],addb_x[12],addb_x[11],addb_x[10],
addb_x[9],addb_x[8],addb_x[7],addb_x[6],addb_x[5],addb_x[4],addb_x[3],addb_x[2],addb_x[1],addb_x[0]};
wire [15:0] addb_y_ = {addb_y[15],addb_y[14],addb_y[13],addb_y[12],addb_y[11],addb_y[10],
addb_y[9],addb_y[8],addb_y[7],addb_y[6],addb_y[5],addb_y[4],addb_y[3],addb_y[2],addb_y[1],addb_y[0]};
wire [2:0] modx = {modx_2,modx_1,modx_0};

_addradd addradd_inst
(
	.addq_x /* OUT */ (addq_x_[15:0]),
	.addq_y /* OUT */ (addq_y_[15:0]),
	.a1fracld /* IN */ (a1fracld),
	.adda_x /* IN */ (adda_x_[15:0]),
	.adda_y /* IN */ (adda_y_[15:0]),
	.addb_x /* IN */ (addb_x_[15:0]),
	.addb_y /* IN */ (addb_y_[15:0]),
	.clk /* IN */ (clk_0),
	.modx /* IN */ (modx[2:0]),
	.suba_x /* IN */ (suba_x),
	.suba_y /* IN */ (suba_y),
	.sys_clk(sys_clk) // Generated
);
endmodule
