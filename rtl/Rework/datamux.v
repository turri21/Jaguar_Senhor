//`include "defs.v"

module datamux
(
	output [15:0] data_x,
	output [15:0] data_y,
	input [31:0] gpu_din,
	input [15:0] addq_x,
	input [15:0] addq_y,
	input addqsel
);
// ADDRMUX.NET (166) - data_x : mx2
// ADDRMUX.NET (167) - data_y : mx2
assign data_x[15:0] = (addqsel) ? addq_x[15:0] : gpu_din[15:0];
assign data_y[15:0] = (addqsel) ? addq_y[15:0] : gpu_din[31:16];
endmodule
