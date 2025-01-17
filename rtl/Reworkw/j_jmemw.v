module j_jmem
(
	input resetl,
	input clk,
	input dbgl,
	input bigend,
	input dsp16,
	input w_0,
	input w_1,
	input w_2,
	input rw,
	input mreq,
	input dtackl,
	input dspcsl,
	input wel_0,
	input oel_0,
	input testen,
	input at_15,
	input internal,
	input dbrl_0,
	input dbrl_1,
	input aout_0,
	input aout_1,
	input ndtest,
	output ack,
	output den,
	output aen,
	output siz_0,
	output siz_1,
	output dreql,
	output dmuxu_0,
	output dmuxu_1,
	output dmuxd_0,
	output dmuxd_1,
	output dren,
	output xdsrc,
	output iordl,
	output iowrl,
	output dspread,
	output dspwrite,
	output dinlatch_0,
	output dinlatch_1,
	output ainen,
	output seta1,
	output reads,
	output dbrls_0,
	output dbrls_1,
	output dspen,
	output masterdata,
	input sys_clk // Generated
);
wire [2:0] w = {w_2,w_1,w_0};
wire [1:0] dbrl = {dbrl_1,dbrl_0};
wire [1:0] aout = {aout_1,aout_0};
wire [1:0] siz;
assign {siz_1,siz_0} = siz[1:0];
wire [1:0] dmuxu;
assign {dmuxu_1,dmuxu_0} = dmuxu[1:0];
wire [1:0] dmuxd;
assign {dmuxd_1,dmuxd_0} = dmuxd[1:0];
wire [1:0] dinlatch;
assign {dinlatch_1,dinlatch_0} = dinlatch[1:0];
wire [1:0] dbrls;
assign {dbrls_1,dbrls_0} = dbrls[1:0];
_j_jmem jmem_inst
(
	.resetl /* IN */ (resetl),
	.clk /* IN */ (clk),
	.dbgl /* IN */ (dbgl),
	.bigend /* IN */ (bigend),
	.dsp16 /* IN */ (dsp16),
	.w /* IN */ (w[2:0]),
	.rw /* IN */ (rw),
	.mreq /* IN */ (mreq),
	.dtackl /* IN */ (dtackl),
	.dspcsl /* IN */ (dspcsl),
	.wel_0 /* IN */ (wel_0),
	.oel_0 /* IN */ (oel_0),
	.testen /* IN */ (testen),
	.at_15 /* IN */ (at_15),
	.internal /* IN */ (internal),
	.dbrl /* IN */ (dbrl[1:0]),
	.aout /* IN */ (aout[1:0]),
	.ndtest /* IN */ (ndtest),
	.ack /* OUT */ (ack),
	.den /* OUT */ (den),
	.aen /* OUT */ (aen),
	.siz /* OUT */ (siz[1:0]),
	.dreql /* OUT */ (dreql),
	.dmuxu /* OUT */ (dmuxu[1:0]),
	.dmuxd /* OUT */ (dmuxd[1:0]),
	.dren /* OUT */ (dren),
	.xdsrc /* OUT */ (xdsrc),
	.iordl /* OUT */ (iordl),
	.iowrl /* OUT */ (iowrl),
	.dspread /* OUT */ (dspread),
	.dspwrite /* OUT */ (dspwrite),
	.dinlatch /* OUT */ (dinlatch[1:0]),
	.ainen /* OUT */ (ainen),
	.seta1 /* OUT */ (seta1),
	.reads /* OUT */ (reads),
	.dbrls /* OUT */ (dbrls[1:0]),
	.dspen /* OUT */ (dspen),
	.masterdata /* OUT */ (masterdata),
	.sys_clk(sys_clk) // Generated
);
endmodule
