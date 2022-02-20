//`include "defs.v"

module fd2e
(
	output	q,
	output	qn,
	input		d,
	input		cp,
	input		cd,
	input		ti,
	input		te,
	input		sys_clk
);

reg	fd_data = 1'b0;

assign q = fd_data;
assign qn = ~fd_data;
reg old_cp, old_cd;

// always @(posedge cp or negedge cd)
always @(posedge sys_clk)
begin
	old_cp <= cp;
	old_cd <= cd;

	if ((~old_cp && cp) | (old_cd && ~cd)) begin
		if (~cd) begin
			fd_data <= 1'b0;
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
