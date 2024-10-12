/* verilator lint_off LITENDIAN */
//`include "defs.v"

module bank
(
	output match,
	input [10:0] a,
	input newrow,
	input resl,
	input sys_clk // Generated
);
reg [10:0] ra = 11'h000;
wire newrowl;
reg valid = 1'b1;
wire [10:0] m;
wire m1;
wire m2;

// ABUS.NET (483) - ra[0-10] : ldp1q
// always @(d or g)
`ifdef FAST_CLOCK
always @(posedge sys_clk)
`else
always @(negedge sys_clk) // /!\
`endif
begin
	if (newrow) begin
		ra <= a;
	end
end

// ABUS.NET (487) - newrowl : iv
assign newrowl = ~newrow;

// ABUS.NET (488) - valid : lsra
// always @(rn or sn)
`ifdef FAST_CLOCK
always @(posedge sys_clk)
`else
always @(negedge sys_clk) // /!\
`endif
begin
	if (~resl & newrowl) begin
		valid <= 1'b0;
	end else if (~newrowl) begin
		valid <= 1'b1;
	end
end

// ABUS.NET (492) - m[0-10] : en
assign m = ~(ra ^ a);

// ABUS.NET (494) - m1 : nd6
assign m1 = ~(&m[5:0]);

// ABUS.NET (495) - m2 : nd6
assign m2 = ~((&m[10:6]) & valid);

// ABUS.NET (496) - match : nr2
assign match = ~(m1 | m2);
endmodule
/* verilator lint_on LITENDIAN */
