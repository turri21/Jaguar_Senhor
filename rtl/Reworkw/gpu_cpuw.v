module gpu_cpu
(
	output [0:15] dread_out,
	output [0:15] dread_oe,
	input [0:15] dread_in,
	output [0:12] cpuaddr,
	output [0:31] cpudata,
	output ioreq,
	input at_1,
	input a_15,
	input ack,
	input big_io,
	input clk_0,
	input clk_2,
	input dwrite_0,
	input dwrite_1,
	input dwrite_2,
	input dwrite_3,
	input dwrite_4,
	input dwrite_5,
	input dwrite_6,
	input dwrite_7,
	input dwrite_8,
	input dwrite_9,
	input dwrite_10,
	input dwrite_11,
	input dwrite_12,
	input dwrite_13,
	input dwrite_14,
	input dwrite_15,
	input dwrite_16,
	input dwrite_17,
	input dwrite_18,
	input dwrite_19,
	input dwrite_20,
	input dwrite_21,
	input dwrite_22,
	input dwrite_23,
	input dwrite_24,
	input dwrite_25,
	input dwrite_26,
	input dwrite_27,
	input dwrite_28,
	input dwrite_29,
	input dwrite_30,
	input dwrite_31,
	input [0:15] io_addr,
	input iord,
	input iowr,
	input [0:31] mem_data,
	input reset_n,
	input sys_clk // Generated
);
parameter JERRY = 0;

wire [15:0] dread_out_;
assign {dread_out[15],dread_out[14],dread_out[13],dread_out[12],dread_out[11],dread_out[10],
dread_out[9],dread_out[8],dread_out[7],dread_out[6],dread_out[5],dread_out[4],dread_out[3],dread_out[2],dread_out[1],dread_out[0]} = dread_out_[15:0];
wire [15:0] dread_oe_;
assign {dread_oe[15],dread_oe[14],dread_oe[13],dread_oe[12],dread_oe[11],dread_oe[10],
dread_oe[9],dread_oe[8],dread_oe[7],dread_oe[6],dread_oe[5],dread_oe[4],dread_oe[3],dread_oe[2],dread_oe[1]} = {15{dread_oe[0]}};
wire [12:0] cpuaddr_;
assign {cpuaddr[12],cpuaddr[11],cpuaddr[10],
cpuaddr[9],cpuaddr[8],cpuaddr[7],cpuaddr[6],cpuaddr[5],cpuaddr[4],cpuaddr[3],cpuaddr[2],cpuaddr[1],cpuaddr[0]} = cpuaddr_[12:0];
wire [31:0] cpudata_;
assign {cpudata[31],cpudata[30],
cpudata[29],cpudata[28],cpudata[27],cpudata[26],cpudata[25],cpudata[24],cpudata[23],cpudata[22],cpudata[21],cpudata[20],
cpudata[19],cpudata[18],cpudata[17],cpudata[16],cpudata[15],cpudata[14],cpudata[13],cpudata[12],cpudata[11],cpudata[10],
cpudata[9],cpudata[8],cpudata[7],cpudata[6],cpudata[5],cpudata[4],cpudata[3],cpudata[2],cpudata[1],cpudata[0]} = cpudata_[31:0];
wire [31:0] dwrite = {dwrite_31,dwrite_30,
dwrite_29,dwrite_28,dwrite_27,dwrite_26,dwrite_25,dwrite_24,dwrite_23,dwrite_22,dwrite_21,dwrite_20,
dwrite_19,dwrite_18,dwrite_17,dwrite_16,dwrite_15,dwrite_14,dwrite_13,dwrite_12,dwrite_11,dwrite_10,
dwrite_9,dwrite_8,dwrite_7,dwrite_6,dwrite_5,dwrite_4,dwrite_3,dwrite_2,dwrite_1,dwrite_0};
wire [15:0] io_addr_ = {io_addr[15],io_addr[14],io_addr[13],io_addr[12],io_addr[11],io_addr[10],
io_addr[9],io_addr[8],io_addr[7],io_addr[6],io_addr[5],io_addr[4],io_addr[3],io_addr[2],io_addr[1],io_addr[0]};
wire [31:0] mem_data_ = {mem_data[31],mem_data[30],
mem_data[29],mem_data[28],mem_data[27],mem_data[26],mem_data[25],mem_data[24],mem_data[23],mem_data[22],mem_data[21],mem_data[20],
mem_data[19],mem_data[18],mem_data[17],mem_data[16],mem_data[15],mem_data[14],mem_data[13],mem_data[12],mem_data[11],mem_data[10],
mem_data[9],mem_data[8],mem_data[7],mem_data[6],mem_data[5],mem_data[4],mem_data[3],mem_data[2],mem_data[1],mem_data[0]};
_gpu_cpu #(.JERRY(JERRY)) gpu_cpu_inst
(
	.dread_out /* BUS */ (dread_out_[15:0]),
	.dread_oe /* BUS */ (dread_oe[0]),
	.cpuaddr /* OUT */ (cpuaddr_[12:0]),
	.cpudata /* OUT */ (cpudata_[31:0]),
	.ioreq /* OUT */ (ioreq),
	.at_1 /* IN */ (at_1),
	.a_15 /* IN */ (a_15),
	.ack /* IN */ (ack),
	.big_io /* IN */ (big_io),
	.clk_0 /* IN */ (clk_0),
	.clk_2 /* IN */ (clk_2),
	.dwrite /* IN */ (dwrite[31:0]),
	.io_addr /* IN */ (io_addr_[15:0]),
	.iord /* IN */ (iord),
	.iowr /* IN */ (iowr),
	.mem_data /* IN */ (mem_data_[31:0]),
	.reset_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
endmodule
