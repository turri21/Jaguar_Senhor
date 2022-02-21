/* verilator lint_off LITENDIAN */
//`include "defs.v"

module sysclkdly
(
	output z,
	input a,
	input sys_clk
);

reg r_z = 1'b0;

assign z = r_z;

`ifdef FAST_CLOCK
always @(posedge sys_clk)
`else
always @(negedge sys_clk) // /!\
`endif
begin
	r_z <= a;
end

// assign z = a;

endmodule
/* verilator lint_on LITENDIAN */
