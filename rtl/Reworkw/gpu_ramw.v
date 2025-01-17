module gpu_ram
(
	output [0:31] gpu_data_out,
	output [0:31] gpu_data_oe,
	input [0:31] gpu_data_in,
	input clk,
	input gpu_memw,
	input ram_addr_2,
	input ram_addr_3,
	input ram_addr_4,
	input ram_addr_5,
	input ram_addr_6,
	input ram_addr_7,
	input ram_addr_8,
	input ram_addr_9,
	input ram_addr_10,
	input ram_addr_11,
	input ramen,
	input sys_clk // Generated
);
wire [31:0] gpu_data_out_;
assign {gpu_data_out[31],gpu_data_out[30],
gpu_data_out[29],gpu_data_out[28],gpu_data_out[27],gpu_data_out[26],gpu_data_out[25],gpu_data_out[24],gpu_data_out[23],gpu_data_out[22],gpu_data_out[21],gpu_data_out[20],
gpu_data_out[19],gpu_data_out[18],gpu_data_out[17],gpu_data_out[16],gpu_data_out[15],gpu_data_out[14],gpu_data_out[13],gpu_data_out[12],gpu_data_out[11],gpu_data_out[10],
gpu_data_out[9],gpu_data_out[8],gpu_data_out[7],gpu_data_out[6],gpu_data_out[5],gpu_data_out[4],gpu_data_out[3],gpu_data_out[2],gpu_data_out[1],gpu_data_out[0]} = gpu_data_out_[31:0];
assign {gpu_data_oe[31],gpu_data_oe[30],
gpu_data_oe[29],gpu_data_oe[28],gpu_data_oe[27],gpu_data_oe[26],gpu_data_oe[25],gpu_data_oe[24],gpu_data_oe[23],gpu_data_oe[22],gpu_data_oe[21],gpu_data_oe[20],
gpu_data_oe[19],gpu_data_oe[18],gpu_data_oe[17],gpu_data_oe[16],gpu_data_oe[15],gpu_data_oe[14],gpu_data_oe[13],gpu_data_oe[12],gpu_data_oe[11],gpu_data_oe[10],
gpu_data_oe[9],gpu_data_oe[8],gpu_data_oe[7],gpu_data_oe[6],gpu_data_oe[5],gpu_data_oe[4],gpu_data_oe[3],gpu_data_oe[2],gpu_data_oe[1]} = {31{gpu_data_oe[0]}};
wire [31:0] gpu_data_in_ = {gpu_data_in[31],gpu_data_in[30],
gpu_data_in[29],gpu_data_in[28],gpu_data_in[27],gpu_data_in[26],gpu_data_in[25],gpu_data_in[24],gpu_data_in[23],gpu_data_in[22],gpu_data_in[21],gpu_data_in[20],
gpu_data_in[19],gpu_data_in[18],gpu_data_in[17],gpu_data_in[16],gpu_data_in[15],gpu_data_in[14],gpu_data_in[13],gpu_data_in[12],gpu_data_in[11],gpu_data_in[10],
gpu_data_in[9],gpu_data_in[8],gpu_data_in[7],gpu_data_in[6],gpu_data_in[5],gpu_data_in[4],gpu_data_in[3],gpu_data_in[2],gpu_data_in[1],gpu_data_in[0]};
wire [11:2] ram_addr = {ram_addr_11,ram_addr_10,ram_addr_9,ram_addr_8,ram_addr_7,ram_addr_6,ram_addr_5,ram_addr_4,ram_addr_3,ram_addr_2};
_gpu_ram gpu_ram_inst
(
	.gpu_data_out /* BUS */ (gpu_data_out_[31:0]),
	.gpu_data_oe /* BUS */ (gpu_data_oe[0]),
	.gpu_data_in /* BUS */ (gpu_data_in_[31:0]),
	.clk /* IN */ (clk),
	.gpu_memw /* IN */ (gpu_memw),
	.ram_addr /* IN */ (ram_addr[11:2]),
	.ramen /* IN */ (ramen),
	.sys_clk(sys_clk) // Generated
);

endmodule
