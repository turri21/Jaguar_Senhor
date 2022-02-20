//`include "defs.v"

module fd4q
(
	output	q,
	input		d,
	input		cp,
	input		sd,
	input		sys_clk
);

reg	fd_data = 1'b1;

assign q = fd_data;
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
			fd_data <= d;
		end
	end
end

endmodule
