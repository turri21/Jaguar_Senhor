//`include "defs.v"

module ldp1
(
	output	q,
	output	qn,
	input		d,
	input		g,
	input		sys_clk
);

reg	data = 1'b0;

assign q = data;
assign qn = ~data;

// always @(d or g)
`ifdef FAST_CLOCK
always @(posedge sys_clk)
`else
always @(negedge sys_clk) // /!\
`endif
begin
	if (g) begin
		data <= d;
	end
end

endmodule
