//`include "defs.v"

module cpu
(
	input sizin_0,
	input sizin_1,
	input rwin,
	input notack,
	input ack,
	input dreqin,
	input resetl,
	input clk_0,
	input intbm,
	input intbms,
	input m68k,
	input ba,
	input dbgl,
	output dtackl,
	output erd,
	output w_0_out,
	output w_0_oe,
	input w_0_in,
	output w_1_out,
	output w_1_oe,
	input w_1_in,
	output w_2_out,
	output w_2_oe,
	input w_2_in,
	output w_3_out,
	output w_3_oe,
	input w_3_in,
	output rw_out,
	output rw_oe,
	input rw_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	output justify_out,
	output justify_oe,
	input justify_in,
	input sys_clk // Generated
);
wire [1:0] sizin = {sizin_1,sizin_0};
wire [3:0] w_out;
assign {w_3_out,w_2_out,w_1_out,w_0_out} = w_out[3:0];
assign {w_3_oe,w_2_oe,w_1_oe} = {3{w_0_oe}};
wire [3:0] w_in = {w_3_in,w_2_in,w_1_in,w_0_in};
_cpu cpu_inst
(
	.sizin /* IN */ (sizin[1:0]),
	.rwin /* IN */ (rwin),
	.notack /* IN */ (notack),
	.ack /* IN */ (ack),
	.dreqin /* IN */ (dreqin),
	.resetl /* IN */ (resetl),
	.clk_0 /* IN */ (clk_0),
	.intbm /* IN */ (intbm),
	.intbms /* IN */ (intbms),
	.m68k /* IN */ (m68k),
	.ba /* IN */ (ba),
	.dbgl /* IN */ (dbgl),
	.dtackl /* OUT */ (dtackl),
	.erd /* OUT */ (erd),
	.w_out /* BUS */ (w_out[3:0]),
	.w_oe /* BUS */ (w_0_oe),
	.w_in /* BUS */ (w_in[3:0]),
	.rw_out /* BUS */ (rw_out),
	.rw_oe /* BUS */ (rw_oe),
	.rw_in /* BUS */ (rw_in),
	.mreq_out /* BUS */ (mreq_out),
	.mreq_oe /* BUS */ (mreq_oe),
	.justify_out /* BUS */ (justify_out),
	.justify_oe /* BUS */ (justify_oe),
	.sys_clk(sys_clk) // Generated
);

endmodule
