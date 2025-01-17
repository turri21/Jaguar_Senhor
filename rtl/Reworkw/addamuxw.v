module addamux
(
	output [0:15] adda_x,
	output [0:15] adda_y,
	input addasel_0,
	input addasel_1,
	input addasel_2,
	input [0:15] a1_step_x,
	input [0:15] a1_step_y,
	input [0:15] a1_stepf_x,
	input [0:15] a1_stepf_y,
	input [0:15] a2_step_x,
	input [0:15] a2_step_y,
	input [0:15] a1_inc_x,
	input [0:15] a1_inc_y,
	input [0:15] a1_incf_x,
	input [0:15] a1_incf_y,
	input adda_xconst_0,
	input adda_xconst_1,
	input adda_xconst_2,
	input adda_yconst,
	input addareg,
	input suba_x,
	input suba_y
);
wire [15:0] adda_x_;
assign {adda_x[15],adda_x[14],adda_x[13],adda_x[12],adda_x[11],adda_x[10],
adda_x[9],adda_x[8],adda_x[7],adda_x[6],adda_x[5],adda_x[4],adda_x[3],adda_x[2],adda_x[1],adda_x[0]} = adda_x_[15:0];
wire [15:0] adda_y_;
assign {adda_y[15],adda_y[14],adda_y[13],adda_y[12],adda_y[11],adda_y[10],
adda_y[9],adda_y[8],adda_y[7],adda_y[6],adda_y[5],adda_y[4],adda_y[3],adda_y[2],adda_y[1],adda_y[0]} = adda_y_[15:0];
wire [2:0] addasel = {addasel_2,addasel_1,addasel_0};

wire [15:0] a1_step_x_ = {a1_step_x[15],a1_step_x[14],a1_step_x[13],a1_step_x[12],a1_step_x[11],a1_step_x[10],
a1_step_x[9],a1_step_x[8],a1_step_x[7],a1_step_x[6],a1_step_x[5],a1_step_x[4],a1_step_x[3],a1_step_x[2],a1_step_x[1],a1_step_x[0]};
wire [15:0] a1_stepf_x_ = {a1_stepf_x[15],a1_stepf_x[14],a1_stepf_x[13],a1_stepf_x[12],a1_stepf_x[11],a1_stepf_x[10],
a1_stepf_x[9],a1_stepf_x[8],a1_stepf_x[7],a1_stepf_x[6],a1_stepf_x[5],a1_stepf_x[4],a1_stepf_x[3],a1_stepf_x[2],a1_stepf_x[1],a1_stepf_x[0]};
wire [15:0] a2_step_x_ = {a2_step_x[15],a2_step_x[14],a2_step_x[13],a2_step_x[12],a2_step_x[11],a2_step_x[10],
a2_step_x[9],a2_step_x[8],a2_step_x[7],a2_step_x[6],a2_step_x[5],a2_step_x[4],a2_step_x[3],a2_step_x[2],a2_step_x[1],a2_step_x[0]};
wire [15:0] a1_inc_x_ = {a1_inc_x[15],a1_inc_x[14],a1_inc_x[13],a1_inc_x[12],a1_inc_x[11],a1_inc_x[10],
a1_inc_x[9],a1_inc_x[8],a1_inc_x[7],a1_inc_x[6],a1_inc_x[5],a1_inc_x[4],a1_inc_x[3],a1_inc_x[2],a1_inc_x[1],a1_inc_x[0]};
wire [15:0] a1_incf_x_ = {a1_incf_x[15],a1_incf_x[14],a1_incf_x[13],a1_incf_x[12],a1_incf_x[11],a1_incf_x[10],
a1_incf_x[9],a1_incf_x[8],a1_incf_x[7],a1_incf_x[6],a1_incf_x[5],a1_incf_x[4],a1_incf_x[3],a1_incf_x[2],a1_incf_x[1],a1_incf_x[0]};

wire [15:0] a1_step_y_ = {a1_step_y[15],a1_step_y[14],a1_step_y[13],a1_step_y[12],a1_step_y[11],a1_step_y[10],
a1_step_y[9],a1_step_y[8],a1_step_y[7],a1_step_y[6],a1_step_y[5],a1_step_y[4],a1_step_y[3],a1_step_y[2],a1_step_y[1],a1_step_y[0]};
wire [15:0] a1_stepf_y_ = {a1_stepf_y[15],a1_stepf_y[14],a1_stepf_y[13],a1_stepf_y[12],a1_stepf_y[11],a1_stepf_y[10],
a1_stepf_y[9],a1_stepf_y[8],a1_stepf_y[7],a1_stepf_y[6],a1_stepf_y[5],a1_stepf_y[4],a1_stepf_y[3],a1_stepf_y[2],a1_stepf_y[1],a1_stepf_y[0]};
wire [15:0] a2_step_y_ = {a2_step_y[15],a2_step_y[14],a2_step_y[13],a2_step_y[12],a2_step_y[11],a2_step_y[10],
a2_step_y[9],a2_step_y[8],a2_step_y[7],a2_step_y[6],a2_step_y[5],a2_step_y[4],a2_step_y[3],a2_step_y[2],a2_step_y[1],a2_step_y[0]};
wire [15:0] a1_inc_y_ = {a1_inc_y[15],a1_inc_y[14],a1_inc_y[13],a1_inc_y[12],a1_inc_y[11],a1_inc_y[10],
a1_inc_y[9],a1_inc_y[8],a1_inc_y[7],a1_inc_y[6],a1_inc_y[5],a1_inc_y[4],a1_inc_y[3],a1_inc_y[2],a1_inc_y[1],a1_inc_y[0]};
wire [15:0] a1_incf_y_ = {a1_incf_y[15],a1_incf_y[14],a1_incf_y[13],a1_incf_y[12],a1_incf_y[11],a1_incf_y[10],
a1_incf_y[9],a1_incf_y[8],a1_incf_y[7],a1_incf_y[6],a1_incf_y[5],a1_incf_y[4],a1_incf_y[3],a1_incf_y[2],a1_incf_y[1],a1_incf_y[0]};

wire [2:0] adda_xconst = {adda_xconst_2,adda_xconst_1,adda_xconst_0};

_addamux addamux_inst
(
	.adda_x /* OUT */ (adda_x_[15:0]),
	.adda_y /* OUT */ (adda_y_[15:0]),
	.addasel /* IN */ (addasel[2:0]),
	.a1_step_x /* IN */ (a1_step_x_[15:0]),
	.a1_step_y /* IN */ (a1_step_y_[15:0]),
	.a1_stepf_x /* IN */ (a1_stepf_x_[15:0]),
	.a1_stepf_y /* IN */ (a1_stepf_y_[15:0]),
	.a2_step_x /* IN */ (a2_step_x_[15:0]),
	.a2_step_y /* IN */ (a2_step_y_[15:0]),
	.a1_inc_x /* IN */ (a1_inc_x_[15:0]),
	.a1_inc_y /* IN */ (a1_inc_y_[15:0]),
	.a1_incf_x /* IN */ (a1_incf_x_[15:0]),
	.a1_incf_y /* IN */ (a1_incf_y_[15:0]),
	.adda_xconst /* IN */ (adda_xconst[2:0]),
	.adda_yconst /* IN */ (adda_yconst),
	.addareg /* IN */ (addareg),
	.suba_x /* IN */ (suba_x),
	.suba_y /* IN */ (suba_y)
);
endmodule
