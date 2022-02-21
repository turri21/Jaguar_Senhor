//`include "defs.v"

module lsrb
(
	output	q,
	input		r,
	input		s,
	input sys_clk
);

reg	data = 1'b0;

assign q = data;

// always @(r or s)
`ifdef FAST_CLOCK
always @(posedge sys_clk)
`else
always @(negedge sys_clk) // /!\
`endif
begin
	if (s & ~r) begin
		data <= 1'b1;
	end else if (r) begin
		data <= 1'b0;
	end
end

endmodule
