module j_txer
(
	output serout,
	output tbe,
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input din_11,
	input din_12,
	input din_13,
	input din_14,
	input din_15,
	input u2dwr,
	input paren,
	input even,
	input bx16,
	input txpol,
	input txbrk,
	input resetl,
	input clk,
	input sys_clk // Generated
);
wire [15:0] din = {din_15,din_14,din_13,din_12,din_11,din_10,
din_9,din_8,din_7,din_6,din_5,din_4,din_3,din_2,din_1,din_0};
_j_txer txer_inst
(
	.serout /* OUT */ (serout),
	.tbe /* OUT */ (tbe),
	.din /* IN */ (din[15:0]),
	.u2dwr /* IN */ (u2dwr),
	.paren /* IN */ (paren),
	.even /* IN */ (even),
	.bx16 /* IN */ (bx16),
	.txpol /* IN */ (txpol),
	.txbrk /* IN */ (txbrk),
	.resetl /* IN */ (resetl),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
endmodule
