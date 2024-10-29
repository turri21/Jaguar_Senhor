module interrupt
(
	output gpu_dout_3_out,
	output gpu_dout_3_oe,
	input gpu_dout_3_in,
	output gpu_dout_4_out,
	output gpu_dout_4_oe,
	input gpu_dout_4_in,
	output gpu_dout_5_out,
	output gpu_dout_5_oe,
	input gpu_dout_5_in,
	output gpu_dout_6_out,
	output gpu_dout_6_oe,
	input gpu_dout_6_in,
	output gpu_dout_7_out,
	output gpu_dout_7_oe,
	input gpu_dout_7_in,
	output gpu_dout_8_out,
	output gpu_dout_8_oe,
	input gpu_dout_8_in,
	output gpu_dout_9_out,
	output gpu_dout_9_oe,
	input gpu_dout_9_in,
	output gpu_dout_10_out,
	output gpu_dout_10_oe,
	input gpu_dout_10_in,
	output gpu_dout_11_out,
	output gpu_dout_11_oe,
	input gpu_dout_11_in,
	output gpu_dout_12_out,
	output gpu_dout_12_oe,
	input gpu_dout_12_in,
	output gpu_dout_13_out,
	output gpu_dout_13_oe,
	input gpu_dout_13_in,
	output gpu_dout_16_out, // jerry only
	output gpu_dout_16_oe, // jerry only
	input gpu_dout_16_in, // jerry only
	output gpu_dout_17_out, // jerry only
	output gpu_dout_17_oe, // jerry only
	input gpu_dout_17_in, // jerry only
	output imaski,
	output [0:15] intins,
	output intser,
	input atomic,
	input clk,
	input [0:31] gpu_din,
	input flagrd,
	input flagwr,
	input gpu_irq_0,
	input gpu_irq_1,
	input gpu_irq_2,
	input gpu_irq_3,
	input gpu_irq_4,
	input gpu_irq_5, // jerry only
	input reset_n,
	input romold,
	input statrd,
	input sys_clk // Generated
);
parameter JERRY = 0;
wire [31:0] gpu_dout_out;
assign {gpu_dout_17_out,gpu_dout_16_out} = gpu_dout_out[17:16];
assign gpu_dout_17_oe = gpu_dout_16_oe;
assign {gpu_dout_13_out,gpu_dout_12_out,gpu_dout_11_out,gpu_dout_10_out,gpu_dout_9_out,gpu_dout_8_out,gpu_dout_7_out,gpu_dout_6_out,gpu_dout_5_out,gpu_dout_4_out,gpu_dout_3_out} = gpu_dout_out[13:3];
assign {gpu_dout_13_oe,gpu_dout_12_oe,gpu_dout_11_oe,gpu_dout_5_oe,gpu_dout_4_oe} = {5{gpu_dout_3_oe}};
assign {gpu_dout_10_oe,gpu_dout_9_oe,gpu_dout_8_oe,gpu_dout_7_oe} = {4{gpu_dout_6_oe}};
wire [15:0] intins_;
assign {intins[15],intins[14],intins[13],intins[12],intins[11],intins[10],
intins[9],intins[8],intins[7],intins[6],intins[5],intins[4],intins[3],intins[2],intins[1],intins[0]} = intins_[15:0];
wire [31:0] gpu_din_ = {gpu_din[31],gpu_din[30],
gpu_din[29],gpu_din[28],gpu_din[27],gpu_din[26],gpu_din[25],gpu_din[24],gpu_din[23],gpu_din[22],gpu_din[21],gpu_din[20],
gpu_din[19],gpu_din[18],gpu_din[17],gpu_din[16],gpu_din[15],gpu_din[14],gpu_din[13],gpu_din[12],gpu_din[11],gpu_din[10],
gpu_din[9],gpu_din[8],gpu_din[7],gpu_din[6],gpu_din[5],gpu_din[4],gpu_din[3],gpu_din[2],gpu_din[1],gpu_din[0]};
wire [5:0] gpu_irq = {gpu_irq_5,gpu_irq_4,gpu_irq_3,gpu_irq_2,gpu_irq_1,gpu_irq_0};
_interrupt #(.JERRY(JERRY)) interrupt_inst
(
	.gpu_dout_out /* BUS */ (gpu_dout_out[13:3]),
	.gpu_dout_13_3_oe /* BUS */ (gpu_dout_3_oe), //flagrd; 14 below
	.gpu_dout_10_6_oe /* BUS */ (gpu_dout_6_oe), //statrd
	.gpu_dout_hi_out /* BUS */ (gpu_dout_out[17:16]), //flagrd; 14 below
	.gpu_dout_17_16_oe /* BUS */ (gpu_dout_16_oe), //statrd
	.imaski /* OUT */ (imaski),
	.intins /* OUT */ (intins_[15:0]),
	.intser /* OUT */ (intser),
	.atomic /* IN */ (atomic),
	.clk /* IN */ (clk),
	.gpu_din /* IN */ (gpu_din_[31:0]),
	.flagrd /* IN */ (flagrd),
	.flagwr /* IN */ (flagwr),
	.gpu_irq /* IN */ (gpu_irq[5:0]),
	.reset_n /* IN */ (reset_n),
	.romold /* IN */ (romold),
	.statrd /* IN */ (statrd),
	.sys_clk(sys_clk) // Generated
);
endmodule
