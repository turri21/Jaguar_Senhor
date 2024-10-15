//`include "defs.v"

module srcshift
(
	output [31:0] srcd_0,
	output [31:0] srcd_1,
	input big_pix,
	input [31:0] srcd1lo,
	input [31:0] srcd1hi,
	input [31:0] srcd2lo,
	input [31:0] srcd2hi,
	input [5:0] srcshift
);
wire [127:0] shsrc;
wire [6:0] besh;
wire [6:0] shift;
wire [127:8] onep;
wire [127:40] onel;
wire [127:56] onew;
wire [127:64] oneb;
wire [71:64] onen;
wire [71:64] onet;
wire [71:64] oneo;

// SRCSHIFT.NET (32) - unshsrc[0-31] : join
assign shsrc[31:0] = srcd2lo[31:0];

// SRCSHIFT.NET (33) - unshsrc[32-63] : join
assign shsrc[63:32] = srcd2hi[31:0];

// SRCSHIFT.NET (34) - unshsrc[64-95] : join
assign shsrc[95:64] = srcd1lo[31:0];

// SRCSHIFT.NET (35) - unshsrc[96-127] : join
assign shsrc[127:96] = srcd1hi[31:0];

// SRCSHIFT.NET (41) - besh[1] : ha1
// SRCSHIFT.NET (43) - besh[2] : eo
assign besh [2:0] = -srcshift[2:0];//128-srcshift for big endian

// SRCSHIFT.NET (48) - besh[4] : ha1
// SRCSHIFT.NET (50) - besh[5] : ha1
// SRCSHIFT.NET (51) - besh[6] : iv
assign besh [6:3] = -{1'b0,srcshift[5:3]};//128-srcshift for big endian

// SRCSHIFT.NET (53) - shift[0] : nivm
// SRCSHIFT.NET (54) - shift[1] : mx2m
// SRCSHIFT.NET (55) - shift[2] : mx2m
// SRCSHIFT.NET (56) - shiftt[3] : niv
// SRCSHIFT.NET (57) - shiftt[4] : mx2
// SRCSHIFT.NET (58) - shiftt[5] : mx2
// SRCSHIFT.NET (59) - shiftt[6] : an2
assign shift[6:0] = (big_pix) ? besh[6:0] : {1'b0,srcshift[5:0]};//0 and 3 are identical for big_pix

// SRCSHIFT.NET (68) - onep[8-63] : mx2
assign onep[63:8] = (shift[6]) ? shsrc[127:72] : shsrc[63:8];

// SRCSHIFT.NET (70) - onep[64-127] : mx2
assign onep[127:64] = (shift[6]) ? shsrc[63:0] : shsrc[127:64];

// SRCSHIFT.NET (75) - onel[40-127] : mx2
assign onel[127:40] = (shift[5]) ? onep[95:8] : onep[127:40];

// SRCSHIFT.NET (80) - onew[56-127] : mx2
assign onew[127:56] = (shift[4]) ? onel[111:40] : onel[127:56];

// SRCSHIFT.NET (85) - oneb[64-127] : mx2
assign oneb[127:64] = (shift[3]) ? onew[119:56] : onew[127:64];

// SRCSHIFT.NET (90) - onen[64-67] : mx2
assign onen[67:64] = (shift[2]) ? oneb[71:68] : oneb[67:64];

// SRCSHIFT.NET (92) - onen[68-71] : mx2
assign onen[71:68] = (shift[2]) ? oneb[67:64] : oneb[71:68];

// SRCSHIFT.NET (97) - onet[64-65] : mx2
assign onet[65:64] = (shift[1]) ? onen[71:70] : onen[65:64];

// SRCSHIFT.NET (99) - onet[66-71] : mx2
assign onet[71:66] = (shift[1]) ? onen[69:64] : onen[71:66];

// SRCSHIFT.NET (104) - oneo[64] : mx2
assign oneo[64] = (shift[0]) ? onet[71] : onet[64];

// SRCSHIFT.NET (106) - oneo[65-71] : mx2
assign oneo[71:65] = (shift[0]) ? onet[70:64] : onet[71:65];

// SRCSHIFT.NET (110) - srcd[0] : join
assign srcd_0[7:0] = oneo[71:64];
assign srcd_0[31:8] = oneb[95:72];

// SRCSHIFT.NET (111) - srcd[1] : join
assign srcd_1[31:0] = oneb[127:96];
endmodule

