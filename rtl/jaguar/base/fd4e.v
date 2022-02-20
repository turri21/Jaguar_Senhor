//`include "defs.v"

module fd4e
(
	output	q,
	output	qn,
	input		d,
	input		cp,
	input		sd,
	input		ti,
	input		te,
	input		sys_clk
);

reg	fd_data = 1'b1;

assign q = fd_data;
assign qn = ~fd_data;
reg old_cp, old_sd;

// always @(posedge cp or negedge sd)
always @(posedge sys_clk)
begin
	old_cp <= cp;
	old_sd <= sd;

	if ((~old_cp && cp) | (old_sd && ~sd)) begin
		if (~sd) begin
			fd_data <= 1'b1;
		end else begin
			if (~te) begin
				fd_data <= d;
			end else begin
				fd_data <= ti;
			end
		end
	end
end

endmodule
