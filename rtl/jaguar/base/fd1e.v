//`include "defs.v"

module fd1e
(
	output	q,
	output	qn,
	input		d,
	input		cp,
	input		ti,
	input		te,
	input		sys_clk
);

reg	fd_data = 1'b0;

assign q = fd_data;
assign qn = ~fd_data;
reg old_cp;

// always @(posedge cp)
always @(posedge sys_clk)
begin
	old_cp <= cp;
	if (~old_cp && cp) begin
		if (~te) begin
			fd_data <= d;
		end else begin
			fd_data <= ti;
		end
	end
end

endmodule
