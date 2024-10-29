module mcontrol
(
	output [0:23] blit_addr_out,
	
	//output [0:23] blit_addr_oe,
	output blit_addr_oe,	// ElectronAsh.
	
	input [0:23] blit_addr_in,
	output justify_out,
	output justify_oe,
	input justify_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	output width_0_out,
	output width_0_oe,
	input width_0_in,
	output width_1_out,
	output width_1_oe,
	input width_1_in,
	output width_2_out,
	output width_2_oe,
	input width_2_in,
	output width_3_out,
	output width_3_oe,
	input width_3_in,
	output read_out,
	output read_oe,
	input read_in,
	output active,
	output blitack,
	output memidle,
	output memready,
	output read_ack,
	output wactive,
	input ack,
	input [0:23] address,
	input bcompen,
	input blit_back,
	input clk,
	input phrase_cycle,
	input phrase_mode,
	input pixsize_0,
	input pixsize_1,
	input pixsize_2,
	input pwidth_0,
	input pwidth_1,
	input pwidth_2,
	input pwidth_3,
	input readreq,
	input reset_n,
	input sread_1,
	input sreadx_1,
	input step_inner,
	input writereq,
	input sys_clk // Generated
);

wire [23:0] blit_addr_out_;
assign {blit_addr_out[23],blit_addr_out[22],blit_addr_out[21],blit_addr_out[20],
blit_addr_out[19],blit_addr_out[18],blit_addr_out[17],blit_addr_out[16],blit_addr_out[15],blit_addr_out[14],blit_addr_out[13],blit_addr_out[12],blit_addr_out[11],blit_addr_out[10],
blit_addr_out[9],blit_addr_out[8],blit_addr_out[7],blit_addr_out[6],blit_addr_out[5],blit_addr_out[4],blit_addr_out[3],blit_addr_out[2],blit_addr_out[1],blit_addr_out[0]} = blit_addr_out_[23:0];
wire [3:0] width_out;
assign {width_3_out,width_2_out,width_1_out,width_0_out} = width_out[3:0];
assign {width_3_oe,width_2_oe,width_1_oe} = {3{width_0_oe}};
wire [23:0] address_ = {address[23],address[22],address[21],address[20],
address[19],address[18],address[17],address[16],address[15],address[14],address[13],address[12],address[11],address[10],
address[9],address[8],address[7],address[6],address[5],address[4],address[3],address[2],address[1],address[0]};
wire [2:0] pixsize = {pixsize_2,pixsize_1,pixsize_0};
wire [3:0] pwidth = {pwidth_3,pwidth_2,pwidth_1,pwidth_0};

_mcontrol mcontrol_inst
(
	.blit_addr_out /* BUS */ (blit_addr_out_[23:0]),
	.blit_addr_oe /* BUS */ (blit_addr_oe),	// ElectronAsh.
	.justify_out /* BUS */ (justify_out),
	.justify_oe /* BUS */ (justify_oe),
	.justify_in /* BUS */ (justify_in),
	.mreq_out /* BUS */ (mreq_out),
	.mreq_oe /* BUS */ (mreq_oe),
	.mreq_in /* BUS */ (mreq_in),
	.width_out /* BUS */ (width_out[3:0]),
	.width_oe /* BUS */ (width_0_oe),
	.read_out /* BUS */ (read_out),
	.read_oe /* BUS */ (read_oe),
	.read_in /* BUS */ (read_in),
	.active /* OUT */ (active),
	.blitack /* OUT */ (blitack),
	.memidle /* OUT */ (memidle),
	.memready /* OUT */ (memready),
	.read_ack /* OUT */ (read_ack),
	.wactive /* OUT */ (wactive),
	.ack /* IN */ (ack),
	.address /* IN */ (address_[23:0]),
	.bcompen /* IN */ (bcompen),
	.blit_back /* IN */ (blit_back),
	.clk /* IN */ (clk),
	.phrase_cycle /* IN */ (phrase_cycle),
	.phrase_mode /* IN */ (phrase_mode),
	.pixsize /* IN */ (pixsize[2:0]),
	.pwidth /* IN */ (pwidth[3:0]),
	.readreq /* IN */ (readreq),
	.reset_n /* IN */ (reset_n),
	.sread_1 /* IN */ (sread_1),
	.sreadx_1 /* IN */ (sreadx_1),
	.step_inner /* IN */ (step_inner),
	.writereq /* IN */ (writereq),
	.sys_clk(sys_clk) // Generated
);
endmodule
