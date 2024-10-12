/* verilator lint_off LITENDIAN */
//`include "defs.v"

module mag_16
(
	output gt,
	output eq,
	output lt,
	input [15:0] a,
	input [15:0] b
);

assign gt = a > b;
assign eq = a == b;
assign lt = a < b;

endmodule
/* verilator lint_on LITENDIAN */
