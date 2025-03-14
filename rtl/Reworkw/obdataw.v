//`include "defs.v"
// altera message_off 10036

module obdata
(
	input aout_9,
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input din_11,
	input din_12,
	input din_13,
	input din_14,
	input din_15,
	input reads,
	input palen,
	input clutt,
	input d_0,
	input d_1,
	input d_2,
	input d_3,
	input d_4,
	input d_5,
	input d_6,
	input d_7,
	input d_8,
	input d_9,
	input d_10,
	input d_11,
	input d_12,
	input d_13,
	input d_14,
	input d_15,
	input d_16,
	input d_17,
	input d_18,
	input d_19,
	input d_20,
	input d_21,
	input d_22,
	input d_23,
	input d_24,
	input d_25,
	input d_26,
	input d_27,
	input d_28,
	input d_29,
	input d_30,
	input d_31,
	input d_32,
	input d_33,
	input d_34,
	input d_35,
	input d_36,
	input d_37,
	input d_38,
	input d_39,
	input d_40,
	input d_41,
	input d_42,
	input d_43,
	input d_44,
	input d_45,
	input d_46,
	input d_47,
	input d_48,
	input d_49,
	input d_50,
	input d_51,
	input d_52,
	input d_53,
	input d_54,
	input d_55,
	input d_56,
	input d_57,
	input d_58,
	input d_59,
	input d_60,
	input d_61,
	input d_62,
	input d_63,
	input obdlatch,
	input mode1,
	input mode2,
	input mode4,
	input mode8,
	input mode16,
	input mode24,
	input scaledtype,
	input rmw,
	input index_1,
	input index_2,
	input index_3,
	input index_4,
	input index_5,
	input index_6,
	input index_7,
	input xld,
	input reflected,
	input transen,
	input xscale_0,
	input xscale_1,
	input xscale_2,
	input xscale_3,
	input xscale_4,
	input xscale_5,
	input xscale_6,
	input xscale_7,
	input resetl,
	input clk,
	input obld_1,
	input obld_2,
	input hilo,
	input lbt,
	input at_1,
	input at_2,
	input at_3,
	input at_4,
	input at_5,
	input at_6,
	input at_7,
	input at_8,
	input at_9,
	input at_10,
	output obdone,
	output obdready,
	output lbwa_1,
	output lbwa_2,
	output lbwa_3,
	output lbwa_4,
	output lbwa_5,
	output lbwa_6,
	output lbwa_7,
	output lbwa_8,
	output lbwa_9,
	output lbwe_0,
	output lbwe_1,
	output lbwd_0,
	output lbwd_1,
	output lbwd_2,
	output lbwd_3,
	output lbwd_4,
	output lbwd_5,
	output lbwd_6,
	output lbwd_7,
	output lbwd_8,
	output lbwd_9,
	output lbwd_10,
	output lbwd_11,
	output lbwd_12,
	output lbwd_13,
	output lbwd_14,
	output lbwd_15,
	output lbwd_16,
	output lbwd_17,
	output lbwd_18,
	output lbwd_19,
	output lbwd_20,
	output lbwd_21,
	output lbwd_22,
	output lbwd_23,
	output lbwd_24,
	output lbwd_25,
	output lbwd_26,
	output lbwd_27,
	output lbwd_28,
	output lbwd_29,
	output lbwd_30,
	output lbwd_31,
	output offscreen,
	output rmw1,
	output lben,
	output dr_0_out,
	output dr_0_oe,
	input dr_0_in,
	output dr_1_out,
	output dr_1_oe,
	input dr_1_in,
	output dr_2_out,
	output dr_2_oe,
	input dr_2_in,
	output dr_3_out,
	output dr_3_oe,
	input dr_3_in,
	output dr_4_out,
	output dr_4_oe,
	input dr_4_in,
	output dr_5_out,
	output dr_5_oe,
	input dr_5_in,
	output dr_6_out,
	output dr_6_oe,
	input dr_6_in,
	output dr_7_out,
	output dr_7_oe,
	input dr_7_in,
	output dr_8_out,
	output dr_8_oe,
	input dr_8_in,
	output dr_9_out,
	output dr_9_oe,
	input dr_9_in,
	output dr_10_out,
	output dr_10_oe,
	input dr_10_in,
	output dr_11_out,
	output dr_11_oe,
	input dr_11_in,
	output dr_12_out,
	output dr_12_oe,
	input dr_12_in,
	output dr_13_out,
	output dr_13_oe,
	input dr_13_in,
	output dr_14_out,
	output dr_14_oe,
	input dr_14_in,
	output dr_15_out,
	output dr_15_oe,
	input dr_15_in,
	input sys_clk // Generated
);
wire [15:0] din = {din_15,din_14,din_13,din_12,din_11,din_10,din_9,din_8,din_7,din_6,din_5,din_4,din_3,din_2,din_1,din_0};
wire [63:0] d = {d_63,d_62,d_61,d_60,
d_59,d_58,d_57,d_56,d_55,d_54,d_53,d_52,d_51,d_50,
d_49,d_48,d_47,d_46,d_45,d_44,d_43,d_42,d_41,d_40,
d_39,d_38,d_37,d_36,d_35,d_34,d_33,d_32,d_31,d_30,
d_29,d_28,d_27,d_26,d_25,d_24,d_23,d_22,d_21,d_20,
d_19,d_18,d_17,d_16,d_15,d_14,d_13,d_12,d_11,d_10,
d_9,d_8,d_7,d_6,d_5,d_4,d_3,d_2,d_1,d_0};
wire [7:0] xscale = {xscale_7,xscale_6,xscale_5,xscale_4,xscale_3,xscale_2,xscale_1,xscale_0};
wire [7:1] index = {index_7,index_6,index_5,index_4,index_3,index_2,index_1};
wire [10:1] at = {at_10,at_9,at_8,at_7,at_6,at_5,at_4,at_3,at_2,at_1};
wire [2:1] obld = {obld_2,obld_1};
wire [9:1] lbwa;
assign {lbwa_9,lbwa_8,lbwa_7,lbwa_6,lbwa_5,lbwa_4,lbwa_3,lbwa_2,lbwa_1} = lbwa[9:1];
wire [1:0] lbwe;
assign {lbwe_1,lbwe_0} = lbwe[1:0];
wire [31:0] lbwd;
assign {lbwd_31,lbwd_30,
lbwd_29,lbwd_28,lbwd_27,lbwd_26,lbwd_25,lbwd_24,lbwd_23,lbwd_22,lbwd_21,lbwd_20,
lbwd_19,lbwd_18,lbwd_17,lbwd_16,lbwd_15,lbwd_14,lbwd_13,lbwd_12,lbwd_11,lbwd_10,
lbwd_9,lbwd_8,lbwd_7,lbwd_6,lbwd_5,lbwd_4,lbwd_3,lbwd_2,lbwd_1,lbwd_0} = lbwd[31:0];
wire [15:0] dr_out;
assign {dr_15_out,dr_14_out,dr_13_out,dr_12_out,dr_11_out,dr_10_out,dr_9_out,dr_8_out,dr_7_out,dr_6_out,dr_5_out,dr_4_out,dr_3_out,dr_2_out,dr_1_out,dr_0_out} = dr_out[15:0];
assign {dr_15_oe,dr_14_oe,dr_13_oe,dr_12_oe,dr_11_oe,dr_10_oe,dr_9_oe,dr_8_oe,dr_7_oe,dr_6_oe,dr_5_oe,dr_4_oe,dr_3_oe,dr_2_oe,dr_1_oe} = {15{dr_0_oe}};
_obdata obd_inst
(
	.aout_9 /* IN */ (aout_9),
	.din /* IN */ (din[15:0]),
	.reads /* IN */ (reads),
	.palen /* IN */ (palen),
	.clutt /* IN */ (clutt),
	.d /* IN */ (d[63:0]),
	.obdlatch /* IN */ (obdlatch),
	.mode1 /* IN */ (mode1),
	.mode2 /* IN */ (mode2),
	.mode4 /* IN */ (mode4),
	.mode8 /* IN */ (mode8),
	.mode16 /* IN */ (mode16),
	.mode24 /* IN */ (mode24),
	.scaledtype /* IN */ (scaledtype),
	.rmw /* IN */ (rmw),
	.index /* IN */ (index[7:1]),
	.xld /* IN */ (xld),
	.reflected /* IN */ (reflected),
	.transen /* IN */ (transen),
	.xscale /* IN */ (xscale[7:0]),
	.resetl /* IN */ (resetl),
	.clk /* IN */ (clk),
	.obld_1 /* IN */ (obld[1]),
	.obld_2 /* IN */ (obld[2]),
	.hilo /* IN */ (hilo),
	.lbt /* IN */ (lbt),
	.at /* IN */ (at[10:1]),
	.obdone /* OUT */ (obdone),
	.obdready /* OUT */ (obdready),
	.lbwa /* OUT */ (lbwa[9:1]),
	.lbwe /* OUT */ (lbwe[1:0]),
	.lbwd /* OUT */ (lbwd[31:0]),
	.offscreen /* OUT */ (offscreen),
	.rmw1 /* OUT */ (rmw1),
	.lben /* OUT */ (lben),
	.dr_out /* BUS */ (dr_out[15:0]),
	.dr_oe /* BUS */ (dr_0_oe),
	.sys_clk(sys_clk) // Generated
);
endmodule
