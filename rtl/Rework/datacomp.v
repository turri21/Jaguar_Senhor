/* verilator lint_off LITENDIAN */
//`include "defs.v"

module datacomp
(
	output [7:0] dcomp,
	input cmpdst,
	input [31:0] dstdlo,
	input [31:0] dstdhi,
	input [31:0] patdlo,
	input [31:0] patdhi,
	input [31:0] srcdlo,
	input [31:0] srcdhi
);
wire [7:0] patb_0;
wire [7:0] patb_1;
wire [7:0] patb_2;
wire [7:0] patb_3;
wire [7:0] patb_4;
wire [7:0] patb_5;
wire [7:0] patb_6;
wire [7:0] patb_7;
wire [7:0] tarb_0;
wire [7:0] tarb_1;
wire [7:0] tarb_2;
wire [7:0] tarb_3;
wire [7:0] tarb_4;
wire [7:0] tarb_5;
wire [7:0] tarb_6;
wire [7:0] tarb_7;
wire [31:0] tardlo;
wire [31:0] tardhi;

// DATACOMP.NET (42) - tardlo : mx2
assign tardlo[31:0] = (cmpdst) ? dstdlo[31:0] : srcdlo[31:0];

// DATACOMP.NET (43) - tardhi : mx2
assign tardhi[31:0] = (cmpdst) ? dstdhi[31:0] : srcdhi[31:0];

// DATACOMP.NET (45) - patb[0] : join
assign patb_0[7:0] = patdlo[7:0];
assign patb_1[7:0] = patdlo[15:8];
assign patb_2[7:0] = patdlo[23:16];
assign patb_3[7:0] = patdlo[31:24];
assign patb_4[7:0] = patdhi[7:0];
assign patb_5[7:0] = patdhi[15:8];
assign patb_6[7:0] = patdhi[23:16];
assign patb_7[7:0] = patdhi[31:24];

// DATACOMP.NET (54) - tarb[0] : join
assign tarb_0[7:0] = tardlo[7:0];
assign tarb_1[7:0] = tardlo[15:8];
assign tarb_2[7:0] = tardlo[23:16];
assign tarb_3[7:0] = tardlo[31:24];
assign tarb_4[7:0] = tardhi[7:0];
assign tarb_5[7:0] = tardhi[15:8];
assign tarb_6[7:0] = tardhi[23:16];
assign tarb_7[7:0] = tardhi[31:24];

// DATACOMP.NET (63) - dcmp[0-7] : cmp8_int
assign dcomp[0] = (patb_0[7:0] == tarb_0[7:0]);
assign dcomp[1] = (patb_1[7:0] == tarb_1[7:0]);
assign dcomp[2] = (patb_2[7:0] == tarb_2[7:0]);
assign dcomp[3] = (patb_3[7:0] == tarb_3[7:0]);
assign dcomp[4] = (patb_4[7:0] == tarb_4[7:0]);
assign dcomp[5] = (patb_5[7:0] == tarb_5[7:0]);
assign dcomp[6] = (patb_6[7:0] == tarb_6[7:0]);
assign dcomp[7] = (patb_7[7:0] == tarb_7[7:0]);

endmodule
/* verilator lint_on LITENDIAN */
