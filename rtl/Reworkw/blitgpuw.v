//`include "defs.v"

module blitgpu
(
	output a1baseld,
	output a1flagld,
	output a1fracld,
	output a1incld,
	output a1incfld,
	output a1posrd,
	output a1posfrd,
	output a1ptrld,
	output a1stepld,
	output a1stepfld,
	output a1winld,
	output a2baseld,
	output a2flagld,
	output a2posrd,
	output a2ptrld,
	output a2stepld,
	output a2winld,
	output cmdld,
	output countld,
	output dstdld_0,
	output dstdld_1,
	output dstzld_0,
	output dstzld_1,
	output iincld,
	output intld_0,
	output intld_1,
	output intld_2,
	output intld_3,
	output patdld_0,
	output patdld_1,
	output srcd1ld_0,
	output srcd1ld_1,
	output srcz1ld_0,
	output srcz1ld_1,
	output srcz2ld_0,
	output srcz2ld_1,
	output statrd,
	output stopld,
	output zedld_0,
	output zedld_1,
	output zedld_2,
	output zedld_3,
	output zincld,
	input a1fracldi,
	input a1ptrldi,
	input a2ptrldi,
	input blit_back,
	input bliten,
	input dstdread,
	input dstzread,
	input [0:23] gpu_addr,
	input gpu_memw,
	input patdadd,
	input patfadd,
	input srcdread,
	input srcz1add,
	input srczread
);

wire [1:0] dstdld;
assign {dstdld_1,dstdld_0} = dstdld[1:0];
wire [1:0] dstzld;
assign {dstzld_1,dstzld_0} = dstzld[1:0];
wire [3:0] intld;
assign {intld_3,intld_2,intld_1,intld_0} = intld[3:0];
wire [1:0] patdld;
assign {patdld_1,patdld_0} = patdld[1:0];
wire [1:0] srcd1ld;
assign {srcd1ld_1,srcd1ld_0} = srcd1ld[1:0];
wire [1:0] srcz1ld;
assign {srcz1ld_1,srcz1ld_0} = srcz1ld[1:0];
wire [1:0] srcz2ld;
assign {srcz2ld_1,srcz2ld_0} = srcz2ld[1:0];
wire [3:0] zedld;
assign {zedld_3,zedld_2,zedld_1,zedld_0} = zedld[3:0];
wire [23:0] gpu_addr_ = {gpu_addr[23],gpu_addr[22],gpu_addr[21],gpu_addr[20],
gpu_addr[19],gpu_addr[18],gpu_addr[17],gpu_addr[16],gpu_addr[15],gpu_addr[14],gpu_addr[13],gpu_addr[12],gpu_addr[11],gpu_addr[10],
gpu_addr[9],gpu_addr[8],gpu_addr[7],gpu_addr[6],gpu_addr[5],gpu_addr[4],gpu_addr[3],gpu_addr[2],gpu_addr[1],gpu_addr[0]};

_blitgpu blitgpu_inst
(
	.a1baseld /* OUT */ (a1baseld),
	.a1flagld /* OUT */ (a1flagld),
	.a1fracld /* OUT */ (a1fracld),
	.a1incld /* OUT */ (a1incld),
	.a1incfld /* OUT */ (a1incfld),
	.a1posrd /* OUT */ (a1posrd),
	.a1posfrd /* OUT */ (a1posfrd),
	.a1ptrld /* OUT */ (a1ptrld),
	.a1stepld /* OUT */ (a1stepld),
	.a1stepfld /* OUT */ (a1stepfld),
	.a1winld /* OUT */ (a1winld),
	.a2baseld /* OUT */ (a2baseld),
	.a2flagld /* OUT */ (a2flagld),
	.a2posrd /* OUT */ (a2posrd),
	.a2ptrld /* OUT */ (a2ptrld),
	.a2stepld /* OUT */ (a2stepld),
	.a2winld /* OUT */ (a2winld),
	.cmdld /* OUT */ (cmdld),
	.countld /* OUT */ (countld),
	.dstdld /* OUT */ (dstdld[1:0]),
	.dstzld /* OUT */ (dstzld[1:0]),
	.iincld /* OUT */ (iincld),
	.intld /* OUT */ (intld[3:0]),
	.patdld /* OUT */ (patdld[1:0]),
	.srcd1ld /* OUT */ (srcd1ld[1:0]),
	.srcz1ld /* OUT */ (srcz1ld[1:0]),
	.srcz2ld /* OUT */ (srcz2ld[1:0]),
	.statrd /* OUT */ (statrd),
	.stopld /* OUT */ (stopld),
	.zedld /* OUT */ (zedld[3:0]),
	.zincld /* OUT */ (zincld),
	.a1fracldi /* IN */ (a1fracldi),
	.a1ptrldi /* IN */ (a1ptrldi),
	.a2ptrldi /* IN */ (a2ptrldi),
	.blit_back /* IN */ (blit_back),
	.bliten /* IN */ (bliten),
	.dstdread /* IN */ (dstdread),
	.dstzread /* IN */ (dstzread),
	.gpu_addr /* IN */ (gpu_addr_[23:0]),
	.gpu_memw /* IN */ (gpu_memw),
	.patdadd /* IN */ (patdadd),
	.patfadd /* IN */ (patfadd),
	.srcdread /* IN */ (srcdread),
	.srcz1add /* IN */ (srcz1add),
	.srczread /* IN */ (srczread)
);
endmodule
