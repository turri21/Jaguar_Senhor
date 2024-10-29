/* verilator lint_off LITENDIAN */
//`include "defs.v"

module _sadd4
(
	output [3:0] z,
	input [3:0] a,
	input [3:0] b
);
wire gnd;
wire [3:0] s;
wire co_3;
wire overflowi;
wire overflow;

// LBUF.NET (260) - gnd : tie0
assign gnd = 1'b0;

// LBUF.NET (261) - s0 : add4
add4 s0_inst
(
	.q_0 /* OUT */ (s[0]),
	.q_1 /* OUT */ (s[1]),
	.q_2 /* OUT */ (s[2]),
	.q_3 /* OUT */ (s[3]),
	.co /* OUT */ (co_3),
	.a_0 /* IN */ (a[0]),
	.a_1 /* IN */ (a[1]),
	.a_2 /* IN */ (a[2]),
	.a_3 /* IN */ (a[3]),
	.b_0 /* IN */ (b[0]),
	.b_1 /* IN */ (b[1]),
	.b_2 /* IN */ (b[2]),
	.b_3 /* IN */ (b[3]),
	.ci /* IN */ (gnd)
);

// LBUF.NET (262) - overflowi : en
assign overflowi = ~(co_3 ^ b[3]);

// LBUF.NET (263) - overflow : ivm
assign overflow = ~overflowi;

// LBUF.NET (264) - z[0-3] : mx2
assign z = (overflow) ? co_3 : s;
endmodule
/* verilator lint_on LITENDIAN */
