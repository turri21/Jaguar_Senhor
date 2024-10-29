//`include "defs.v"
// altera message_off 10036

module memwidth
(
	input w_0,
	input w_1,
	input w_2,
	input w_3,
	input ba_0,
	input ba_1,
	input ba_2,
	input mw_0,
	input mw_1,
	input ack,
	input nextc,
	input clk,
	input vcc,
	input gnd,
	input bigend,
	output maskw_0,
	output maskw_1,
	output maskw_2,
	output maskw_3,
	output maska_0,
	output maska_1,
	output maska_2,
	output at_0,
	output at_1,
	output at_2,
	output lastcycle,
	output lastc,
	output bm_0,
	output bm_1,
	output bm_2,
	output bm_3,
	output bm_4,
	output bm_5,
	output bm_6,
	output bm_7,
	input sys_clk // Generated
);
wire [3:0] w = {w_3,w_2,w_1,w_0};
wire [2:0] ba = {ba_2,ba_1,ba_0};
wire [1:0] mw = {mw_1,mw_0};
wire [3:0] maskw;
assign {maskw_3,maskw_2,maskw_1,maskw_0} = maskw[3:0];
wire [2:0] maska;
assign {maska_2,maska_1,maska_0} = maska[2:0];
wire [2:0] at;
assign {at_2,at_1,at_0} = at[2:0];
wire [7:0] bm;
assign {bm_7,bm_6,bm_5,bm_4,bm_3,bm_2,bm_1,bm_0} = bm[7:0];
_memwidth mw_inst
(
	.w /* IN */ (w[3:0]),
	.ba /* IN */ (ba[2:0]),
	.mw /* IN */ (mw[1:0]),
	.ack /* IN */ (ack),
	.nextc /* IN */ (nextc),
	.clk /* IN */ (clk),
	.bigend /* IN */ (bigend),
	.maskw /* OUT */ (maskw[3:0]),
	.maska /* OUT */ (maska[2:0]),
	.at /* OUT */ (at[2:0]),
	.lastcycle /* OUT */ (lastcycle),
	.lastc /* OUT */ (lastc),
	.bm /* OUT */ (bm[7:0]),
	.sys_clk(sys_clk) // Generated
);
endmodule
