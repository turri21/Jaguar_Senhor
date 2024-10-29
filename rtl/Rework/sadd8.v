/* verilator lint_off LITENDIAN */
//`include "defs.v"

module _sadd8
(
	output [7:0] z,
	input [7:0] a,
	input [7:0] b
);
wire gnd;
wire [7:0] s;
wire co_3;
wire co_7;
wire overflowi;
wire overflow;
wire cob_7;

// LBUF.NET (277) - gnd : tie0
assign gnd = 1'b0;

// LBUF.NET (278) - s0 : add4
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

// LBUF.NET (279) - s1 : add4
add4 s1_inst
(
	.q_0 /* OUT */ (s[4]),
	.q_1 /* OUT */ (s[5]),
	.q_2 /* OUT */ (s[6]),
	.q_3 /* OUT */ (s[7]),
	.co /* OUT */ (co_7),
	.a_0 /* IN */ (a[4]),
	.a_1 /* IN */ (a[5]),
	.a_2 /* IN */ (a[6]),
	.a_3 /* IN */ (a[7]),
	.b_0 /* IN */ (b[4]),
	.b_1 /* IN */ (b[5]),
	.b_2 /* IN */ (b[6]),
	.b_3 /* IN */ (b[7]),
	.ci /* IN */ (co_3)
);

// LBUF.NET (280) - overflowi : en
assign overflowi = ~(co_7 ^ b[7]);

// LBUF.NET (281) - overflow : ivm
assign overflow = ~overflowi;

// LBUF.NET (282) - cob[7] : nivm
assign cob_7 = co_7;

// LBUF.NET (283) - z[0-7] : mx2
assign z = (overflow) ? cob_7 : s;
endmodule
/* verilator lint_on LITENDIAN */
