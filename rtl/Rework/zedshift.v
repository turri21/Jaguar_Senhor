/* verilator lint_off LITENDIAN */
//`include "defs.v"

module zedshift
(
	output [31:0] srczlo,
	output [31:0] srczhi,
	input [31:0] srcz1lo,
	input [31:0] srcz1hi,
	input [31:0] srcz2lo,
	input [31:0] srcz2hi,
	input [5:4] srcshift
);
wire [15:0] srcz_0;
wire [15:0] srcz_1;
wire [15:0] srcz_2;
wire [15:0] srcz_3;
wire [15:0] srczw_0;
wire [15:0] srczw_1;
wire [15:0] srczw_2;
wire [15:0] srczw_3;
wire [15:0] srczw_4;
wire [15:0] srczw_5;
wire [15:0] srczw_6;

// DATACOMP.NET (82) - srczw[0] : join
assign srczw_0[15:0] = srcz1lo[15:0];

// DATACOMP.NET (83) - srczw[1] : join
assign srczw_1[15:0] = srcz1lo[31:16];

// DATACOMP.NET (84) - srczw[2] : join
assign srczw_2[15:0] = srcz1hi[15:0];

// DATACOMP.NET (85) - srczw[3] : join
assign srczw_3[15:0] = srcz1hi[31:16];

// DATACOMP.NET (86) - srczw[4] : join
assign srczw_4[15:0] = srcz2lo[15:0];

// DATACOMP.NET (87) - srczw[5] : join
assign srczw_5[15:0] = srcz2lo[31:16];

// DATACOMP.NET (88) - srczw[6] : join
assign srczw_6[15:0] = srcz2hi[15:0];

// DATACOMP.NET (94) - srcz[0] : mx4
assign srcz_0[15:0] = srcshift[5] ? (srcshift[4] ? srczw_3[15:0] : srczw_2[15:0]) : (srcshift[4] ? srczw_1[15:0] : srczw_0[15:0]);

// DATACOMP.NET (96) - srcz[1] : mx4
assign srcz_1[15:0] = srcshift[5] ? (srcshift[4] ? srczw_4[15:0] : srczw_3[15:0]) : (srcshift[4] ? srczw_2[15:0] : srczw_1[15:0]);

// DATACOMP.NET (98) - srcz[2] : mx4
assign srcz_2[15:0] = srcshift[5] ? (srcshift[4] ? srczw_5[15:0] : srczw_4[15:0]) : (srcshift[4] ? srczw_3[15:0] : srczw_2[15:0]);

// DATACOMP.NET (100) - srcz[3] : mx4
assign srcz_3[15:0] = srcshift[5] ? (srcshift[4] ? srczw_6[15:0] : srczw_5[15:0]) : (srcshift[4] ? srczw_4[15:0] : srczw_3[15:0]);

// DATACOMP.NET (103) - srczlo : join
assign srczlo[15:0] = srcz_0[15:0];
assign srczlo[31:16] = srcz_1[15:0];

// DATACOMP.NET (104) - srczhi : join
assign srczhi[15:0] = srcz_2[15:0];
assign srczhi[31:16] = srcz_3[15:0];
endmodule
/* verilator lint_on LITENDIAN */
