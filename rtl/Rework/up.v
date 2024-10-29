//`include "defs.v"

module _up
(
	input [63:0] din,
	input [2:0] dmuxu,
	output [63:8] dout
);

// Output buffers
wire [31:8] dout_obuf;

// Output buffers
assign dout[31:8] = dout_obuf[31:8];

// DBUS.NET (131) - dout[8-15] : mx2p
assign dout_obuf[15:8] = (dmuxu[0]) ? din[7:0] : din[15:8];

// DBUS.NET (132) - dout[16-23] : mx2p
assign dout_obuf[23:16] = (dmuxu[1]) ? din[7:0] : din[23:16];

// DBUS.NET (133) - dout[24-31] : mx4p
assign dout_obuf[31:24] = dmuxu[1] ? (dmuxu[0] ? din[7:0] : din[15:8]) : (din[31:24]);

// DBUS.NET (135) - dout[32-39] : mx2p
assign dout[39:32] = (dmuxu[2]) ? din[7:0] : din[39:32];

// DBUS.NET (136) - dout[40-63] : mx2p
assign dout[63:40] = (dmuxu[2]) ? dout_obuf[31:8] : din[63:40];
endmodule

