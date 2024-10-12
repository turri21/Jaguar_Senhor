/* verilator lint_off LITENDIAN */
//`include "defs.v"

module mp1010a
(
	output	[19:0]	q,
	input		[9:0]		a,
	input		[9:0]		b
);

wire signed [9:0] ai;
wire signed [9:0] bi;
wire signed [19:0] qi;

assign ai = a;
assign bi = b;

assign qi = ai * bi;

assign q = qi;

endmodule
/* verilator lint_on LITENDIAN */