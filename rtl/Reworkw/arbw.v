//`include "defs.v"

module arb
(
	input bbreq_0,
	input bbreq_1,
	input gbreq_0,
	input gbreq_1,
	input obbreq,
	input bglin,
	input brlin,
	input dbrl_0,
	input dbrl_1,
	input refreq,
	input ihandler,
	input ack,
	input resetl,
	input clk,
	input vcc,
	input bgain,
	input notreadt,
	input dreqin,
	output bback,
	output gback,
	output obback,
	output brlout,
	output dbgl,
	output refack,
	output ba,
	output intbm,
	output cpubm,
	output intbms,
	output intbmw,
	input sys_clk // Generated
);
wire [1:0] bbreq = {bbreq_1,bbreq_0};
wire [1:0] gbreq = {gbreq_1,gbreq_0};
wire [1:0] dbrl = {dbrl_1,dbrl_0};
_arb arb_inst
(
	.bbreq /* IN */ (bbreq[1:0]),
	.gbreq /* IN */ (gbreq[1:0]),
	.obbreq /* IN */ (obbreq),
	.bglin /* IN */ (bglin),
	.brlin /* IN */ (brlin),
	.dbrl /* IN */ (dbrl[1:0]),
	.refreq /* IN */ (refreq),
	.ihandler /* IN */ (ihandler),
	.ack /* IN */ (ack),
	.resetl /* IN */ (resetl),
	.clk /* IN */ (clk),
	.bgain /* IN */ (bgain),
	.notreadt /* IN */ (notreadt),
	.dreqin /* IN */ (dreqin),
	.bback /* OUT */ (bback),
	.gback /* OUT */ (gback),
	.obback /* OUT */ (obback),
	.brlout /* OUT */ (brlout),
	.dbgl /* OUT */ (dbgl),
	.refack /* OUT */ (refack),
	.ba /* OUT */ (ba),
	.intbm /* OUT */ (intbm),
	.cpubm /* OUT */ (cpubm),
	.intbms /* OUT */ (intbms),
	.intbmw /* OUT */ (intbmw),
	.sys_clk(sys_clk) // Generated
);
endmodule
