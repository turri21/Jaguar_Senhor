//`include "defs.v"

module bus
(
	input reads,
	input ack,
	input intdev,
	input cpu32,
	input ba_0,
	input ba_1,
	input ba_2,
	input mws64,
	input mws16,
	input mws8,
	input notdbg,
	input ourack,
	input w_0,
	input w_1,
	input w_2,
	input w_3,
	input erd,
	input justify,
	input intbm,
	input intbms,
	input cpubm,
	input clk,
	input testen,
	input intbmw,
	input resetl,
	input idle,
	output den_0,
	output den_1,
	output den_2,
	output aen,
	output dmuxu_0,
	output dmuxu_1,
	output dmuxu_2,
	output dmuxd_0,
	output dmuxd_1,
	output dmuxd_2,
	output dren,
	output xdsrc,
	output ainen,
	input sys_clk // Generated
);
wire [3:0] w = {w_3,w_2,w_1,w_0};
wire [2:0] ba = {ba_2,ba_1,ba_0};
wire [2:0] den;
assign {den_2,den_1,den_0} = den[2:0];
wire [2:0] dmuxu;
assign {dmuxu_2,dmuxu_1,dmuxu_0} = dmuxu[2:0];
wire [2:0] dmuxd;
assign {dmuxd_2,dmuxd_1,dmuxd_0} = dmuxd[2:0];
_bus bus_inst
(
	.reads /* IN */ (reads),
	.ack /* IN */ (ack),
	.intdev /* IN */ (intdev),
	.cpu32 /* IN */ (cpu32),
	.ba /* IN */ (ba[2:0]),
	.mws64 /* IN */ (mws64),
	.mws16 /* IN */ (mws16),
	.mws8 /* IN */ (mws8),
	.notdbg /* IN */ (notdbg),
	.ourack /* IN */ (ourack),
	.w /* IN */ (w[3:0]),
	.erd /* IN */ (erd),
	.justify /* IN */ (justify),
	.intbm /* IN */ (intbm),
	.intbms /* IN */ (intbms),
	.cpubm /* IN */ (cpubm),
	.clk /* IN */ (clk),
	.testen /* IN */ (testen),
	.intbmw /* IN */ (intbmw),
	.resetl /* IN */ (resetl),
	.idle /* IN */ (idle),
	.den /* OUT */ (den[2:0]),
	.aen /* OUT */ (aen),
	.dmuxu /* OUT */ (dmuxu[2:0]),
	.dmuxd /* OUT */ (dmuxd[2:0]),
	.dren /* OUT */ (dren),
	.xdsrc /* OUT */ (xdsrc),
	.ainen /* OUT */ (ainen),
	.sys_clk(sys_clk) // Generdmuxded
);
endmodule
