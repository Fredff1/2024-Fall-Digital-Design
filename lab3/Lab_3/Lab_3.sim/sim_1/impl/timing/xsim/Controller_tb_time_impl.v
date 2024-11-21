// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Thu Nov 21 17:26:30 2024
// Host        : FredMachine running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Courses/CS_Cousrces/2024 Fall Digital
//               Design/lab3/Lab_3/Lab_3.sim/sim_1/impl/timing/xsim/Controller_tb_time_impl.v}
// Design      : Controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "9ed40379" *) 
(* NotValidForBitStream *)
module Controller
   (CLK100MHZ,
    rst,
    item_type,
    money_input,
    reset_money_input,
    purchase_success,
    seg,
    AN,
    DP);
  input CLK100MHZ;
  input rst;
  input [2:0]item_type;
  input [3:0]money_input;
  input reset_money_input;
  output purchase_success;
  output [6:0]seg;
  output [7:0]AN;
  output DP;

  wire [7:0]AN;
  wire [3:0]AN_OBUF;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire DP;
  wire DP_OBUF;
  wire \amount_paid[3]_i_4_n_0 ;
  wire \amount_paid_reg_n_0_[0] ;
  wire \amount_paid_reg_n_0_[1] ;
  wire \amount_paid_reg_n_0_[2] ;
  wire \amount_paid_reg_n_0_[3] ;
  wire \amount_paid_reg_n_0_[4] ;
  wire \amount_paid_reg_n_0_[5] ;
  wire \amount_paid_reg_n_0_[6] ;
  wire \amount_paid_reg_n_0_[7] ;
  wire button_pressed_reg_n_0;
  wire debounce_inst_n_0;
  wire debounce_inst_n_9;
  wire [4:0]item_price;
  wire \item_price[0]_i_1_n_0 ;
  wire \item_price[1]_i_1_n_0 ;
  wire \item_price[2]_i_1_n_0 ;
  wire \item_price[3]_i_1_n_0 ;
  wire \item_price[4]_i_1_n_0 ;
  wire [2:0]item_type;
  wire [2:0]item_type_IBUF;
  wire [3:0]money_input;
  wire [3:0]money_input_IBUF;
  wire [10:1]p_0_in;
  wire [7:0]p_1_in;
  wire purchase_success;
  wire purchase_success0;
  wire purchase_success10_in;
  wire purchase_success_OBUF;
  wire purchase_success_i_10_n_0;
  wire purchase_success_i_3_n_0;
  wire purchase_success_i_4_n_0;
  wire purchase_success_i_5_n_0;
  wire purchase_success_i_6_n_0;
  wire purchase_success_i_7_n_0;
  wire purchase_success_i_8_n_0;
  wire purchase_success_i_9_n_0;
  wire rst;
  wire rst_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[0]_inst_i_3_n_0 ;
  wire \seg_OBUF[1]_inst_i_2_n_0 ;
  wire \seg_OBUF[1]_inst_i_3_n_0 ;
  wire \seg_OBUF[2]_inst_i_100_n_0 ;
  wire \seg_OBUF[2]_inst_i_101_n_0 ;
  wire \seg_OBUF[2]_inst_i_102_n_0 ;
  wire \seg_OBUF[2]_inst_i_103_n_0 ;
  wire \seg_OBUF[2]_inst_i_104_n_0 ;
  wire \seg_OBUF[2]_inst_i_105_n_0 ;
  wire \seg_OBUF[2]_inst_i_106_n_0 ;
  wire \seg_OBUF[2]_inst_i_107_n_0 ;
  wire \seg_OBUF[2]_inst_i_108_n_0 ;
  wire \seg_OBUF[2]_inst_i_109_n_0 ;
  wire \seg_OBUF[2]_inst_i_110_n_0 ;
  wire \seg_OBUF[2]_inst_i_111_n_0 ;
  wire \seg_OBUF[2]_inst_i_112_n_0 ;
  wire \seg_OBUF[2]_inst_i_113_n_0 ;
  wire \seg_OBUF[2]_inst_i_113_n_5 ;
  wire \seg_OBUF[2]_inst_i_113_n_6 ;
  wire \seg_OBUF[2]_inst_i_113_n_7 ;
  wire \seg_OBUF[2]_inst_i_114_n_0 ;
  wire \seg_OBUF[2]_inst_i_114_n_5 ;
  wire \seg_OBUF[2]_inst_i_114_n_6 ;
  wire \seg_OBUF[2]_inst_i_114_n_7 ;
  wire \seg_OBUF[2]_inst_i_115_n_2 ;
  wire \seg_OBUF[2]_inst_i_115_n_7 ;
  wire \seg_OBUF[2]_inst_i_116_n_0 ;
  wire \seg_OBUF[2]_inst_i_117_n_0 ;
  wire \seg_OBUF[2]_inst_i_118_n_0 ;
  wire \seg_OBUF[2]_inst_i_118_n_4 ;
  wire \seg_OBUF[2]_inst_i_118_n_5 ;
  wire \seg_OBUF[2]_inst_i_118_n_6 ;
  wire \seg_OBUF[2]_inst_i_118_n_7 ;
  wire \seg_OBUF[2]_inst_i_119_n_0 ;
  wire \seg_OBUF[2]_inst_i_11_n_0 ;
  wire \seg_OBUF[2]_inst_i_120_n_0 ;
  wire \seg_OBUF[2]_inst_i_121_n_0 ;
  wire \seg_OBUF[2]_inst_i_122_n_0 ;
  wire \seg_OBUF[2]_inst_i_123_n_0 ;
  wire \seg_OBUF[2]_inst_i_124_n_0 ;
  wire \seg_OBUF[2]_inst_i_125_n_0 ;
  wire \seg_OBUF[2]_inst_i_126_n_0 ;
  wire \seg_OBUF[2]_inst_i_127_n_0 ;
  wire \seg_OBUF[2]_inst_i_128_n_0 ;
  wire \seg_OBUF[2]_inst_i_129_n_0 ;
  wire \seg_OBUF[2]_inst_i_12_n_0 ;
  wire \seg_OBUF[2]_inst_i_130_n_0 ;
  wire \seg_OBUF[2]_inst_i_131_n_0 ;
  wire \seg_OBUF[2]_inst_i_132_n_0 ;
  wire \seg_OBUF[2]_inst_i_132_n_4 ;
  wire \seg_OBUF[2]_inst_i_132_n_5 ;
  wire \seg_OBUF[2]_inst_i_132_n_6 ;
  wire \seg_OBUF[2]_inst_i_132_n_7 ;
  wire \seg_OBUF[2]_inst_i_133_n_0 ;
  wire \seg_OBUF[2]_inst_i_134_n_0 ;
  wire \seg_OBUF[2]_inst_i_135_n_0 ;
  wire \seg_OBUF[2]_inst_i_136_n_0 ;
  wire \seg_OBUF[2]_inst_i_137_n_0 ;
  wire \seg_OBUF[2]_inst_i_138_n_0 ;
  wire \seg_OBUF[2]_inst_i_139_n_0 ;
  wire \seg_OBUF[2]_inst_i_139_n_4 ;
  wire \seg_OBUF[2]_inst_i_139_n_5 ;
  wire \seg_OBUF[2]_inst_i_139_n_6 ;
  wire \seg_OBUF[2]_inst_i_139_n_7 ;
  wire \seg_OBUF[2]_inst_i_13_n_0 ;
  wire \seg_OBUF[2]_inst_i_140_n_0 ;
  wire \seg_OBUF[2]_inst_i_141_n_0 ;
  wire \seg_OBUF[2]_inst_i_142_n_0 ;
  wire \seg_OBUF[2]_inst_i_143_n_0 ;
  wire \seg_OBUF[2]_inst_i_144_n_0 ;
  wire \seg_OBUF[2]_inst_i_145_n_0 ;
  wire \seg_OBUF[2]_inst_i_146_n_0 ;
  wire \seg_OBUF[2]_inst_i_146_n_4 ;
  wire \seg_OBUF[2]_inst_i_146_n_5 ;
  wire \seg_OBUF[2]_inst_i_146_n_6 ;
  wire \seg_OBUF[2]_inst_i_146_n_7 ;
  wire \seg_OBUF[2]_inst_i_147_n_0 ;
  wire \seg_OBUF[2]_inst_i_148_n_0 ;
  wire \seg_OBUF[2]_inst_i_149_n_0 ;
  wire \seg_OBUF[2]_inst_i_14_n_0 ;
  wire \seg_OBUF[2]_inst_i_150_n_0 ;
  wire \seg_OBUF[2]_inst_i_151_n_0 ;
  wire \seg_OBUF[2]_inst_i_152_n_0 ;
  wire \seg_OBUF[2]_inst_i_153_n_0 ;
  wire \seg_OBUF[2]_inst_i_154_n_0 ;
  wire \seg_OBUF[2]_inst_i_155_n_0 ;
  wire \seg_OBUF[2]_inst_i_156_n_0 ;
  wire \seg_OBUF[2]_inst_i_157_n_0 ;
  wire \seg_OBUF[2]_inst_i_158_n_0 ;
  wire \seg_OBUF[2]_inst_i_159_n_0 ;
  wire \seg_OBUF[2]_inst_i_15_n_5 ;
  wire \seg_OBUF[2]_inst_i_15_n_6 ;
  wire \seg_OBUF[2]_inst_i_15_n_7 ;
  wire \seg_OBUF[2]_inst_i_160_n_0 ;
  wire \seg_OBUF[2]_inst_i_161_n_0 ;
  wire \seg_OBUF[2]_inst_i_162_n_0 ;
  wire \seg_OBUF[2]_inst_i_162_n_4 ;
  wire \seg_OBUF[2]_inst_i_162_n_5 ;
  wire \seg_OBUF[2]_inst_i_162_n_6 ;
  wire \seg_OBUF[2]_inst_i_163_n_0 ;
  wire \seg_OBUF[2]_inst_i_164_n_0 ;
  wire \seg_OBUF[2]_inst_i_165_n_0 ;
  wire \seg_OBUF[2]_inst_i_166_n_0 ;
  wire \seg_OBUF[2]_inst_i_167_n_0 ;
  wire \seg_OBUF[2]_inst_i_168_n_0 ;
  wire \seg_OBUF[2]_inst_i_169_n_0 ;
  wire \seg_OBUF[2]_inst_i_16_n_0 ;
  wire \seg_OBUF[2]_inst_i_16_n_4 ;
  wire \seg_OBUF[2]_inst_i_16_n_5 ;
  wire \seg_OBUF[2]_inst_i_16_n_6 ;
  wire \seg_OBUF[2]_inst_i_170_n_0 ;
  wire \seg_OBUF[2]_inst_i_171_n_0 ;
  wire \seg_OBUF[2]_inst_i_171_n_4 ;
  wire \seg_OBUF[2]_inst_i_171_n_5 ;
  wire \seg_OBUF[2]_inst_i_171_n_6 ;
  wire \seg_OBUF[2]_inst_i_171_n_7 ;
  wire \seg_OBUF[2]_inst_i_172_n_0 ;
  wire \seg_OBUF[2]_inst_i_173_n_0 ;
  wire \seg_OBUF[2]_inst_i_174_n_0 ;
  wire \seg_OBUF[2]_inst_i_175_n_0 ;
  wire \seg_OBUF[2]_inst_i_176_n_0 ;
  wire \seg_OBUF[2]_inst_i_177_n_0 ;
  wire \seg_OBUF[2]_inst_i_178_n_0 ;
  wire \seg_OBUF[2]_inst_i_179_n_0 ;
  wire \seg_OBUF[2]_inst_i_17_n_0 ;
  wire \seg_OBUF[2]_inst_i_180_n_0 ;
  wire \seg_OBUF[2]_inst_i_181_n_0 ;
  wire \seg_OBUF[2]_inst_i_182_n_0 ;
  wire \seg_OBUF[2]_inst_i_183_n_0 ;
  wire \seg_OBUF[2]_inst_i_184_n_0 ;
  wire \seg_OBUF[2]_inst_i_185_n_0 ;
  wire \seg_OBUF[2]_inst_i_186_n_0 ;
  wire \seg_OBUF[2]_inst_i_187_n_0 ;
  wire \seg_OBUF[2]_inst_i_188_n_0 ;
  wire \seg_OBUF[2]_inst_i_189_n_0 ;
  wire \seg_OBUF[2]_inst_i_18_n_0 ;
  wire \seg_OBUF[2]_inst_i_190_n_0 ;
  wire \seg_OBUF[2]_inst_i_191_n_0 ;
  wire \seg_OBUF[2]_inst_i_192_n_0 ;
  wire \seg_OBUF[2]_inst_i_193_n_0 ;
  wire \seg_OBUF[2]_inst_i_194_n_0 ;
  wire \seg_OBUF[2]_inst_i_195_n_0 ;
  wire \seg_OBUF[2]_inst_i_196_n_0 ;
  wire \seg_OBUF[2]_inst_i_197_n_0 ;
  wire \seg_OBUF[2]_inst_i_198_n_0 ;
  wire \seg_OBUF[2]_inst_i_199_n_0 ;
  wire \seg_OBUF[2]_inst_i_19_n_0 ;
  wire \seg_OBUF[2]_inst_i_200_n_0 ;
  wire \seg_OBUF[2]_inst_i_201_n_0 ;
  wire \seg_OBUF[2]_inst_i_202_n_0 ;
  wire \seg_OBUF[2]_inst_i_203_n_0 ;
  wire \seg_OBUF[2]_inst_i_20_n_0 ;
  wire \seg_OBUF[2]_inst_i_21_n_0 ;
  wire \seg_OBUF[2]_inst_i_22_n_0 ;
  wire \seg_OBUF[2]_inst_i_23_n_0 ;
  wire \seg_OBUF[2]_inst_i_24_n_0 ;
  wire \seg_OBUF[2]_inst_i_25_n_0 ;
  wire \seg_OBUF[2]_inst_i_26_n_0 ;
  wire \seg_OBUF[2]_inst_i_27_n_0 ;
  wire \seg_OBUF[2]_inst_i_28_n_7 ;
  wire \seg_OBUF[2]_inst_i_29_n_0 ;
  wire \seg_OBUF[2]_inst_i_30_n_0 ;
  wire \seg_OBUF[2]_inst_i_31_n_0 ;
  wire \seg_OBUF[2]_inst_i_32_n_0 ;
  wire \seg_OBUF[2]_inst_i_33_n_0 ;
  wire \seg_OBUF[2]_inst_i_34_n_0 ;
  wire \seg_OBUF[2]_inst_i_35_n_0 ;
  wire \seg_OBUF[2]_inst_i_36_n_0 ;
  wire \seg_OBUF[2]_inst_i_37_n_0 ;
  wire \seg_OBUF[2]_inst_i_38_n_0 ;
  wire \seg_OBUF[2]_inst_i_38_n_4 ;
  wire \seg_OBUF[2]_inst_i_38_n_5 ;
  wire \seg_OBUF[2]_inst_i_38_n_6 ;
  wire \seg_OBUF[2]_inst_i_38_n_7 ;
  wire \seg_OBUF[2]_inst_i_39_n_2 ;
  wire \seg_OBUF[2]_inst_i_39_n_7 ;
  wire \seg_OBUF[2]_inst_i_40_n_0 ;
  wire \seg_OBUF[2]_inst_i_40_n_4 ;
  wire \seg_OBUF[2]_inst_i_40_n_5 ;
  wire \seg_OBUF[2]_inst_i_40_n_6 ;
  wire \seg_OBUF[2]_inst_i_40_n_7 ;
  wire \seg_OBUF[2]_inst_i_41_n_0 ;
  wire \seg_OBUF[2]_inst_i_41_n_4 ;
  wire \seg_OBUF[2]_inst_i_41_n_5 ;
  wire \seg_OBUF[2]_inst_i_41_n_6 ;
  wire \seg_OBUF[2]_inst_i_41_n_7 ;
  wire \seg_OBUF[2]_inst_i_42_n_0 ;
  wire \seg_OBUF[2]_inst_i_42_n_4 ;
  wire \seg_OBUF[2]_inst_i_42_n_5 ;
  wire \seg_OBUF[2]_inst_i_42_n_6 ;
  wire \seg_OBUF[2]_inst_i_43_n_0 ;
  wire \seg_OBUF[2]_inst_i_43_n_4 ;
  wire \seg_OBUF[2]_inst_i_43_n_5 ;
  wire \seg_OBUF[2]_inst_i_43_n_6 ;
  wire \seg_OBUF[2]_inst_i_43_n_7 ;
  wire \seg_OBUF[2]_inst_i_44_n_0 ;
  wire \seg_OBUF[2]_inst_i_45_n_0 ;
  wire \seg_OBUF[2]_inst_i_46_n_0 ;
  wire \seg_OBUF[2]_inst_i_47_n_0 ;
  wire \seg_OBUF[2]_inst_i_48_n_0 ;
  wire \seg_OBUF[2]_inst_i_49_n_0 ;
  wire \seg_OBUF[2]_inst_i_50_n_0 ;
  wire \seg_OBUF[2]_inst_i_51_n_0 ;
  wire \seg_OBUF[2]_inst_i_52_n_0 ;
  wire \seg_OBUF[2]_inst_i_53_n_0 ;
  wire \seg_OBUF[2]_inst_i_54_n_0 ;
  wire \seg_OBUF[2]_inst_i_54_n_4 ;
  wire \seg_OBUF[2]_inst_i_54_n_5 ;
  wire \seg_OBUF[2]_inst_i_54_n_6 ;
  wire \seg_OBUF[2]_inst_i_54_n_7 ;
  wire \seg_OBUF[2]_inst_i_55_n_0 ;
  wire \seg_OBUF[2]_inst_i_55_n_4 ;
  wire \seg_OBUF[2]_inst_i_55_n_5 ;
  wire \seg_OBUF[2]_inst_i_55_n_6 ;
  wire \seg_OBUF[2]_inst_i_55_n_7 ;
  wire \seg_OBUF[2]_inst_i_56_n_0 ;
  wire \seg_OBUF[2]_inst_i_57_n_0 ;
  wire \seg_OBUF[2]_inst_i_58_n_0 ;
  wire \seg_OBUF[2]_inst_i_59_n_0 ;
  wire \seg_OBUF[2]_inst_i_60_n_0 ;
  wire \seg_OBUF[2]_inst_i_61_n_0 ;
  wire \seg_OBUF[2]_inst_i_62_n_0 ;
  wire \seg_OBUF[2]_inst_i_63_n_0 ;
  wire \seg_OBUF[2]_inst_i_64_n_0 ;
  wire \seg_OBUF[2]_inst_i_65_n_0 ;
  wire \seg_OBUF[2]_inst_i_66_n_0 ;
  wire \seg_OBUF[2]_inst_i_67_n_0 ;
  wire \seg_OBUF[2]_inst_i_68_n_0 ;
  wire \seg_OBUF[2]_inst_i_69_n_0 ;
  wire \seg_OBUF[2]_inst_i_6_n_0 ;
  wire \seg_OBUF[2]_inst_i_70_n_0 ;
  wire \seg_OBUF[2]_inst_i_71_n_0 ;
  wire \seg_OBUF[2]_inst_i_72_n_0 ;
  wire \seg_OBUF[2]_inst_i_73_n_0 ;
  wire \seg_OBUF[2]_inst_i_74_n_0 ;
  wire \seg_OBUF[2]_inst_i_75_n_0 ;
  wire \seg_OBUF[2]_inst_i_76_n_0 ;
  wire \seg_OBUF[2]_inst_i_77_n_0 ;
  wire \seg_OBUF[2]_inst_i_78_n_0 ;
  wire \seg_OBUF[2]_inst_i_79_n_0 ;
  wire \seg_OBUF[2]_inst_i_7_n_0 ;
  wire \seg_OBUF[2]_inst_i_80_n_0 ;
  wire \seg_OBUF[2]_inst_i_81_n_0 ;
  wire \seg_OBUF[2]_inst_i_82_n_0 ;
  wire \seg_OBUF[2]_inst_i_83_n_0 ;
  wire \seg_OBUF[2]_inst_i_84_n_0 ;
  wire \seg_OBUF[2]_inst_i_85_n_0 ;
  wire \seg_OBUF[2]_inst_i_86_n_0 ;
  wire \seg_OBUF[2]_inst_i_87_n_0 ;
  wire \seg_OBUF[2]_inst_i_88_n_0 ;
  wire \seg_OBUF[2]_inst_i_89_n_7 ;
  wire \seg_OBUF[2]_inst_i_8_n_0 ;
  wire \seg_OBUF[2]_inst_i_8_n_4 ;
  wire \seg_OBUF[2]_inst_i_8_n_5 ;
  wire \seg_OBUF[2]_inst_i_8_n_6 ;
  wire \seg_OBUF[2]_inst_i_8_n_7 ;
  wire \seg_OBUF[2]_inst_i_90_n_7 ;
  wire \seg_OBUF[2]_inst_i_91_n_0 ;
  wire \seg_OBUF[2]_inst_i_92_n_0 ;
  wire \seg_OBUF[2]_inst_i_93_n_0 ;
  wire \seg_OBUF[2]_inst_i_94_n_0 ;
  wire \seg_OBUF[2]_inst_i_95_n_0 ;
  wire \seg_OBUF[2]_inst_i_96_n_0 ;
  wire \seg_OBUF[2]_inst_i_97_n_0 ;
  wire \seg_OBUF[2]_inst_i_98_n_0 ;
  wire \seg_OBUF[2]_inst_i_98_n_4 ;
  wire \seg_OBUF[2]_inst_i_98_n_5 ;
  wire \seg_OBUF[2]_inst_i_98_n_6 ;
  wire \seg_OBUF[2]_inst_i_98_n_7 ;
  wire \seg_OBUF[2]_inst_i_99_n_0 ;
  wire \seg_OBUF[2]_inst_i_99_n_4 ;
  wire \seg_OBUF[2]_inst_i_99_n_5 ;
  wire \seg_OBUF[2]_inst_i_99_n_6 ;
  wire \seg_OBUF[2]_inst_i_9_n_0 ;
  wire \seg_OBUF[4]_inst_i_5_n_0 ;
  wire \seg_OBUF[4]_inst_i_7_n_0 ;
  wire \seg_OBUF[5]_inst_i_10_n_0 ;
  wire \seg_OBUF[5]_inst_i_11_n_0 ;
  wire \seg_OBUF[5]_inst_i_12_n_0 ;
  wire \seg_OBUF[5]_inst_i_14_n_0 ;
  wire \seg_OBUF[5]_inst_i_15_n_0 ;
  wire \seg_OBUF[5]_inst_i_16_n_0 ;
  wire \seg_OBUF[5]_inst_i_18_n_0 ;
  wire \seg_OBUF[5]_inst_i_19_n_0 ;
  wire \seg_OBUF[5]_inst_i_20_n_0 ;
  wire \seg_OBUF[5]_inst_i_21_n_0 ;
  wire \seg_OBUF[5]_inst_i_22_n_0 ;
  wire \seg_OBUF[5]_inst_i_23_n_0 ;
  wire \seg_OBUF[5]_inst_i_24_n_0 ;
  wire \seg_OBUF[5]_inst_i_25_n_0 ;
  wire \seg_OBUF[5]_inst_i_26_n_0 ;
  wire \seg_OBUF[5]_inst_i_27_n_0 ;
  wire \seg_OBUF[5]_inst_i_28_n_0 ;
  wire \seg_OBUF[5]_inst_i_29_n_0 ;
  wire \seg_OBUF[5]_inst_i_2_n_0 ;
  wire \seg_OBUF[5]_inst_i_31_n_0 ;
  wire \seg_OBUF[5]_inst_i_32_n_0 ;
  wire \seg_OBUF[5]_inst_i_33_n_0 ;
  wire \seg_OBUF[5]_inst_i_7_n_0 ;
  wire \seg_OBUF[5]_inst_i_8_n_0 ;
  wire \seg_OBUF[5]_inst_i_9_n_0 ;
  wire \seg_OBUF[6]_inst_i_100_n_0 ;
  wire \seg_OBUF[6]_inst_i_101_n_0 ;
  wire \seg_OBUF[6]_inst_i_102_n_0 ;
  wire \seg_OBUF[6]_inst_i_103_n_0 ;
  wire \seg_OBUF[6]_inst_i_104_n_0 ;
  wire \seg_OBUF[6]_inst_i_105_n_0 ;
  wire \seg_OBUF[6]_inst_i_106_n_0 ;
  wire \seg_OBUF[6]_inst_i_107_n_0 ;
  wire \seg_OBUF[6]_inst_i_108_n_0 ;
  wire \seg_OBUF[6]_inst_i_109_n_0 ;
  wire \seg_OBUF[6]_inst_i_110_n_0 ;
  wire \seg_OBUF[6]_inst_i_111_n_0 ;
  wire \seg_OBUF[6]_inst_i_112_n_0 ;
  wire \seg_OBUF[6]_inst_i_113_n_0 ;
  wire \seg_OBUF[6]_inst_i_114_n_0 ;
  wire \seg_OBUF[6]_inst_i_115_n_0 ;
  wire \seg_OBUF[6]_inst_i_116_n_0 ;
  wire \seg_OBUF[6]_inst_i_117_n_0 ;
  wire \seg_OBUF[6]_inst_i_118_n_0 ;
  wire \seg_OBUF[6]_inst_i_119_n_0 ;
  wire \seg_OBUF[6]_inst_i_120_n_0 ;
  wire \seg_OBUF[6]_inst_i_121_n_0 ;
  wire \seg_OBUF[6]_inst_i_122_n_0 ;
  wire \seg_OBUF[6]_inst_i_123_n_0 ;
  wire \seg_OBUF[6]_inst_i_124_n_0 ;
  wire \seg_OBUF[6]_inst_i_125_n_0 ;
  wire \seg_OBUF[6]_inst_i_126_n_0 ;
  wire \seg_OBUF[6]_inst_i_127_n_0 ;
  wire \seg_OBUF[6]_inst_i_128_n_0 ;
  wire \seg_OBUF[6]_inst_i_129_n_0 ;
  wire \seg_OBUF[6]_inst_i_130_n_0 ;
  wire \seg_OBUF[6]_inst_i_131_n_0 ;
  wire \seg_OBUF[6]_inst_i_132_n_0 ;
  wire \seg_OBUF[6]_inst_i_133_n_0 ;
  wire \seg_OBUF[6]_inst_i_134_n_0 ;
  wire \seg_OBUF[6]_inst_i_135_n_0 ;
  wire \seg_OBUF[6]_inst_i_136_n_0 ;
  wire \seg_OBUF[6]_inst_i_137_n_0 ;
  wire \seg_OBUF[6]_inst_i_138_n_0 ;
  wire \seg_OBUF[6]_inst_i_139_n_0 ;
  wire \seg_OBUF[6]_inst_i_140_n_0 ;
  wire \seg_OBUF[6]_inst_i_140_n_4 ;
  wire \seg_OBUF[6]_inst_i_140_n_5 ;
  wire \seg_OBUF[6]_inst_i_140_n_6 ;
  wire \seg_OBUF[6]_inst_i_140_n_7 ;
  wire \seg_OBUF[6]_inst_i_141_n_0 ;
  wire \seg_OBUF[6]_inst_i_141_n_4 ;
  wire \seg_OBUF[6]_inst_i_141_n_5 ;
  wire \seg_OBUF[6]_inst_i_141_n_6 ;
  wire \seg_OBUF[6]_inst_i_141_n_7 ;
  wire \seg_OBUF[6]_inst_i_142_n_0 ;
  wire \seg_OBUF[6]_inst_i_143_n_0 ;
  wire \seg_OBUF[6]_inst_i_144_n_0 ;
  wire \seg_OBUF[6]_inst_i_145_n_0 ;
  wire \seg_OBUF[6]_inst_i_146_n_0 ;
  wire \seg_OBUF[6]_inst_i_147_n_0 ;
  wire \seg_OBUF[6]_inst_i_148_n_0 ;
  wire \seg_OBUF[6]_inst_i_149_n_0 ;
  wire \seg_OBUF[6]_inst_i_14_n_4 ;
  wire \seg_OBUF[6]_inst_i_14_n_5 ;
  wire \seg_OBUF[6]_inst_i_14_n_6 ;
  wire \seg_OBUF[6]_inst_i_14_n_7 ;
  wire \seg_OBUF[6]_inst_i_150_n_0 ;
  wire \seg_OBUF[6]_inst_i_151_n_0 ;
  wire \seg_OBUF[6]_inst_i_152_n_0 ;
  wire \seg_OBUF[6]_inst_i_153_n_0 ;
  wire \seg_OBUF[6]_inst_i_154_n_0 ;
  wire \seg_OBUF[6]_inst_i_155_n_0 ;
  wire \seg_OBUF[6]_inst_i_156_n_0 ;
  wire \seg_OBUF[6]_inst_i_157_n_0 ;
  wire \seg_OBUF[6]_inst_i_158_n_0 ;
  wire \seg_OBUF[6]_inst_i_159_n_0 ;
  wire \seg_OBUF[6]_inst_i_15_n_6 ;
  wire \seg_OBUF[6]_inst_i_15_n_7 ;
  wire \seg_OBUF[6]_inst_i_160_n_0 ;
  wire \seg_OBUF[6]_inst_i_161_n_0 ;
  wire \seg_OBUF[6]_inst_i_162_n_0 ;
  wire \seg_OBUF[6]_inst_i_163_n_0 ;
  wire \seg_OBUF[6]_inst_i_163_n_4 ;
  wire \seg_OBUF[6]_inst_i_163_n_5 ;
  wire \seg_OBUF[6]_inst_i_163_n_6 ;
  wire \seg_OBUF[6]_inst_i_163_n_7 ;
  wire \seg_OBUF[6]_inst_i_164_n_0 ;
  wire \seg_OBUF[6]_inst_i_164_n_4 ;
  wire \seg_OBUF[6]_inst_i_164_n_5 ;
  wire \seg_OBUF[6]_inst_i_164_n_6 ;
  wire \seg_OBUF[6]_inst_i_164_n_7 ;
  wire \seg_OBUF[6]_inst_i_165_n_0 ;
  wire \seg_OBUF[6]_inst_i_166_n_0 ;
  wire \seg_OBUF[6]_inst_i_167_n_0 ;
  wire \seg_OBUF[6]_inst_i_168_n_0 ;
  wire \seg_OBUF[6]_inst_i_169_n_0 ;
  wire \seg_OBUF[6]_inst_i_16_n_1 ;
  wire \seg_OBUF[6]_inst_i_170_n_0 ;
  wire \seg_OBUF[6]_inst_i_171_n_0 ;
  wire \seg_OBUF[6]_inst_i_172_n_0 ;
  wire \seg_OBUF[6]_inst_i_173_n_0 ;
  wire \seg_OBUF[6]_inst_i_174_n_0 ;
  wire \seg_OBUF[6]_inst_i_175_n_0 ;
  wire \seg_OBUF[6]_inst_i_176_n_0 ;
  wire \seg_OBUF[6]_inst_i_177_n_0 ;
  wire \seg_OBUF[6]_inst_i_177_n_4 ;
  wire \seg_OBUF[6]_inst_i_177_n_5 ;
  wire \seg_OBUF[6]_inst_i_177_n_6 ;
  wire \seg_OBUF[6]_inst_i_177_n_7 ;
  wire \seg_OBUF[6]_inst_i_178_n_0 ;
  wire \seg_OBUF[6]_inst_i_179_n_0 ;
  wire \seg_OBUF[6]_inst_i_17_n_0 ;
  wire \seg_OBUF[6]_inst_i_17_n_4 ;
  wire \seg_OBUF[6]_inst_i_17_n_5 ;
  wire \seg_OBUF[6]_inst_i_17_n_6 ;
  wire \seg_OBUF[6]_inst_i_17_n_7 ;
  wire \seg_OBUF[6]_inst_i_180_n_0 ;
  wire \seg_OBUF[6]_inst_i_181_n_0 ;
  wire \seg_OBUF[6]_inst_i_182_n_0 ;
  wire \seg_OBUF[6]_inst_i_183_n_0 ;
  wire \seg_OBUF[6]_inst_i_184_n_0 ;
  wire \seg_OBUF[6]_inst_i_185_n_0 ;
  wire \seg_OBUF[6]_inst_i_186_n_0 ;
  wire \seg_OBUF[6]_inst_i_187_n_0 ;
  wire \seg_OBUF[6]_inst_i_188_n_0 ;
  wire \seg_OBUF[6]_inst_i_189_n_0 ;
  wire \seg_OBUF[6]_inst_i_18_n_0 ;
  wire \seg_OBUF[6]_inst_i_18_n_4 ;
  wire \seg_OBUF[6]_inst_i_18_n_5 ;
  wire \seg_OBUF[6]_inst_i_18_n_6 ;
  wire \seg_OBUF[6]_inst_i_190_n_0 ;
  wire \seg_OBUF[6]_inst_i_191_n_0 ;
  wire \seg_OBUF[6]_inst_i_192_n_0 ;
  wire \seg_OBUF[6]_inst_i_193_n_0 ;
  wire \seg_OBUF[6]_inst_i_194_n_0 ;
  wire \seg_OBUF[6]_inst_i_194_n_5 ;
  wire \seg_OBUF[6]_inst_i_194_n_6 ;
  wire \seg_OBUF[6]_inst_i_194_n_7 ;
  wire \seg_OBUF[6]_inst_i_195_n_0 ;
  wire \seg_OBUF[6]_inst_i_195_n_5 ;
  wire \seg_OBUF[6]_inst_i_195_n_6 ;
  wire \seg_OBUF[6]_inst_i_195_n_7 ;
  wire \seg_OBUF[6]_inst_i_196_n_2 ;
  wire \seg_OBUF[6]_inst_i_196_n_7 ;
  wire \seg_OBUF[6]_inst_i_197_n_0 ;
  wire \seg_OBUF[6]_inst_i_198_n_0 ;
  wire \seg_OBUF[6]_inst_i_199_n_0 ;
  wire \seg_OBUF[6]_inst_i_19_n_7 ;
  wire \seg_OBUF[6]_inst_i_200_n_0 ;
  wire \seg_OBUF[6]_inst_i_201_n_0 ;
  wire \seg_OBUF[6]_inst_i_202_n_0 ;
  wire \seg_OBUF[6]_inst_i_203_n_0 ;
  wire \seg_OBUF[6]_inst_i_204_n_0 ;
  wire \seg_OBUF[6]_inst_i_205_n_0 ;
  wire \seg_OBUF[6]_inst_i_206_n_0 ;
  wire \seg_OBUF[6]_inst_i_206_n_4 ;
  wire \seg_OBUF[6]_inst_i_206_n_5 ;
  wire \seg_OBUF[6]_inst_i_206_n_6 ;
  wire \seg_OBUF[6]_inst_i_206_n_7 ;
  wire \seg_OBUF[6]_inst_i_207_n_0 ;
  wire \seg_OBUF[6]_inst_i_207_n_4 ;
  wire \seg_OBUF[6]_inst_i_207_n_5 ;
  wire \seg_OBUF[6]_inst_i_207_n_6 ;
  wire \seg_OBUF[6]_inst_i_208_n_0 ;
  wire \seg_OBUF[6]_inst_i_209_n_0 ;
  wire \seg_OBUF[6]_inst_i_210_n_0 ;
  wire \seg_OBUF[6]_inst_i_211_n_0 ;
  wire \seg_OBUF[6]_inst_i_212_n_0 ;
  wire \seg_OBUF[6]_inst_i_213_n_0 ;
  wire \seg_OBUF[6]_inst_i_214_n_0 ;
  wire \seg_OBUF[6]_inst_i_215_n_0 ;
  wire \seg_OBUF[6]_inst_i_216_n_0 ;
  wire \seg_OBUF[6]_inst_i_217_n_0 ;
  wire \seg_OBUF[6]_inst_i_218_n_0 ;
  wire \seg_OBUF[6]_inst_i_219_n_0 ;
  wire \seg_OBUF[6]_inst_i_21_n_0 ;
  wire \seg_OBUF[6]_inst_i_220_n_0 ;
  wire \seg_OBUF[6]_inst_i_221_n_0 ;
  wire \seg_OBUF[6]_inst_i_222_n_0 ;
  wire \seg_OBUF[6]_inst_i_223_n_0 ;
  wire \seg_OBUF[6]_inst_i_223_n_4 ;
  wire \seg_OBUF[6]_inst_i_223_n_5 ;
  wire \seg_OBUF[6]_inst_i_223_n_6 ;
  wire \seg_OBUF[6]_inst_i_223_n_7 ;
  wire \seg_OBUF[6]_inst_i_224_n_0 ;
  wire \seg_OBUF[6]_inst_i_224_n_4 ;
  wire \seg_OBUF[6]_inst_i_224_n_5 ;
  wire \seg_OBUF[6]_inst_i_224_n_6 ;
  wire \seg_OBUF[6]_inst_i_224_n_7 ;
  wire \seg_OBUF[6]_inst_i_225_n_0 ;
  wire \seg_OBUF[6]_inst_i_226_n_0 ;
  wire \seg_OBUF[6]_inst_i_227_n_0 ;
  wire \seg_OBUF[6]_inst_i_228_n_0 ;
  wire \seg_OBUF[6]_inst_i_229_n_0 ;
  wire \seg_OBUF[6]_inst_i_22_n_0 ;
  wire \seg_OBUF[6]_inst_i_22_n_4 ;
  wire \seg_OBUF[6]_inst_i_22_n_5 ;
  wire \seg_OBUF[6]_inst_i_22_n_6 ;
  wire \seg_OBUF[6]_inst_i_22_n_7 ;
  wire \seg_OBUF[6]_inst_i_230_n_0 ;
  wire \seg_OBUF[6]_inst_i_231_n_0 ;
  wire \seg_OBUF[6]_inst_i_232_n_0 ;
  wire \seg_OBUF[6]_inst_i_233_n_0 ;
  wire \seg_OBUF[6]_inst_i_234_n_0 ;
  wire \seg_OBUF[6]_inst_i_235_n_0 ;
  wire \seg_OBUF[6]_inst_i_236_n_0 ;
  wire \seg_OBUF[6]_inst_i_237_n_0 ;
  wire \seg_OBUF[6]_inst_i_237_n_4 ;
  wire \seg_OBUF[6]_inst_i_237_n_5 ;
  wire \seg_OBUF[6]_inst_i_237_n_6 ;
  wire \seg_OBUF[6]_inst_i_237_n_7 ;
  wire \seg_OBUF[6]_inst_i_238_n_0 ;
  wire \seg_OBUF[6]_inst_i_239_n_0 ;
  wire \seg_OBUF[6]_inst_i_23_n_6 ;
  wire \seg_OBUF[6]_inst_i_23_n_7 ;
  wire \seg_OBUF[6]_inst_i_240_n_0 ;
  wire \seg_OBUF[6]_inst_i_241_n_0 ;
  wire \seg_OBUF[6]_inst_i_242_n_0 ;
  wire \seg_OBUF[6]_inst_i_243_n_0 ;
  wire \seg_OBUF[6]_inst_i_244_n_0 ;
  wire \seg_OBUF[6]_inst_i_245_n_0 ;
  wire \seg_OBUF[6]_inst_i_246_n_0 ;
  wire \seg_OBUF[6]_inst_i_247_n_0 ;
  wire \seg_OBUF[6]_inst_i_248_n_0 ;
  wire \seg_OBUF[6]_inst_i_249_n_0 ;
  wire \seg_OBUF[6]_inst_i_24_n_0 ;
  wire \seg_OBUF[6]_inst_i_250_n_0 ;
  wire \seg_OBUF[6]_inst_i_251_n_0 ;
  wire \seg_OBUF[6]_inst_i_251_n_4 ;
  wire \seg_OBUF[6]_inst_i_251_n_5 ;
  wire \seg_OBUF[6]_inst_i_251_n_6 ;
  wire \seg_OBUF[6]_inst_i_251_n_7 ;
  wire \seg_OBUF[6]_inst_i_252_n_0 ;
  wire \seg_OBUF[6]_inst_i_253_n_0 ;
  wire \seg_OBUF[6]_inst_i_254_n_0 ;
  wire \seg_OBUF[6]_inst_i_255_n_0 ;
  wire \seg_OBUF[6]_inst_i_256_n_0 ;
  wire \seg_OBUF[6]_inst_i_257_n_0 ;
  wire \seg_OBUF[6]_inst_i_258_n_0 ;
  wire \seg_OBUF[6]_inst_i_258_n_4 ;
  wire \seg_OBUF[6]_inst_i_258_n_5 ;
  wire \seg_OBUF[6]_inst_i_258_n_6 ;
  wire \seg_OBUF[6]_inst_i_258_n_7 ;
  wire \seg_OBUF[6]_inst_i_259_n_0 ;
  wire \seg_OBUF[6]_inst_i_25_n_0 ;
  wire \seg_OBUF[6]_inst_i_260_n_0 ;
  wire \seg_OBUF[6]_inst_i_261_n_0 ;
  wire \seg_OBUF[6]_inst_i_262_n_0 ;
  wire \seg_OBUF[6]_inst_i_263_n_0 ;
  wire \seg_OBUF[6]_inst_i_264_n_0 ;
  wire \seg_OBUF[6]_inst_i_265_n_0 ;
  wire \seg_OBUF[6]_inst_i_265_n_4 ;
  wire \seg_OBUF[6]_inst_i_265_n_5 ;
  wire \seg_OBUF[6]_inst_i_265_n_6 ;
  wire \seg_OBUF[6]_inst_i_265_n_7 ;
  wire \seg_OBUF[6]_inst_i_266_n_0 ;
  wire \seg_OBUF[6]_inst_i_267_n_0 ;
  wire \seg_OBUF[6]_inst_i_268_n_0 ;
  wire \seg_OBUF[6]_inst_i_269_n_0 ;
  wire \seg_OBUF[6]_inst_i_26_n_0 ;
  wire \seg_OBUF[6]_inst_i_270_n_0 ;
  wire \seg_OBUF[6]_inst_i_271_n_0 ;
  wire \seg_OBUF[6]_inst_i_272_n_0 ;
  wire \seg_OBUF[6]_inst_i_273_n_0 ;
  wire \seg_OBUF[6]_inst_i_274_n_0 ;
  wire \seg_OBUF[6]_inst_i_275_n_0 ;
  wire \seg_OBUF[6]_inst_i_276_n_0 ;
  wire \seg_OBUF[6]_inst_i_277_n_0 ;
  wire \seg_OBUF[6]_inst_i_278_n_0 ;
  wire \seg_OBUF[6]_inst_i_279_n_0 ;
  wire \seg_OBUF[6]_inst_i_27_n_0 ;
  wire \seg_OBUF[6]_inst_i_280_n_0 ;
  wire \seg_OBUF[6]_inst_i_281_n_0 ;
  wire \seg_OBUF[6]_inst_i_281_n_4 ;
  wire \seg_OBUF[6]_inst_i_281_n_5 ;
  wire \seg_OBUF[6]_inst_i_281_n_6 ;
  wire \seg_OBUF[6]_inst_i_281_n_7 ;
  wire \seg_OBUF[6]_inst_i_282_n_0 ;
  wire \seg_OBUF[6]_inst_i_282_n_4 ;
  wire \seg_OBUF[6]_inst_i_282_n_5 ;
  wire \seg_OBUF[6]_inst_i_282_n_6 ;
  wire \seg_OBUF[6]_inst_i_282_n_7 ;
  wire \seg_OBUF[6]_inst_i_283_n_0 ;
  wire \seg_OBUF[6]_inst_i_284_n_0 ;
  wire \seg_OBUF[6]_inst_i_285_n_0 ;
  wire \seg_OBUF[6]_inst_i_286_n_0 ;
  wire \seg_OBUF[6]_inst_i_287_n_0 ;
  wire \seg_OBUF[6]_inst_i_288_n_0 ;
  wire \seg_OBUF[6]_inst_i_289_n_0 ;
  wire \seg_OBUF[6]_inst_i_28_n_0 ;
  wire \seg_OBUF[6]_inst_i_290_n_0 ;
  wire \seg_OBUF[6]_inst_i_291_n_0 ;
  wire \seg_OBUF[6]_inst_i_292_n_0 ;
  wire \seg_OBUF[6]_inst_i_293_n_0 ;
  wire \seg_OBUF[6]_inst_i_294_n_0 ;
  wire \seg_OBUF[6]_inst_i_295_n_0 ;
  wire \seg_OBUF[6]_inst_i_295_n_4 ;
  wire \seg_OBUF[6]_inst_i_295_n_5 ;
  wire \seg_OBUF[6]_inst_i_295_n_6 ;
  wire \seg_OBUF[6]_inst_i_295_n_7 ;
  wire \seg_OBUF[6]_inst_i_296_n_0 ;
  wire \seg_OBUF[6]_inst_i_297_n_0 ;
  wire \seg_OBUF[6]_inst_i_298_n_0 ;
  wire \seg_OBUF[6]_inst_i_299_n_0 ;
  wire \seg_OBUF[6]_inst_i_29_n_0 ;
  wire \seg_OBUF[6]_inst_i_300_n_0 ;
  wire \seg_OBUF[6]_inst_i_301_n_0 ;
  wire \seg_OBUF[6]_inst_i_302_n_0 ;
  wire \seg_OBUF[6]_inst_i_303_n_0 ;
  wire \seg_OBUF[6]_inst_i_304_n_0 ;
  wire \seg_OBUF[6]_inst_i_305_n_0 ;
  wire \seg_OBUF[6]_inst_i_306_n_0 ;
  wire \seg_OBUF[6]_inst_i_307_n_0 ;
  wire \seg_OBUF[6]_inst_i_308_n_0 ;
  wire \seg_OBUF[6]_inst_i_309_n_0 ;
  wire \seg_OBUF[6]_inst_i_309_n_4 ;
  wire \seg_OBUF[6]_inst_i_309_n_5 ;
  wire \seg_OBUF[6]_inst_i_309_n_6 ;
  wire \seg_OBUF[6]_inst_i_30_n_0 ;
  wire \seg_OBUF[6]_inst_i_310_n_0 ;
  wire \seg_OBUF[6]_inst_i_311_n_0 ;
  wire \seg_OBUF[6]_inst_i_312_n_0 ;
  wire \seg_OBUF[6]_inst_i_313_n_0 ;
  wire \seg_OBUF[6]_inst_i_314_n_0 ;
  wire \seg_OBUF[6]_inst_i_315_n_0 ;
  wire \seg_OBUF[6]_inst_i_316_n_0 ;
  wire \seg_OBUF[6]_inst_i_317_n_0 ;
  wire \seg_OBUF[6]_inst_i_318_n_0 ;
  wire \seg_OBUF[6]_inst_i_319_n_0 ;
  wire \seg_OBUF[6]_inst_i_319_n_4 ;
  wire \seg_OBUF[6]_inst_i_319_n_5 ;
  wire \seg_OBUF[6]_inst_i_319_n_6 ;
  wire \seg_OBUF[6]_inst_i_319_n_7 ;
  wire \seg_OBUF[6]_inst_i_31_n_0 ;
  wire \seg_OBUF[6]_inst_i_320_n_0 ;
  wire \seg_OBUF[6]_inst_i_321_n_0 ;
  wire \seg_OBUF[6]_inst_i_322_n_0 ;
  wire \seg_OBUF[6]_inst_i_323_n_0 ;
  wire \seg_OBUF[6]_inst_i_324_n_0 ;
  wire \seg_OBUF[6]_inst_i_325_n_0 ;
  wire \seg_OBUF[6]_inst_i_326_n_0 ;
  wire \seg_OBUF[6]_inst_i_327_n_0 ;
  wire \seg_OBUF[6]_inst_i_328_n_0 ;
  wire \seg_OBUF[6]_inst_i_329_n_0 ;
  wire \seg_OBUF[6]_inst_i_32_n_0 ;
  wire \seg_OBUF[6]_inst_i_330_n_0 ;
  wire \seg_OBUF[6]_inst_i_331_n_0 ;
  wire \seg_OBUF[6]_inst_i_332_n_0 ;
  wire \seg_OBUF[6]_inst_i_333_n_0 ;
  wire \seg_OBUF[6]_inst_i_334_n_0 ;
  wire \seg_OBUF[6]_inst_i_335_n_0 ;
  wire \seg_OBUF[6]_inst_i_335_n_4 ;
  wire \seg_OBUF[6]_inst_i_335_n_5 ;
  wire \seg_OBUF[6]_inst_i_335_n_6 ;
  wire \seg_OBUF[6]_inst_i_335_n_7 ;
  wire \seg_OBUF[6]_inst_i_336_n_0 ;
  wire \seg_OBUF[6]_inst_i_337_n_0 ;
  wire \seg_OBUF[6]_inst_i_338_n_0 ;
  wire \seg_OBUF[6]_inst_i_339_n_0 ;
  wire \seg_OBUF[6]_inst_i_33_n_0 ;
  wire \seg_OBUF[6]_inst_i_340_n_0 ;
  wire \seg_OBUF[6]_inst_i_341_n_0 ;
  wire \seg_OBUF[6]_inst_i_342_n_0 ;
  wire \seg_OBUF[6]_inst_i_343_n_0 ;
  wire \seg_OBUF[6]_inst_i_344_n_0 ;
  wire \seg_OBUF[6]_inst_i_345_n_0 ;
  wire \seg_OBUF[6]_inst_i_346_n_0 ;
  wire \seg_OBUF[6]_inst_i_347_n_0 ;
  wire \seg_OBUF[6]_inst_i_348_n_0 ;
  wire \seg_OBUF[6]_inst_i_348_n_4 ;
  wire \seg_OBUF[6]_inst_i_348_n_5 ;
  wire \seg_OBUF[6]_inst_i_348_n_6 ;
  wire \seg_OBUF[6]_inst_i_348_n_7 ;
  wire \seg_OBUF[6]_inst_i_349_n_0 ;
  wire \seg_OBUF[6]_inst_i_34_n_0 ;
  wire \seg_OBUF[6]_inst_i_350_n_0 ;
  wire \seg_OBUF[6]_inst_i_351_n_0 ;
  wire \seg_OBUF[6]_inst_i_352_n_0 ;
  wire \seg_OBUF[6]_inst_i_353_n_0 ;
  wire \seg_OBUF[6]_inst_i_354_n_0 ;
  wire \seg_OBUF[6]_inst_i_355_n_0 ;
  wire \seg_OBUF[6]_inst_i_356_n_0 ;
  wire \seg_OBUF[6]_inst_i_357_n_0 ;
  wire \seg_OBUF[6]_inst_i_358_n_0 ;
  wire \seg_OBUF[6]_inst_i_359_n_0 ;
  wire \seg_OBUF[6]_inst_i_35_n_0 ;
  wire \seg_OBUF[6]_inst_i_360_n_0 ;
  wire \seg_OBUF[6]_inst_i_361_n_0 ;
  wire \seg_OBUF[6]_inst_i_362_n_0 ;
  wire \seg_OBUF[6]_inst_i_363_n_0 ;
  wire \seg_OBUF[6]_inst_i_364_n_0 ;
  wire \seg_OBUF[6]_inst_i_365_n_0 ;
  wire \seg_OBUF[6]_inst_i_366_n_0 ;
  wire \seg_OBUF[6]_inst_i_367_n_0 ;
  wire \seg_OBUF[6]_inst_i_368_n_0 ;
  wire \seg_OBUF[6]_inst_i_369_n_0 ;
  wire \seg_OBUF[6]_inst_i_36_n_0 ;
  wire \seg_OBUF[6]_inst_i_370_n_0 ;
  wire \seg_OBUF[6]_inst_i_371_n_0 ;
  wire \seg_OBUF[6]_inst_i_372_n_0 ;
  wire \seg_OBUF[6]_inst_i_373_n_0 ;
  wire \seg_OBUF[6]_inst_i_374_n_0 ;
  wire \seg_OBUF[6]_inst_i_375_n_0 ;
  wire \seg_OBUF[6]_inst_i_376_n_0 ;
  wire \seg_OBUF[6]_inst_i_376_n_4 ;
  wire \seg_OBUF[6]_inst_i_376_n_5 ;
  wire \seg_OBUF[6]_inst_i_376_n_6 ;
  wire \seg_OBUF[6]_inst_i_377_n_0 ;
  wire \seg_OBUF[6]_inst_i_378_n_0 ;
  wire \seg_OBUF[6]_inst_i_379_n_0 ;
  wire \seg_OBUF[6]_inst_i_37_n_0 ;
  wire \seg_OBUF[6]_inst_i_380_n_0 ;
  wire \seg_OBUF[6]_inst_i_381_n_0 ;
  wire \seg_OBUF[6]_inst_i_382_n_0 ;
  wire \seg_OBUF[6]_inst_i_383_n_0 ;
  wire \seg_OBUF[6]_inst_i_384_n_0 ;
  wire \seg_OBUF[6]_inst_i_385_n_0 ;
  wire \seg_OBUF[6]_inst_i_386_n_0 ;
  wire \seg_OBUF[6]_inst_i_387_n_0 ;
  wire \seg_OBUF[6]_inst_i_388_n_0 ;
  wire \seg_OBUF[6]_inst_i_389_n_0 ;
  wire \seg_OBUF[6]_inst_i_38_n_0 ;
  wire \seg_OBUF[6]_inst_i_390_n_0 ;
  wire \seg_OBUF[6]_inst_i_391_n_0 ;
  wire \seg_OBUF[6]_inst_i_391_n_7 ;
  wire \seg_OBUF[6]_inst_i_392_n_0 ;
  wire \seg_OBUF[6]_inst_i_393_n_0 ;
  wire \seg_OBUF[6]_inst_i_394_n_0 ;
  wire \seg_OBUF[6]_inst_i_395_n_0 ;
  wire \seg_OBUF[6]_inst_i_396_n_0 ;
  wire \seg_OBUF[6]_inst_i_397_n_0 ;
  wire \seg_OBUF[6]_inst_i_398_n_0 ;
  wire \seg_OBUF[6]_inst_i_399_n_0 ;
  wire \seg_OBUF[6]_inst_i_39_n_0 ;
  wire \seg_OBUF[6]_inst_i_400_n_0 ;
  wire \seg_OBUF[6]_inst_i_401_n_0 ;
  wire \seg_OBUF[6]_inst_i_402_n_0 ;
  wire \seg_OBUF[6]_inst_i_403_n_0 ;
  wire \seg_OBUF[6]_inst_i_404_n_0 ;
  wire \seg_OBUF[6]_inst_i_405_n_0 ;
  wire \seg_OBUF[6]_inst_i_406_n_0 ;
  wire \seg_OBUF[6]_inst_i_407_n_0 ;
  wire \seg_OBUF[6]_inst_i_408_n_0 ;
  wire \seg_OBUF[6]_inst_i_409_n_0 ;
  wire \seg_OBUF[6]_inst_i_40_n_0 ;
  wire \seg_OBUF[6]_inst_i_410_n_0 ;
  wire \seg_OBUF[6]_inst_i_411_n_0 ;
  wire \seg_OBUF[6]_inst_i_412_n_0 ;
  wire \seg_OBUF[6]_inst_i_413_n_0 ;
  wire \seg_OBUF[6]_inst_i_414_n_0 ;
  wire \seg_OBUF[6]_inst_i_415_n_0 ;
  wire \seg_OBUF[6]_inst_i_416_n_0 ;
  wire \seg_OBUF[6]_inst_i_417_n_0 ;
  wire \seg_OBUF[6]_inst_i_418_n_0 ;
  wire \seg_OBUF[6]_inst_i_419_n_0 ;
  wire \seg_OBUF[6]_inst_i_41_n_0 ;
  wire \seg_OBUF[6]_inst_i_420_n_0 ;
  wire \seg_OBUF[6]_inst_i_421_n_0 ;
  wire \seg_OBUF[6]_inst_i_422_n_0 ;
  wire \seg_OBUF[6]_inst_i_423_n_0 ;
  wire \seg_OBUF[6]_inst_i_424_n_0 ;
  wire \seg_OBUF[6]_inst_i_425_n_0 ;
  wire \seg_OBUF[6]_inst_i_42_n_0 ;
  wire \seg_OBUF[6]_inst_i_43_n_0 ;
  wire \seg_OBUF[6]_inst_i_44_n_0 ;
  wire \seg_OBUF[6]_inst_i_45_n_0 ;
  wire \seg_OBUF[6]_inst_i_46_n_0 ;
  wire \seg_OBUF[6]_inst_i_46_n_4 ;
  wire \seg_OBUF[6]_inst_i_46_n_5 ;
  wire \seg_OBUF[6]_inst_i_46_n_6 ;
  wire \seg_OBUF[6]_inst_i_46_n_7 ;
  wire \seg_OBUF[6]_inst_i_47_n_0 ;
  wire \seg_OBUF[6]_inst_i_47_n_4 ;
  wire \seg_OBUF[6]_inst_i_47_n_5 ;
  wire \seg_OBUF[6]_inst_i_47_n_6 ;
  wire \seg_OBUF[6]_inst_i_47_n_7 ;
  wire \seg_OBUF[6]_inst_i_48_n_0 ;
  wire \seg_OBUF[6]_inst_i_49_n_0 ;
  wire \seg_OBUF[6]_inst_i_50_n_0 ;
  wire \seg_OBUF[6]_inst_i_51_n_0 ;
  wire \seg_OBUF[6]_inst_i_52_n_0 ;
  wire \seg_OBUF[6]_inst_i_53_n_0 ;
  wire \seg_OBUF[6]_inst_i_54_n_0 ;
  wire \seg_OBUF[6]_inst_i_55_n_0 ;
  wire \seg_OBUF[6]_inst_i_56_n_0 ;
  wire \seg_OBUF[6]_inst_i_57_n_0 ;
  wire \seg_OBUF[6]_inst_i_58_n_0 ;
  wire \seg_OBUF[6]_inst_i_59_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_60_n_0 ;
  wire \seg_OBUF[6]_inst_i_60_n_5 ;
  wire \seg_OBUF[6]_inst_i_60_n_6 ;
  wire \seg_OBUF[6]_inst_i_60_n_7 ;
  wire \seg_OBUF[6]_inst_i_61_n_2 ;
  wire \seg_OBUF[6]_inst_i_61_n_7 ;
  wire \seg_OBUF[6]_inst_i_62_n_0 ;
  wire \seg_OBUF[6]_inst_i_62_n_4 ;
  wire \seg_OBUF[6]_inst_i_62_n_5 ;
  wire \seg_OBUF[6]_inst_i_62_n_6 ;
  wire \seg_OBUF[6]_inst_i_62_n_7 ;
  wire \seg_OBUF[6]_inst_i_63_n_0 ;
  wire \seg_OBUF[6]_inst_i_63_n_4 ;
  wire \seg_OBUF[6]_inst_i_63_n_5 ;
  wire \seg_OBUF[6]_inst_i_63_n_6 ;
  wire \seg_OBUF[6]_inst_i_63_n_7 ;
  wire \seg_OBUF[6]_inst_i_64_n_0 ;
  wire \seg_OBUF[6]_inst_i_64_n_4 ;
  wire \seg_OBUF[6]_inst_i_64_n_5 ;
  wire \seg_OBUF[6]_inst_i_64_n_6 ;
  wire \seg_OBUF[6]_inst_i_64_n_7 ;
  wire \seg_OBUF[6]_inst_i_65_n_0 ;
  wire \seg_OBUF[6]_inst_i_66_n_0 ;
  wire \seg_OBUF[6]_inst_i_67_n_0 ;
  wire \seg_OBUF[6]_inst_i_68_n_0 ;
  wire \seg_OBUF[6]_inst_i_69_n_0 ;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_70_n_0 ;
  wire \seg_OBUF[6]_inst_i_71_n_0 ;
  wire \seg_OBUF[6]_inst_i_72_n_0 ;
  wire \seg_OBUF[6]_inst_i_73_n_0 ;
  wire \seg_OBUF[6]_inst_i_74_n_0 ;
  wire \seg_OBUF[6]_inst_i_74_n_4 ;
  wire \seg_OBUF[6]_inst_i_74_n_5 ;
  wire \seg_OBUF[6]_inst_i_74_n_6 ;
  wire \seg_OBUF[6]_inst_i_74_n_7 ;
  wire \seg_OBUF[6]_inst_i_75_n_0 ;
  wire \seg_OBUF[6]_inst_i_75_n_4 ;
  wire \seg_OBUF[6]_inst_i_75_n_5 ;
  wire \seg_OBUF[6]_inst_i_75_n_6 ;
  wire \seg_OBUF[6]_inst_i_76_n_0 ;
  wire \seg_OBUF[6]_inst_i_76_n_4 ;
  wire \seg_OBUF[6]_inst_i_76_n_5 ;
  wire \seg_OBUF[6]_inst_i_76_n_6 ;
  wire \seg_OBUF[6]_inst_i_76_n_7 ;
  wire \seg_OBUF[6]_inst_i_77_n_0 ;
  wire \seg_OBUF[6]_inst_i_77_n_4 ;
  wire \seg_OBUF[6]_inst_i_77_n_5 ;
  wire \seg_OBUF[6]_inst_i_77_n_6 ;
  wire \seg_OBUF[6]_inst_i_77_n_7 ;
  wire \seg_OBUF[6]_inst_i_78_n_0 ;
  wire \seg_OBUF[6]_inst_i_78_n_4 ;
  wire \seg_OBUF[6]_inst_i_78_n_5 ;
  wire \seg_OBUF[6]_inst_i_78_n_6 ;
  wire \seg_OBUF[6]_inst_i_78_n_7 ;
  wire \seg_OBUF[6]_inst_i_79_n_0 ;
  wire \seg_OBUF[6]_inst_i_80_n_0 ;
  wire \seg_OBUF[6]_inst_i_81_n_0 ;
  wire \seg_OBUF[6]_inst_i_82_n_0 ;
  wire \seg_OBUF[6]_inst_i_83_n_0 ;
  wire \seg_OBUF[6]_inst_i_84_n_0 ;
  wire \seg_OBUF[6]_inst_i_85_n_0 ;
  wire \seg_OBUF[6]_inst_i_86_n_0 ;
  wire \seg_OBUF[6]_inst_i_87_n_0 ;
  wire \seg_OBUF[6]_inst_i_88_n_0 ;
  wire \seg_OBUF[6]_inst_i_89_n_0 ;
  wire \seg_OBUF[6]_inst_i_90_n_0 ;
  wire \seg_OBUF[6]_inst_i_91_n_0 ;
  wire \seg_OBUF[6]_inst_i_91_n_4 ;
  wire \seg_OBUF[6]_inst_i_91_n_5 ;
  wire \seg_OBUF[6]_inst_i_91_n_6 ;
  wire \seg_OBUF[6]_inst_i_91_n_7 ;
  wire \seg_OBUF[6]_inst_i_92_n_6 ;
  wire \seg_OBUF[6]_inst_i_92_n_7 ;
  wire \seg_OBUF[6]_inst_i_93_n_0 ;
  wire \seg_OBUF[6]_inst_i_94_n_0 ;
  wire \seg_OBUF[6]_inst_i_95_n_0 ;
  wire \seg_OBUF[6]_inst_i_96_n_0 ;
  wire \seg_OBUF[6]_inst_i_97_n_0 ;
  wire \seg_OBUF[6]_inst_i_98_n_0 ;
  wire \seg_OBUF[6]_inst_i_99_n_0 ;
  wire [3:1]sel0;
  wire [2:0]NLW_purchase_success_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_purchase_success_reg_i_2_O_UNCONNECTED;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_113_CO_UNCONNECTED ;
  wire [3:3]\NLW_seg_OBUF[2]_inst_i_113_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_114_CO_UNCONNECTED ;
  wire [3:3]\NLW_seg_OBUF[2]_inst_i_114_O_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_115_CO_UNCONNECTED ;
  wire [3:1]\NLW_seg_OBUF[2]_inst_i_115_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_118_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_119_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_119_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_132_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_139_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_146_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_15_CO_UNCONNECTED ;
  wire [3:3]\NLW_seg_OBUF[2]_inst_i_15_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_153_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_153_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_16_CO_UNCONNECTED ;
  wire [0:0]\NLW_seg_OBUF[2]_inst_i_16_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_162_CO_UNCONNECTED ;
  wire [0:0]\NLW_seg_OBUF[2]_inst_i_162_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_171_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_178_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_178_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_28_CO_UNCONNECTED ;
  wire [3:1]\NLW_seg_OBUF[2]_inst_i_28_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_29_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_29_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_38_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_39_CO_UNCONNECTED ;
  wire [3:1]\NLW_seg_OBUF[2]_inst_i_39_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_40_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_41_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_42_CO_UNCONNECTED ;
  wire [0:0]\NLW_seg_OBUF[2]_inst_i_42_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_43_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_45_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_45_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_54_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_55_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_89_CO_UNCONNECTED ;
  wire [3:1]\NLW_seg_OBUF[2]_inst_i_89_O_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[2]_inst_i_90_CO_UNCONNECTED ;
  wire [3:1]\NLW_seg_OBUF[2]_inst_i_90_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_98_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[2]_inst_i_99_CO_UNCONNECTED ;
  wire [0:0]\NLW_seg_OBUF[2]_inst_i_99_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[5]_inst_i_25_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[5]_inst_i_30_CO_UNCONNECTED ;
  wire [3:1]\NLW_seg_OBUF[5]_inst_i_30_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[5]_inst_i_8_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_130_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_130_O_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_14_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_140_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_141_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_15_CO_UNCONNECTED ;
  wire [3:2]\NLW_seg_OBUF[6]_inst_i_15_O_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_16_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_16_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_163_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_164_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_17_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_177_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_18_CO_UNCONNECTED ;
  wire [0:0]\NLW_seg_OBUF[6]_inst_i_18_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_189_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_189_O_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_19_CO_UNCONNECTED ;
  wire [3:1]\NLW_seg_OBUF[6]_inst_i_19_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_194_CO_UNCONNECTED ;
  wire [3:3]\NLW_seg_OBUF[6]_inst_i_194_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_195_CO_UNCONNECTED ;
  wire [3:3]\NLW_seg_OBUF[6]_inst_i_195_O_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_196_CO_UNCONNECTED ;
  wire [3:1]\NLW_seg_OBUF[6]_inst_i_196_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_206_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_207_CO_UNCONNECTED ;
  wire [0:0]\NLW_seg_OBUF[6]_inst_i_207_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_22_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_223_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_224_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_23_CO_UNCONNECTED ;
  wire [3:2]\NLW_seg_OBUF[6]_inst_i_23_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_237_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_24_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_24_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_246_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_246_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_251_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_258_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_265_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_268_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_268_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_281_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_282_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_295_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_304_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_304_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_309_CO_UNCONNECTED ;
  wire [0:0]\NLW_seg_OBUF[6]_inst_i_309_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_314_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_314_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_319_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_326_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_326_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_335_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_348_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_357_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_357_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_36_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_36_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_376_CO_UNCONNECTED ;
  wire [0:0]\NLW_seg_OBUF[6]_inst_i_376_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_382_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_382_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_391_CO_UNCONNECTED ;
  wire [3:1]\NLW_seg_OBUF[6]_inst_i_391_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_46_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_47_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_55_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_55_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_60_CO_UNCONNECTED ;
  wire [3:3]\NLW_seg_OBUF[6]_inst_i_60_O_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_61_CO_UNCONNECTED ;
  wire [3:1]\NLW_seg_OBUF[6]_inst_i_61_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_62_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_63_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_64_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_65_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_65_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_74_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_75_CO_UNCONNECTED ;
  wire [0:0]\NLW_seg_OBUF[6]_inst_i_75_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_76_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_77_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_78_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_91_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_92_CO_UNCONNECTED ;
  wire [3:2]\NLW_seg_OBUF[6]_inst_i_92_O_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_93_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_93_O_UNCONNECTED ;

initial begin
 $sdf_annotate("Controller_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(DP_OBUF),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(1'b1),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(1'b1),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(1'b1),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(1'b1),
        .O(AN[7]));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  OBUF DP_OBUF_inst
       (.I(DP_OBUF),
        .O(DP));
  LUT3 #(
    .INIT(8'hEA)) 
    \amount_paid[3]_i_4 
       (.I0(\amount_paid_reg_n_0_[3] ),
        .I1(\amount_paid_reg_n_0_[2] ),
        .I2(\amount_paid_reg_n_0_[1] ),
        .O(\amount_paid[3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \amount_paid_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(debounce_inst_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in[0]),
        .Q(\amount_paid_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \amount_paid_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(debounce_inst_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in[1]),
        .Q(\amount_paid_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \amount_paid_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(debounce_inst_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in[2]),
        .Q(\amount_paid_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \amount_paid_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(debounce_inst_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in[3]),
        .Q(\amount_paid_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \amount_paid_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(debounce_inst_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in[4]),
        .Q(\amount_paid_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \amount_paid_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(debounce_inst_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in[5]),
        .Q(\amount_paid_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \amount_paid_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(debounce_inst_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in[6]),
        .Q(\amount_paid_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \amount_paid_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(debounce_inst_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in[7]),
        .Q(\amount_paid_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    button_pressed_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(debounce_inst_n_9),
        .Q(button_pressed_reg_n_0));
  Debounce_money debounce_inst
       (.AR(rst_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(p_1_in),
        .E(debounce_inst_n_0),
        .Q({\amount_paid_reg_n_0_[7] ,\amount_paid_reg_n_0_[6] ,\amount_paid_reg_n_0_[5] ,\amount_paid_reg_n_0_[4] ,\amount_paid_reg_n_0_[3] ,\amount_paid_reg_n_0_[2] ,\amount_paid_reg_n_0_[1] ,\amount_paid_reg_n_0_[0] }),
        .\amount_paid_reg[3] (\amount_paid[3]_i_4_n_0 ),
        .\amount_paid_reg[4] (button_pressed_reg_n_0),
        .item_type_IBUF(item_type_IBUF),
        .\money_input_prev_reg[3]_0 (money_input_IBUF),
        .\stable_money_input_reg[3]_0 (debounce_inst_n_9));
  HexTo7Segment display
       (.AN_OBUF({AN_OBUF[3],AN_OBUF[1:0]}),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CO(\seg_OBUF[6]_inst_i_16_n_1 ),
        .DP_OBUF(DP_OBUF),
        .O(p_0_in[2:1]),
        .Q(\amount_paid_reg_n_0_[0] ),
        .item_type_IBUF(item_type_IBUF),
        .\seg[0] (\seg_OBUF[0]_inst_i_3_n_0 ),
        .\seg[1] (\seg_OBUF[1]_inst_i_2_n_0 ),
        .\seg[1]_0 (\seg_OBUF[1]_inst_i_3_n_0 ),
        .\seg[2] (\seg_OBUF[4]_inst_i_5_n_0 ),
        .\seg[5] (\seg_OBUF[5]_inst_i_2_n_0 ),
        .\seg[6] (\seg_OBUF[6]_inst_i_5_n_0 ),
        .\seg[6]_0 (\seg_OBUF[6]_inst_i_6_n_0 ),
        .seg_OBUF(seg_OBUF),
        .\seg_OBUF[1]_inst_i_1_0 (\seg_OBUF[2]_inst_i_6_n_0 ),
        .\seg_OBUF[1]_inst_i_1_1 (\seg_OBUF[2]_inst_i_7_n_0 ),
        .\seg_OBUF[1]_inst_i_1_2 (\seg_OBUF[2]_inst_i_9_n_0 ),
        .\seg_OBUF[2]_inst_i_1_0 (\seg_OBUF[5]_inst_i_9_n_0 ),
        .\seg_OBUF[2]_inst_i_1_1 (\seg_OBUF[5]_inst_i_7_n_0 ),
        .\seg_OBUF[2]_inst_i_1_2 (\seg_OBUF[5]_inst_i_16_n_0 ),
        .\seg_OBUF[3]_inst_i_4_0 (\seg_OBUF[5]_inst_i_15_n_0 ),
        .\seg_OBUF[3]_inst_i_4_1 (\seg_OBUF[6]_inst_i_15_n_6 ),
        .\seg_OBUF[3]_inst_i_4_2 ({\seg_OBUF[6]_inst_i_18_n_4 ,\seg_OBUF[6]_inst_i_18_n_6 }),
        .\seg_OBUF[4]_inst_i_1_0 (\seg_OBUF[4]_inst_i_7_n_0 ),
        .\seg_OBUF[4]_inst_i_1_1 (\seg_OBUF[5]_inst_i_14_n_0 ),
        .\seg_OBUF[4]_inst_i_1_2 (\seg_OBUF[5]_inst_i_18_n_0 ),
        .\seg_OBUF[4]_inst_i_6_0 ({\seg_OBUF[2]_inst_i_8_n_4 ,\seg_OBUF[2]_inst_i_8_n_5 ,\seg_OBUF[2]_inst_i_8_n_6 ,\seg_OBUF[2]_inst_i_8_n_7 }),
        .\seg_OBUF[4]_inst_i_6_1 (\seg_OBUF[6]_inst_i_19_n_7 ),
        .\seg_OBUF[6]_inst_i_1_0 ({\seg_OBUF[6]_inst_i_14_n_4 ,\seg_OBUF[6]_inst_i_14_n_5 ,\seg_OBUF[6]_inst_i_14_n_7 }),
        .\seg_OBUF[6]_inst_i_1_1 (\seg_OBUF[6]_inst_i_17_n_7 ),
        .sel0(sel0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \item_price[0]_i_1 
       (.I0(item_type_IBUF[2]),
        .I1(item_type_IBUF[1]),
        .I2(item_type_IBUF[0]),
        .O(\item_price[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \item_price[1]_i_1 
       (.I0(item_type_IBUF[0]),
        .I1(item_type_IBUF[2]),
        .I2(item_type_IBUF[1]),
        .O(\item_price[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \item_price[2]_i_1 
       (.I0(item_type_IBUF[2]),
        .I1(item_type_IBUF[1]),
        .O(\item_price[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \item_price[3]_i_1 
       (.I0(item_type_IBUF[1]),
        .I1(item_type_IBUF[2]),
        .I2(item_type_IBUF[0]),
        .O(\item_price[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \item_price[4]_i_1 
       (.I0(item_type_IBUF[2]),
        .I1(item_type_IBUF[1]),
        .I2(item_type_IBUF[0]),
        .O(\item_price[4]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \item_price_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\item_price[0]_i_1_n_0 ),
        .Q(item_price[0]));
  FDCE #(
    .INIT(1'b0)) 
    \item_price_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\item_price[1]_i_1_n_0 ),
        .Q(item_price[1]));
  FDCE #(
    .INIT(1'b0)) 
    \item_price_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\item_price[2]_i_1_n_0 ),
        .Q(item_price[2]));
  FDCE #(
    .INIT(1'b0)) 
    \item_price_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\item_price[3]_i_1_n_0 ),
        .Q(item_price[3]));
  FDCE #(
    .INIT(1'b0)) 
    \item_price_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\item_price[4]_i_1_n_0 ),
        .Q(item_price[4]));
  IBUF \item_type_IBUF[0]_inst 
       (.I(item_type[0]),
        .O(item_type_IBUF[0]));
  IBUF \item_type_IBUF[1]_inst 
       (.I(item_type[1]),
        .O(item_type_IBUF[1]));
  IBUF \item_type_IBUF[2]_inst 
       (.I(item_type[2]),
        .O(item_type_IBUF[2]));
  IBUF \money_input_IBUF[0]_inst 
       (.I(money_input[0]),
        .O(money_input_IBUF[0]));
  IBUF \money_input_IBUF[1]_inst 
       (.I(money_input[1]),
        .O(money_input_IBUF[1]));
  IBUF \money_input_IBUF[2]_inst 
       (.I(money_input[2]),
        .O(money_input_IBUF[2]));
  IBUF \money_input_IBUF[3]_inst 
       (.I(money_input[3]),
        .O(money_input_IBUF[3]));
  OBUF purchase_success_OBUF_inst
       (.I(purchase_success_OBUF),
        .O(purchase_success));
  LUT6 #(
    .INIT(64'hFF00FF00FF00FE00)) 
    purchase_success_i_1
       (.I0(item_price[0]),
        .I1(item_price[3]),
        .I2(item_price[4]),
        .I3(purchase_success10_in),
        .I4(item_price[2]),
        .I5(item_price[1]),
        .O(purchase_success0));
  LUT4 #(
    .INIT(16'h9009)) 
    purchase_success_i_10
       (.I0(item_price[1]),
        .I1(\amount_paid_reg_n_0_[1] ),
        .I2(item_price[0]),
        .I3(\amount_paid_reg_n_0_[0] ),
        .O(purchase_success_i_10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    purchase_success_i_3
       (.I0(\amount_paid_reg_n_0_[6] ),
        .I1(\amount_paid_reg_n_0_[7] ),
        .O(purchase_success_i_3_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    purchase_success_i_4
       (.I0(item_price[4]),
        .I1(\amount_paid_reg_n_0_[4] ),
        .I2(\amount_paid_reg_n_0_[5] ),
        .O(purchase_success_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    purchase_success_i_5
       (.I0(\amount_paid_reg_n_0_[3] ),
        .I1(item_price[3]),
        .I2(\amount_paid_reg_n_0_[2] ),
        .I3(item_price[2]),
        .O(purchase_success_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    purchase_success_i_6
       (.I0(\amount_paid_reg_n_0_[1] ),
        .I1(item_price[1]),
        .I2(\amount_paid_reg_n_0_[0] ),
        .I3(item_price[0]),
        .O(purchase_success_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    purchase_success_i_7
       (.I0(\amount_paid_reg_n_0_[6] ),
        .I1(\amount_paid_reg_n_0_[7] ),
        .O(purchase_success_i_7_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    purchase_success_i_8
       (.I0(item_price[4]),
        .I1(\amount_paid_reg_n_0_[4] ),
        .I2(\amount_paid_reg_n_0_[5] ),
        .O(purchase_success_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    purchase_success_i_9
       (.I0(item_price[3]),
        .I1(\amount_paid_reg_n_0_[3] ),
        .I2(item_price[2]),
        .I3(\amount_paid_reg_n_0_[2] ),
        .O(purchase_success_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    purchase_success_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(purchase_success0),
        .Q(purchase_success_OBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 purchase_success_reg_i_2
       (.CI(1'b0),
        .CO({purchase_success10_in,NLW_purchase_success_reg_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({purchase_success_i_3_n_0,purchase_success_i_4_n_0,purchase_success_i_5_n_0,purchase_success_i_6_n_0}),
        .O(NLW_purchase_success_reg_i_2_O_UNCONNECTED[3:0]),
        .S({purchase_success_i_7_n_0,purchase_success_i_8_n_0,purchase_success_i_9_n_0,purchase_success_i_10_n_0}));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[0]_inst_i_3 
       (.I0(item_type_IBUF[0]),
        .I1(item_type_IBUF[2]),
        .O(\seg_OBUF[0]_inst_i_3_n_0 ));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  LUT6 #(
    .INIT(64'hCCCCCCA0000000A0)) 
    \seg_OBUF[1]_inst_i_2 
       (.I0(\seg_OBUF[6]_inst_i_14_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_18_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_14_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_15_n_6 ),
        .I4(\seg_OBUF[6]_inst_i_16_n_1 ),
        .I5(\seg_OBUF[6]_inst_i_18_n_6 ),
        .O(\seg_OBUF[1]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \seg_OBUF[1]_inst_i_3 
       (.I0(\seg_OBUF[6]_inst_i_17_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_16_n_1 ),
        .I2(\seg_OBUF[6]_inst_i_15_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_14_n_4 ),
        .O(\seg_OBUF[1]_inst_i_3_n_0 ));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  LUT3 #(
    .INIT(8'h69)) 
    \seg_OBUF[2]_inst_i_100 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[2]_inst_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \seg_OBUF[2]_inst_i_101 
       (.I0(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_198_n_0 ),
        .O(\seg_OBUF[2]_inst_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \seg_OBUF[2]_inst_i_102 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[2]_inst_i_102_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \seg_OBUF[2]_inst_i_103 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[2]_inst_i_103_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \seg_OBUF[2]_inst_i_104 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[2]_inst_i_104_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[2]_inst_i_105 
       (.I0(\seg_OBUF[2]_inst_i_113_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_105_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[2]_inst_i_106 
       (.I0(\seg_OBUF[2]_inst_i_113_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_106_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[2]_inst_i_107 
       (.I0(\seg_OBUF[2]_inst_i_113_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_107_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[2]_inst_i_108 
       (.I0(\seg_OBUF[2]_inst_i_132_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_108_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \seg_OBUF[2]_inst_i_109 
       (.I0(\seg_OBUF[2]_inst_i_113_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I2(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I3(\seg_OBUF[2]_inst_i_113_n_0 ),
        .O(\seg_OBUF[2]_inst_i_109_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[2]_inst_i_11 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_15_n_6 ),
        .O(\seg_OBUF[2]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hE817)) 
    \seg_OBUF[2]_inst_i_110 
       (.I0(\seg_OBUF[2]_inst_i_113_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I2(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I3(\seg_OBUF[2]_inst_i_113_n_5 ),
        .O(\seg_OBUF[2]_inst_i_110_n_0 ));
  LUT4 #(
    .INIT(16'hE817)) 
    \seg_OBUF[2]_inst_i_111 
       (.I0(\seg_OBUF[2]_inst_i_113_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I2(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I3(\seg_OBUF[2]_inst_i_113_n_6 ),
        .O(\seg_OBUF[2]_inst_i_111_n_0 ));
  LUT4 #(
    .INIT(16'hE817)) 
    \seg_OBUF[2]_inst_i_112 
       (.I0(\seg_OBUF[2]_inst_i_132_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I2(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I3(\seg_OBUF[2]_inst_i_113_n_7 ),
        .O(\seg_OBUF[2]_inst_i_112_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_113 
       (.CI(\seg_OBUF[2]_inst_i_132_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_113_n_0 ,\NLW_seg_OBUF[2]_inst_i_113_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\seg_OBUF[2]_inst_i_133_n_0 ,\seg_OBUF[2]_inst_i_134_n_0 ,\seg_OBUF[2]_inst_i_135_n_0 }),
        .O({\NLW_seg_OBUF[2]_inst_i_113_O_UNCONNECTED [3],\seg_OBUF[2]_inst_i_113_n_5 ,\seg_OBUF[2]_inst_i_113_n_6 ,\seg_OBUF[2]_inst_i_113_n_7 }),
        .S({1'b1,\seg_OBUF[2]_inst_i_136_n_0 ,\seg_OBUF[2]_inst_i_137_n_0 ,\seg_OBUF[2]_inst_i_138_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_114 
       (.CI(\seg_OBUF[2]_inst_i_139_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_114_n_0 ,\NLW_seg_OBUF[2]_inst_i_114_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\seg_OBUF[2]_inst_i_140_n_0 ,\seg_OBUF[2]_inst_i_141_n_0 ,\seg_OBUF[2]_inst_i_142_n_0 }),
        .O({\NLW_seg_OBUF[2]_inst_i_114_O_UNCONNECTED [3],\seg_OBUF[2]_inst_i_114_n_5 ,\seg_OBUF[2]_inst_i_114_n_6 ,\seg_OBUF[2]_inst_i_114_n_7 }),
        .S({1'b1,\seg_OBUF[2]_inst_i_143_n_0 ,\seg_OBUF[2]_inst_i_144_n_0 ,\seg_OBUF[2]_inst_i_145_n_0 }));
  CARRY4 \seg_OBUF[2]_inst_i_115 
       (.CI(\seg_OBUF[2]_inst_i_146_n_0 ),
        .CO({\NLW_seg_OBUF[2]_inst_i_115_CO_UNCONNECTED [3:2],\seg_OBUF[2]_inst_i_115_n_2 ,\NLW_seg_OBUF[2]_inst_i_115_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\seg_OBUF[2]_inst_i_147_n_0 }),
        .O({\NLW_seg_OBUF[2]_inst_i_115_O_UNCONNECTED [3:1],\seg_OBUF[2]_inst_i_115_n_7 }),
        .S({1'b0,1'b0,1'b1,\seg_OBUF[2]_inst_i_148_n_0 }));
  LUT5 #(
    .INIT(32'h38F0F1FF)) 
    \seg_OBUF[2]_inst_i_116 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_116_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[2]_inst_i_117 
       (.I0(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_113_n_0 ),
        .O(\seg_OBUF[2]_inst_i_117_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_118 
       (.CI(1'b0),
        .CO({\seg_OBUF[2]_inst_i_118_n_0 ,\NLW_seg_OBUF[2]_inst_i_118_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[5]_inst_i_7_n_0 ,\seg_OBUF[5]_inst_i_9_n_0 ,1'b0,1'b1}),
        .O({\seg_OBUF[2]_inst_i_118_n_4 ,\seg_OBUF[2]_inst_i_118_n_5 ,\seg_OBUF[2]_inst_i_118_n_6 ,\seg_OBUF[2]_inst_i_118_n_7 }),
        .S({\seg_OBUF[2]_inst_i_149_n_0 ,\seg_OBUF[2]_inst_i_150_n_0 ,\seg_OBUF[2]_inst_i_151_n_0 ,\seg_OBUF[2]_inst_i_152_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_119 
       (.CI(\seg_OBUF[2]_inst_i_153_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_119_n_0 ,\NLW_seg_OBUF[2]_inst_i_119_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_154_n_0 ,\seg_OBUF[2]_inst_i_155_n_0 ,\seg_OBUF[2]_inst_i_156_n_0 ,\seg_OBUF[2]_inst_i_157_n_0 }),
        .O(\NLW_seg_OBUF[2]_inst_i_119_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[2]_inst_i_158_n_0 ,\seg_OBUF[2]_inst_i_159_n_0 ,\seg_OBUF[2]_inst_i_160_n_0 ,\seg_OBUF[2]_inst_i_161_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[2]_inst_i_12 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_15_n_7 ),
        .O(\seg_OBUF[2]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[2]_inst_i_120 
       (.I0(\seg_OBUF[2]_inst_i_132_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_120_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[2]_inst_i_121 
       (.I0(\seg_OBUF[2]_inst_i_132_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_121_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[2]_inst_i_122 
       (.I0(\seg_OBUF[2]_inst_i_115_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_132_n_7 ),
        .O(\seg_OBUF[2]_inst_i_122_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[2]_inst_i_123 
       (.I0(\seg_OBUF[2]_inst_i_146_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_162_n_4 ),
        .O(\seg_OBUF[2]_inst_i_123_n_0 ));
  LUT4 #(
    .INIT(16'hE817)) 
    \seg_OBUF[2]_inst_i_124 
       (.I0(\seg_OBUF[2]_inst_i_132_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I2(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I3(\seg_OBUF[2]_inst_i_132_n_4 ),
        .O(\seg_OBUF[2]_inst_i_124_n_0 ));
  LUT4 #(
    .INIT(16'hE817)) 
    \seg_OBUF[2]_inst_i_125 
       (.I0(\seg_OBUF[2]_inst_i_132_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I2(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I3(\seg_OBUF[2]_inst_i_132_n_5 ),
        .O(\seg_OBUF[2]_inst_i_125_n_0 ));
  LUT5 #(
    .INIT(32'h78E1871E)) 
    \seg_OBUF[2]_inst_i_126 
       (.I0(\seg_OBUF[2]_inst_i_132_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_115_n_7 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I3(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I4(\seg_OBUF[2]_inst_i_132_n_6 ),
        .O(\seg_OBUF[2]_inst_i_126_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[2]_inst_i_127 
       (.I0(\seg_OBUF[2]_inst_i_162_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_146_n_4 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_7 ),
        .I3(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I4(\seg_OBUF[2]_inst_i_132_n_7 ),
        .O(\seg_OBUF[2]_inst_i_127_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[2]_inst_i_128 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[2]_inst_i_128_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[2]_inst_i_129 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[2]_inst_i_129_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[2]_inst_i_13 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_16_n_6 ),
        .O(\seg_OBUF[2]_inst_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[2]_inst_i_130 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[2]_inst_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h79EF286719EB0861)) 
    \seg_OBUF[2]_inst_i_131 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(\seg_OBUF[5]_inst_i_11_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_12_n_0 ),
        .I5(p_0_in[1]),
        .O(\seg_OBUF[2]_inst_i_131_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_132 
       (.CI(\seg_OBUF[2]_inst_i_162_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_132_n_0 ,\NLW_seg_OBUF[2]_inst_i_132_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_114_n_0 ,\seg_OBUF[6]_inst_i_115_n_0 ,\seg_OBUF[6]_inst_i_116_n_0 ,\seg_OBUF[6]_inst_i_117_n_0 }),
        .O({\seg_OBUF[2]_inst_i_132_n_4 ,\seg_OBUF[2]_inst_i_132_n_5 ,\seg_OBUF[2]_inst_i_132_n_6 ,\seg_OBUF[2]_inst_i_132_n_7 }),
        .S({\seg_OBUF[2]_inst_i_163_n_0 ,\seg_OBUF[2]_inst_i_164_n_0 ,\seg_OBUF[2]_inst_i_165_n_0 ,\seg_OBUF[2]_inst_i_166_n_0 }));
  LUT3 #(
    .INIT(8'hE0)) 
    \seg_OBUF[2]_inst_i_133 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .O(\seg_OBUF[2]_inst_i_133_n_0 ));
  LUT4 #(
    .INIT(16'h9A18)) 
    \seg_OBUF[2]_inst_i_134 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .I3(p_0_in[7]),
        .O(\seg_OBUF[2]_inst_i_134_n_0 ));
  LUT5 #(
    .INIT(32'h08030EF0)) 
    \seg_OBUF[2]_inst_i_135 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_135_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \seg_OBUF[2]_inst_i_136 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_136_n_0 ));
  LUT4 #(
    .INIT(16'h8133)) 
    \seg_OBUF[2]_inst_i_137 
       (.I0(p_0_in[7]),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_137_n_0 ));
  LUT5 #(
    .INIT(32'h38F0F1FF)) 
    \seg_OBUF[2]_inst_i_138 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_138_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_139 
       (.CI(\seg_OBUF[6]_inst_i_391_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_139_n_0 ,\NLW_seg_OBUF[2]_inst_i_139_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_114_n_0 ,\seg_OBUF[6]_inst_i_115_n_0 ,\seg_OBUF[6]_inst_i_116_n_0 ,\seg_OBUF[6]_inst_i_117_n_0 }),
        .O({\seg_OBUF[2]_inst_i_139_n_4 ,\seg_OBUF[2]_inst_i_139_n_5 ,\seg_OBUF[2]_inst_i_139_n_6 ,\seg_OBUF[2]_inst_i_139_n_7 }),
        .S({\seg_OBUF[2]_inst_i_167_n_0 ,\seg_OBUF[2]_inst_i_168_n_0 ,\seg_OBUF[2]_inst_i_169_n_0 ,\seg_OBUF[2]_inst_i_170_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[2]_inst_i_14 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[2]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \seg_OBUF[2]_inst_i_140 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .O(\seg_OBUF[2]_inst_i_140_n_0 ));
  LUT4 #(
    .INIT(16'h9A18)) 
    \seg_OBUF[2]_inst_i_141 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .I3(p_0_in[7]),
        .O(\seg_OBUF[2]_inst_i_141_n_0 ));
  LUT5 #(
    .INIT(32'h08030EF0)) 
    \seg_OBUF[2]_inst_i_142 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_142_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \seg_OBUF[2]_inst_i_143 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_143_n_0 ));
  LUT4 #(
    .INIT(16'h8133)) 
    \seg_OBUF[2]_inst_i_144 
       (.I0(p_0_in[7]),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_144_n_0 ));
  LUT5 #(
    .INIT(32'h38F0F1FF)) 
    \seg_OBUF[2]_inst_i_145 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_145_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_146 
       (.CI(\seg_OBUF[2]_inst_i_171_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_146_n_0 ,\NLW_seg_OBUF[2]_inst_i_146_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_172_n_0 ,\seg_OBUF[2]_inst_i_173_n_0 ,\seg_OBUF[6]_inst_i_114_n_0 ,\seg_OBUF[6]_inst_i_115_n_0 }),
        .O({\seg_OBUF[2]_inst_i_146_n_4 ,\seg_OBUF[2]_inst_i_146_n_5 ,\seg_OBUF[2]_inst_i_146_n_6 ,\seg_OBUF[2]_inst_i_146_n_7 }),
        .S({\seg_OBUF[2]_inst_i_174_n_0 ,\seg_OBUF[2]_inst_i_175_n_0 ,\seg_OBUF[2]_inst_i_176_n_0 ,\seg_OBUF[2]_inst_i_177_n_0 }));
  LUT3 #(
    .INIT(8'hE0)) 
    \seg_OBUF[2]_inst_i_147 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .O(\seg_OBUF[2]_inst_i_147_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \seg_OBUF[2]_inst_i_148 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_148_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[2]_inst_i_149 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[2]_inst_i_149_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_15 
       (.CI(1'b0),
        .CO(\NLW_seg_OBUF[2]_inst_i_15_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\seg_OBUF[2]_inst_i_16_n_4 ,1'b0}),
        .O({\NLW_seg_OBUF[2]_inst_i_15_O_UNCONNECTED [3],\seg_OBUF[2]_inst_i_15_n_5 ,\seg_OBUF[2]_inst_i_15_n_6 ,\seg_OBUF[2]_inst_i_15_n_7 }),
        .S({1'b0,\seg_OBUF[2]_inst_i_17_n_0 ,\seg_OBUF[2]_inst_i_18_n_0 ,\seg_OBUF[2]_inst_i_16_n_5 }));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[2]_inst_i_150 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[2]_inst_i_150_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[2]_inst_i_151 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[2]_inst_i_151_n_0 ));
  LUT6 #(
    .INIT(64'h79EF286719EB0861)) 
    \seg_OBUF[2]_inst_i_152 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(\seg_OBUF[5]_inst_i_11_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_12_n_0 ),
        .I5(p_0_in[1]),
        .O(\seg_OBUF[2]_inst_i_152_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_153 
       (.CI(\seg_OBUF[2]_inst_i_178_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_153_n_0 ,\NLW_seg_OBUF[2]_inst_i_153_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_179_n_0 ,\seg_OBUF[2]_inst_i_180_n_0 ,\seg_OBUF[2]_inst_i_181_n_0 ,\seg_OBUF[2]_inst_i_182_n_0 }),
        .O(\NLW_seg_OBUF[2]_inst_i_153_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[2]_inst_i_183_n_0 ,\seg_OBUF[2]_inst_i_184_n_0 ,\seg_OBUF[2]_inst_i_185_n_0 ,\seg_OBUF[2]_inst_i_186_n_0 }));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[2]_inst_i_154 
       (.I0(\seg_OBUF[2]_inst_i_146_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_162_n_5 ),
        .O(\seg_OBUF[2]_inst_i_154_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[2]_inst_i_155 
       (.I0(\seg_OBUF[2]_inst_i_146_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_162_n_6 ),
        .O(\seg_OBUF[2]_inst_i_155_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[2]_inst_i_156 
       (.I0(\seg_OBUF[2]_inst_i_146_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_139_n_0 ),
        .O(\seg_OBUF[2]_inst_i_156_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \seg_OBUF[2]_inst_i_157 
       (.I0(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_171_n_4 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[2]_inst_i_157_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[2]_inst_i_158 
       (.I0(\seg_OBUF[2]_inst_i_162_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_146_n_5 ),
        .I2(\seg_OBUF[2]_inst_i_146_n_4 ),
        .I3(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I4(\seg_OBUF[2]_inst_i_162_n_4 ),
        .O(\seg_OBUF[2]_inst_i_158_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[2]_inst_i_159 
       (.I0(\seg_OBUF[2]_inst_i_162_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_146_n_6 ),
        .I2(\seg_OBUF[2]_inst_i_146_n_5 ),
        .I3(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I4(\seg_OBUF[2]_inst_i_162_n_5 ),
        .O(\seg_OBUF[2]_inst_i_159_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_16 
       (.CI(\seg_OBUF[2]_inst_i_19_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_16_n_0 ,\NLW_seg_OBUF[2]_inst_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_20_n_0 ,\seg_OBUF[2]_inst_i_21_n_0 ,\seg_OBUF[2]_inst_i_22_n_0 ,\seg_OBUF[2]_inst_i_23_n_0 }),
        .O({\seg_OBUF[2]_inst_i_16_n_4 ,\seg_OBUF[2]_inst_i_16_n_5 ,\seg_OBUF[2]_inst_i_16_n_6 ,\NLW_seg_OBUF[2]_inst_i_16_O_UNCONNECTED [0]}),
        .S({\seg_OBUF[2]_inst_i_24_n_0 ,\seg_OBUF[2]_inst_i_25_n_0 ,\seg_OBUF[2]_inst_i_26_n_0 ,\seg_OBUF[2]_inst_i_27_n_0 }));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[2]_inst_i_160 
       (.I0(\seg_OBUF[6]_inst_i_139_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_146_n_7 ),
        .I2(\seg_OBUF[2]_inst_i_146_n_6 ),
        .I3(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I4(\seg_OBUF[2]_inst_i_162_n_6 ),
        .O(\seg_OBUF[2]_inst_i_160_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[2]_inst_i_161 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_171_n_4 ),
        .I2(\seg_OBUF[2]_inst_i_146_n_7 ),
        .I3(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_139_n_0 ),
        .O(\seg_OBUF[2]_inst_i_161_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_162 
       (.CI(1'b0),
        .CO({\seg_OBUF[2]_inst_i_162_n_0 ,\NLW_seg_OBUF[2]_inst_i_162_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_148_n_0 ,\seg_OBUF[6]_inst_i_149_n_0 ,\seg_OBUF[2]_inst_i_187_n_0 ,1'b0}),
        .O({\seg_OBUF[2]_inst_i_162_n_4 ,\seg_OBUF[2]_inst_i_162_n_5 ,\seg_OBUF[2]_inst_i_162_n_6 ,\NLW_seg_OBUF[2]_inst_i_162_O_UNCONNECTED [0]}),
        .S({\seg_OBUF[2]_inst_i_188_n_0 ,\seg_OBUF[2]_inst_i_189_n_0 ,\seg_OBUF[2]_inst_i_190_n_0 ,\seg_OBUF[2]_inst_i_191_n_0 }));
  LUT6 #(
    .INIT(64'h342C0CCF2CCD0CCF)) 
    \seg_OBUF[2]_inst_i_163 
       (.I0(p_0_in[5]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(\seg_OBUF[2]_inst_i_163_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \seg_OBUF[2]_inst_i_164 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[2]_inst_i_164_n_0 ));
  LUT6 #(
    .INIT(64'h5700FF57A8FF00A8)) 
    \seg_OBUF[2]_inst_i_165 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_116_n_0 ),
        .O(\seg_OBUF[2]_inst_i_165_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[2]_inst_i_166 
       (.I0(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_198_n_0 ),
        .O(\seg_OBUF[2]_inst_i_166_n_0 ));
  LUT6 #(
    .INIT(64'h342C0CCF2CCD0CCF)) 
    \seg_OBUF[2]_inst_i_167 
       (.I0(p_0_in[5]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(\seg_OBUF[2]_inst_i_167_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \seg_OBUF[2]_inst_i_168 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[2]_inst_i_168_n_0 ));
  LUT6 #(
    .INIT(64'h5700FF57A8FF00A8)) 
    \seg_OBUF[2]_inst_i_169 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_116_n_0 ),
        .O(\seg_OBUF[2]_inst_i_169_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[2]_inst_i_17 
       (.I0(\seg_OBUF[2]_inst_i_28_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_16_n_5 ),
        .O(\seg_OBUF[2]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[2]_inst_i_170 
       (.I0(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_198_n_0 ),
        .O(\seg_OBUF[2]_inst_i_170_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_171 
       (.CI(\seg_OBUF[2]_inst_i_118_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_171_n_0 ,\NLW_seg_OBUF[2]_inst_i_171_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_208_n_0 ,\seg_OBUF[6]_inst_i_209_n_0 ,\seg_OBUF[2]_inst_i_192_n_0 ,\seg_OBUF[5]_inst_i_10_n_0 }),
        .O({\seg_OBUF[2]_inst_i_171_n_4 ,\seg_OBUF[2]_inst_i_171_n_5 ,\seg_OBUF[2]_inst_i_171_n_6 ,\seg_OBUF[2]_inst_i_171_n_7 }),
        .S({\seg_OBUF[2]_inst_i_193_n_0 ,\seg_OBUF[2]_inst_i_194_n_0 ,\seg_OBUF[2]_inst_i_195_n_0 ,\seg_OBUF[2]_inst_i_196_n_0 }));
  LUT4 #(
    .INIT(16'h9A18)) 
    \seg_OBUF[2]_inst_i_172 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .I3(p_0_in[7]),
        .O(\seg_OBUF[2]_inst_i_172_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB02C)) 
    \seg_OBUF[2]_inst_i_173 
       (.I0(p_0_in[6]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[7]),
        .I4(p_0_in[10]),
        .O(\seg_OBUF[2]_inst_i_173_n_0 ));
  LUT4 #(
    .INIT(16'h8133)) 
    \seg_OBUF[2]_inst_i_174 
       (.I0(p_0_in[7]),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_174_n_0 ));
  LUT5 #(
    .INIT(32'hC80001FF)) 
    \seg_OBUF[2]_inst_i_175 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_175_n_0 ));
  LUT6 #(
    .INIT(64'hF7E00F0FEF010F0F)) 
    \seg_OBUF[2]_inst_i_176 
       (.I0(p_0_in[5]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(\seg_OBUF[2]_inst_i_176_n_0 ));
  LUT6 #(
    .INIT(64'h4440DDD5BBBF222A)) 
    \seg_OBUF[2]_inst_i_177 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .I4(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_115_n_0 ),
        .O(\seg_OBUF[2]_inst_i_177_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_178 
       (.CI(1'b0),
        .CO({\seg_OBUF[2]_inst_i_178_n_0 ,\NLW_seg_OBUF[2]_inst_i_178_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_197_n_0 ,\seg_OBUF[2]_inst_i_198_n_0 ,\seg_OBUF[2]_inst_i_199_n_0 ,1'b0}),
        .O(\NLW_seg_OBUF[2]_inst_i_178_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[2]_inst_i_200_n_0 ,\seg_OBUF[2]_inst_i_201_n_0 ,\seg_OBUF[2]_inst_i_202_n_0 ,\seg_OBUF[2]_inst_i_203_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[2]_inst_i_179 
       (.I0(\seg_OBUF[2]_inst_i_114_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_171_n_5 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[2]_inst_i_179_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[2]_inst_i_18 
       (.I0(\seg_OBUF[2]_inst_i_16_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_16_n_6 ),
        .O(\seg_OBUF[2]_inst_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[2]_inst_i_180 
       (.I0(\seg_OBUF[2]_inst_i_114_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_171_n_6 ),
        .I2(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[2]_inst_i_180_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[2]_inst_i_181 
       (.I0(\seg_OBUF[2]_inst_i_171_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_7 ),
        .O(\seg_OBUF[2]_inst_i_181_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[2]_inst_i_182 
       (.I0(\seg_OBUF[2]_inst_i_118_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_139_n_4 ),
        .O(\seg_OBUF[2]_inst_i_182_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \seg_OBUF[2]_inst_i_183 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_171_n_5 ),
        .I2(\seg_OBUF[2]_inst_i_114_n_5 ),
        .I3(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I4(\seg_OBUF[2]_inst_i_171_n_4 ),
        .I5(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[2]_inst_i_183_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[2]_inst_i_184 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_171_n_6 ),
        .I2(\seg_OBUF[2]_inst_i_114_n_6 ),
        .I3(\seg_OBUF[2]_inst_i_171_n_5 ),
        .I4(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I5(\seg_OBUF[2]_inst_i_114_n_5 ),
        .O(\seg_OBUF[2]_inst_i_184_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \seg_OBUF[2]_inst_i_185 
       (.I0(\seg_OBUF[2]_inst_i_114_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_171_n_7 ),
        .I2(\seg_OBUF[2]_inst_i_171_n_6 ),
        .I3(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I4(\seg_OBUF[2]_inst_i_114_n_6 ),
        .O(\seg_OBUF[2]_inst_i_185_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[2]_inst_i_186 
       (.I0(\seg_OBUF[2]_inst_i_139_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_118_n_4 ),
        .I2(\seg_OBUF[2]_inst_i_171_n_7 ),
        .I3(\seg_OBUF[2]_inst_i_114_n_7 ),
        .O(\seg_OBUF[2]_inst_i_186_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \seg_OBUF[2]_inst_i_187 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[2]_inst_i_187_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[2]_inst_i_188 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[2]_inst_i_188_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \seg_OBUF[2]_inst_i_189 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[2]_inst_i_189_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_19 
       (.CI(\seg_OBUF[2]_inst_i_29_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_19_n_0 ,\NLW_seg_OBUF[2]_inst_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_30_n_0 ,\seg_OBUF[2]_inst_i_31_n_0 ,\seg_OBUF[2]_inst_i_32_n_0 ,\seg_OBUF[2]_inst_i_33_n_0 }),
        .O(\NLW_seg_OBUF[2]_inst_i_19_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[2]_inst_i_34_n_0 ,\seg_OBUF[2]_inst_i_35_n_0 ,\seg_OBUF[2]_inst_i_36_n_0 ,\seg_OBUF[2]_inst_i_37_n_0 }));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \seg_OBUF[2]_inst_i_190 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[2]_inst_i_190_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[2]_inst_i_191 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[2]_inst_i_191_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \seg_OBUF[2]_inst_i_192 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[2]_inst_i_192_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \seg_OBUF[2]_inst_i_193 
       (.I0(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_198_n_0 ),
        .O(\seg_OBUF[2]_inst_i_193_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \seg_OBUF[2]_inst_i_194 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[2]_inst_i_194_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \seg_OBUF[2]_inst_i_195 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[2]_inst_i_195_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \seg_OBUF[2]_inst_i_196 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[2]_inst_i_196_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[2]_inst_i_197 
       (.I0(\seg_OBUF[2]_inst_i_118_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_139_n_5 ),
        .O(\seg_OBUF[2]_inst_i_197_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[2]_inst_i_198 
       (.I0(\seg_OBUF[2]_inst_i_118_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_139_n_6 ),
        .O(\seg_OBUF[2]_inst_i_198_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[2]_inst_i_199 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_139_n_7 ),
        .O(\seg_OBUF[2]_inst_i_199_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[2]_inst_i_20 
       (.I0(\seg_OBUF[2]_inst_i_38_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_39_n_2 ),
        .I2(\seg_OBUF[2]_inst_i_40_n_5 ),
        .O(\seg_OBUF[2]_inst_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[2]_inst_i_200 
       (.I0(\seg_OBUF[2]_inst_i_139_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_118_n_5 ),
        .I2(\seg_OBUF[2]_inst_i_118_n_4 ),
        .I3(\seg_OBUF[2]_inst_i_139_n_4 ),
        .O(\seg_OBUF[2]_inst_i_200_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[2]_inst_i_201 
       (.I0(\seg_OBUF[2]_inst_i_139_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_118_n_6 ),
        .I2(\seg_OBUF[2]_inst_i_118_n_5 ),
        .I3(\seg_OBUF[2]_inst_i_139_n_5 ),
        .O(\seg_OBUF[2]_inst_i_201_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[2]_inst_i_202 
       (.I0(\seg_OBUF[2]_inst_i_139_n_7 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_118_n_6 ),
        .I3(\seg_OBUF[2]_inst_i_139_n_6 ),
        .O(\seg_OBUF[2]_inst_i_202_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[2]_inst_i_203 
       (.I0(\seg_OBUF[2]_inst_i_139_n_7 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[2]_inst_i_203_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \seg_OBUF[2]_inst_i_21 
       (.I0(\seg_OBUF[2]_inst_i_39_n_2 ),
        .I1(\seg_OBUF[2]_inst_i_38_n_6 ),
        .I2(\seg_OBUF[2]_inst_i_40_n_6 ),
        .O(\seg_OBUF[2]_inst_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[2]_inst_i_22 
       (.I0(\seg_OBUF[2]_inst_i_39_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_38_n_7 ),
        .I2(\seg_OBUF[2]_inst_i_40_n_7 ),
        .O(\seg_OBUF[2]_inst_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[2]_inst_i_23 
       (.I0(\seg_OBUF[2]_inst_i_41_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_42_n_4 ),
        .I2(\seg_OBUF[2]_inst_i_43_n_4 ),
        .O(\seg_OBUF[2]_inst_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[2]_inst_i_24 
       (.I0(\seg_OBUF[2]_inst_i_40_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_38_n_5 ),
        .I2(\seg_OBUF[2]_inst_i_38_n_4 ),
        .I3(\seg_OBUF[2]_inst_i_39_n_2 ),
        .I4(\seg_OBUF[2]_inst_i_40_n_4 ),
        .O(\seg_OBUF[2]_inst_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[2]_inst_i_25 
       (.I0(\seg_OBUF[2]_inst_i_40_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_38_n_6 ),
        .I2(\seg_OBUF[2]_inst_i_38_n_5 ),
        .I3(\seg_OBUF[2]_inst_i_39_n_2 ),
        .I4(\seg_OBUF[2]_inst_i_40_n_5 ),
        .O(\seg_OBUF[2]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \seg_OBUF[2]_inst_i_26 
       (.I0(\seg_OBUF[2]_inst_i_40_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_38_n_7 ),
        .I2(\seg_OBUF[2]_inst_i_39_n_7 ),
        .I3(\seg_OBUF[2]_inst_i_39_n_2 ),
        .I4(\seg_OBUF[2]_inst_i_38_n_6 ),
        .I5(\seg_OBUF[2]_inst_i_40_n_6 ),
        .O(\seg_OBUF[2]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[2]_inst_i_27 
       (.I0(\seg_OBUF[2]_inst_i_43_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_42_n_4 ),
        .I2(\seg_OBUF[2]_inst_i_41_n_4 ),
        .I3(\seg_OBUF[2]_inst_i_38_n_7 ),
        .I4(\seg_OBUF[2]_inst_i_40_n_7 ),
        .I5(\seg_OBUF[2]_inst_i_39_n_7 ),
        .O(\seg_OBUF[2]_inst_i_27_n_0 ));
  CARRY4 \seg_OBUF[2]_inst_i_28 
       (.CI(\seg_OBUF[2]_inst_i_16_n_0 ),
        .CO(\NLW_seg_OBUF[2]_inst_i_28_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_seg_OBUF[2]_inst_i_28_O_UNCONNECTED [3:1],\seg_OBUF[2]_inst_i_28_n_7 }),
        .S({1'b0,1'b0,1'b0,\seg_OBUF[2]_inst_i_44_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_29 
       (.CI(\seg_OBUF[2]_inst_i_45_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_29_n_0 ,\NLW_seg_OBUF[2]_inst_i_29_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_46_n_0 ,\seg_OBUF[2]_inst_i_47_n_0 ,\seg_OBUF[2]_inst_i_48_n_0 ,\seg_OBUF[2]_inst_i_49_n_0 }),
        .O(\NLW_seg_OBUF[2]_inst_i_29_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[2]_inst_i_50_n_0 ,\seg_OBUF[2]_inst_i_51_n_0 ,\seg_OBUF[2]_inst_i_52_n_0 ,\seg_OBUF[2]_inst_i_53_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[2]_inst_i_30 
       (.I0(\seg_OBUF[2]_inst_i_41_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_42_n_5 ),
        .I2(\seg_OBUF[2]_inst_i_43_n_5 ),
        .O(\seg_OBUF[2]_inst_i_30_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[2]_inst_i_31 
       (.I0(\seg_OBUF[2]_inst_i_41_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_42_n_6 ),
        .I2(\seg_OBUF[2]_inst_i_43_n_6 ),
        .O(\seg_OBUF[2]_inst_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[2]_inst_i_32 
       (.I0(\seg_OBUF[2]_inst_i_41_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_139_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_43_n_7 ),
        .O(\seg_OBUF[2]_inst_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[2]_inst_i_33 
       (.I0(\seg_OBUF[2]_inst_i_54_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_55_n_4 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[2]_inst_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[2]_inst_i_34 
       (.I0(\seg_OBUF[2]_inst_i_43_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_42_n_5 ),
        .I2(\seg_OBUF[2]_inst_i_41_n_5 ),
        .I3(\seg_OBUF[2]_inst_i_42_n_4 ),
        .I4(\seg_OBUF[2]_inst_i_43_n_4 ),
        .I5(\seg_OBUF[2]_inst_i_41_n_4 ),
        .O(\seg_OBUF[2]_inst_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[2]_inst_i_35 
       (.I0(\seg_OBUF[2]_inst_i_43_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_42_n_6 ),
        .I2(\seg_OBUF[2]_inst_i_41_n_6 ),
        .I3(\seg_OBUF[2]_inst_i_42_n_5 ),
        .I4(\seg_OBUF[2]_inst_i_43_n_5 ),
        .I5(\seg_OBUF[2]_inst_i_41_n_5 ),
        .O(\seg_OBUF[2]_inst_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[2]_inst_i_36 
       (.I0(\seg_OBUF[2]_inst_i_43_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_139_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_41_n_7 ),
        .I3(\seg_OBUF[2]_inst_i_42_n_6 ),
        .I4(\seg_OBUF[2]_inst_i_43_n_6 ),
        .I5(\seg_OBUF[2]_inst_i_41_n_6 ),
        .O(\seg_OBUF[2]_inst_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[2]_inst_i_37 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_55_n_4 ),
        .I2(\seg_OBUF[2]_inst_i_54_n_4 ),
        .I3(\seg_OBUF[6]_inst_i_139_n_0 ),
        .I4(\seg_OBUF[2]_inst_i_43_n_7 ),
        .I5(\seg_OBUF[2]_inst_i_41_n_7 ),
        .O(\seg_OBUF[2]_inst_i_37_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_38 
       (.CI(\seg_OBUF[2]_inst_i_42_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_38_n_0 ,\NLW_seg_OBUF[2]_inst_i_38_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_114_n_0 ,\seg_OBUF[6]_inst_i_115_n_0 ,\seg_OBUF[6]_inst_i_116_n_0 ,\seg_OBUF[6]_inst_i_117_n_0 }),
        .O({\seg_OBUF[2]_inst_i_38_n_4 ,\seg_OBUF[2]_inst_i_38_n_5 ,\seg_OBUF[2]_inst_i_38_n_6 ,\seg_OBUF[2]_inst_i_38_n_7 }),
        .S({\seg_OBUF[2]_inst_i_56_n_0 ,\seg_OBUF[2]_inst_i_57_n_0 ,\seg_OBUF[2]_inst_i_58_n_0 ,\seg_OBUF[2]_inst_i_59_n_0 }));
  CARRY4 \seg_OBUF[2]_inst_i_39 
       (.CI(\seg_OBUF[2]_inst_i_41_n_0 ),
        .CO({\NLW_seg_OBUF[2]_inst_i_39_CO_UNCONNECTED [3:2],\seg_OBUF[2]_inst_i_39_n_2 ,\NLW_seg_OBUF[2]_inst_i_39_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\seg_OBUF[2]_inst_i_60_n_0 }),
        .O({\NLW_seg_OBUF[2]_inst_i_39_O_UNCONNECTED [3:1],\seg_OBUF[2]_inst_i_39_n_7 }),
        .S({1'b0,1'b0,1'b1,\seg_OBUF[2]_inst_i_61_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_40 
       (.CI(\seg_OBUF[2]_inst_i_43_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_40_n_0 ,\NLW_seg_OBUF[2]_inst_i_40_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_62_n_0 ,\seg_OBUF[2]_inst_i_63_n_0 ,\seg_OBUF[2]_inst_i_64_n_0 ,\seg_OBUF[2]_inst_i_65_n_0 }),
        .O({\seg_OBUF[2]_inst_i_40_n_4 ,\seg_OBUF[2]_inst_i_40_n_5 ,\seg_OBUF[2]_inst_i_40_n_6 ,\seg_OBUF[2]_inst_i_40_n_7 }),
        .S({\seg_OBUF[2]_inst_i_66_n_0 ,\seg_OBUF[2]_inst_i_67_n_0 ,\seg_OBUF[2]_inst_i_68_n_0 ,\seg_OBUF[2]_inst_i_69_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_41 
       (.CI(\seg_OBUF[2]_inst_i_54_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_41_n_0 ,\NLW_seg_OBUF[2]_inst_i_41_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_70_n_0 ,\seg_OBUF[2]_inst_i_71_n_0 ,\seg_OBUF[6]_inst_i_114_n_0 ,\seg_OBUF[6]_inst_i_115_n_0 }),
        .O({\seg_OBUF[2]_inst_i_41_n_4 ,\seg_OBUF[2]_inst_i_41_n_5 ,\seg_OBUF[2]_inst_i_41_n_6 ,\seg_OBUF[2]_inst_i_41_n_7 }),
        .S({\seg_OBUF[2]_inst_i_72_n_0 ,\seg_OBUF[2]_inst_i_73_n_0 ,\seg_OBUF[2]_inst_i_74_n_0 ,\seg_OBUF[2]_inst_i_75_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_42 
       (.CI(1'b0),
        .CO({\seg_OBUF[2]_inst_i_42_n_0 ,\NLW_seg_OBUF[2]_inst_i_42_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_148_n_0 ,\seg_OBUF[6]_inst_i_149_n_0 ,\seg_OBUF[2]_inst_i_76_n_0 ,1'b0}),
        .O({\seg_OBUF[2]_inst_i_42_n_4 ,\seg_OBUF[2]_inst_i_42_n_5 ,\seg_OBUF[2]_inst_i_42_n_6 ,\NLW_seg_OBUF[2]_inst_i_42_O_UNCONNECTED [0]}),
        .S({\seg_OBUF[2]_inst_i_77_n_0 ,\seg_OBUF[2]_inst_i_78_n_0 ,\seg_OBUF[2]_inst_i_79_n_0 ,\seg_OBUF[2]_inst_i_80_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_43 
       (.CI(\seg_OBUF[2]_inst_i_55_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_43_n_0 ,\NLW_seg_OBUF[2]_inst_i_43_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_81_n_0 ,\seg_OBUF[2]_inst_i_82_n_0 ,\seg_OBUF[2]_inst_i_83_n_0 ,\seg_OBUF[2]_inst_i_84_n_0 }),
        .O({\seg_OBUF[2]_inst_i_43_n_4 ,\seg_OBUF[2]_inst_i_43_n_5 ,\seg_OBUF[2]_inst_i_43_n_6 ,\seg_OBUF[2]_inst_i_43_n_7 }),
        .S({\seg_OBUF[2]_inst_i_85_n_0 ,\seg_OBUF[2]_inst_i_86_n_0 ,\seg_OBUF[2]_inst_i_87_n_0 ,\seg_OBUF[2]_inst_i_88_n_0 }));
  LUT5 #(
    .INIT(32'h87781EE1)) 
    \seg_OBUF[2]_inst_i_44 
       (.I0(\seg_OBUF[2]_inst_i_40_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_39_n_2 ),
        .I2(\seg_OBUF[2]_inst_i_89_n_7 ),
        .I3(\seg_OBUF[2]_inst_i_90_n_7 ),
        .I4(\seg_OBUF[2]_inst_i_38_n_4 ),
        .O(\seg_OBUF[2]_inst_i_44_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_45 
       (.CI(1'b0),
        .CO({\seg_OBUF[2]_inst_i_45_n_0 ,\NLW_seg_OBUF[2]_inst_i_45_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_91_n_0 ,\seg_OBUF[2]_inst_i_92_n_0 ,\seg_OBUF[2]_inst_i_93_n_0 ,1'b0}),
        .O(\NLW_seg_OBUF[2]_inst_i_45_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[2]_inst_i_94_n_0 ,\seg_OBUF[2]_inst_i_95_n_0 ,\seg_OBUF[2]_inst_i_96_n_0 ,\seg_OBUF[2]_inst_i_97_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[2]_inst_i_46 
       (.I0(\seg_OBUF[2]_inst_i_54_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_55_n_5 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[2]_inst_i_46_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[2]_inst_i_47 
       (.I0(\seg_OBUF[2]_inst_i_54_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_55_n_6 ),
        .I2(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[2]_inst_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[2]_inst_i_48 
       (.I0(\seg_OBUF[2]_inst_i_55_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_54_n_7 ),
        .O(\seg_OBUF[2]_inst_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[2]_inst_i_49 
       (.I0(\seg_OBUF[2]_inst_i_98_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_99_n_4 ),
        .O(\seg_OBUF[2]_inst_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[2]_inst_i_50 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_55_n_5 ),
        .I2(\seg_OBUF[2]_inst_i_54_n_5 ),
        .I3(\seg_OBUF[2]_inst_i_55_n_4 ),
        .I4(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I5(\seg_OBUF[2]_inst_i_54_n_4 ),
        .O(\seg_OBUF[2]_inst_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[2]_inst_i_51 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_55_n_6 ),
        .I2(\seg_OBUF[2]_inst_i_54_n_6 ),
        .I3(\seg_OBUF[2]_inst_i_55_n_5 ),
        .I4(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I5(\seg_OBUF[2]_inst_i_54_n_5 ),
        .O(\seg_OBUF[2]_inst_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \seg_OBUF[2]_inst_i_52 
       (.I0(\seg_OBUF[2]_inst_i_54_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_55_n_7 ),
        .I2(\seg_OBUF[2]_inst_i_55_n_6 ),
        .I3(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I4(\seg_OBUF[2]_inst_i_54_n_6 ),
        .O(\seg_OBUF[2]_inst_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[2]_inst_i_53 
       (.I0(\seg_OBUF[2]_inst_i_99_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_98_n_4 ),
        .I2(\seg_OBUF[2]_inst_i_55_n_7 ),
        .I3(\seg_OBUF[2]_inst_i_54_n_7 ),
        .O(\seg_OBUF[2]_inst_i_53_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_54 
       (.CI(\seg_OBUF[2]_inst_i_99_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_54_n_0 ,\NLW_seg_OBUF[2]_inst_i_54_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_208_n_0 ,\seg_OBUF[6]_inst_i_209_n_0 ,\seg_OBUF[2]_inst_i_100_n_0 ,\seg_OBUF[5]_inst_i_10_n_0 }),
        .O({\seg_OBUF[2]_inst_i_54_n_4 ,\seg_OBUF[2]_inst_i_54_n_5 ,\seg_OBUF[2]_inst_i_54_n_6 ,\seg_OBUF[2]_inst_i_54_n_7 }),
        .S({\seg_OBUF[2]_inst_i_101_n_0 ,\seg_OBUF[2]_inst_i_102_n_0 ,\seg_OBUF[2]_inst_i_103_n_0 ,\seg_OBUF[2]_inst_i_104_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_55 
       (.CI(\seg_OBUF[2]_inst_i_98_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_55_n_0 ,\NLW_seg_OBUF[2]_inst_i_55_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_105_n_0 ,\seg_OBUF[2]_inst_i_106_n_0 ,\seg_OBUF[2]_inst_i_107_n_0 ,\seg_OBUF[2]_inst_i_108_n_0 }),
        .O({\seg_OBUF[2]_inst_i_55_n_4 ,\seg_OBUF[2]_inst_i_55_n_5 ,\seg_OBUF[2]_inst_i_55_n_6 ,\seg_OBUF[2]_inst_i_55_n_7 }),
        .S({\seg_OBUF[2]_inst_i_109_n_0 ,\seg_OBUF[2]_inst_i_110_n_0 ,\seg_OBUF[2]_inst_i_111_n_0 ,\seg_OBUF[2]_inst_i_112_n_0 }));
  LUT6 #(
    .INIT(64'h342C0CCF2CCD0CCF)) 
    \seg_OBUF[2]_inst_i_56 
       (.I0(p_0_in[5]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(\seg_OBUF[2]_inst_i_56_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \seg_OBUF[2]_inst_i_57 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[2]_inst_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h5700FF57A8FF00A8)) 
    \seg_OBUF[2]_inst_i_58 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_116_n_0 ),
        .O(\seg_OBUF[2]_inst_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[2]_inst_i_59 
       (.I0(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_198_n_0 ),
        .O(\seg_OBUF[2]_inst_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h11E0)) 
    \seg_OBUF[2]_inst_i_6 
       (.I0(\seg_OBUF[2]_inst_i_8_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_8_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_19_n_7 ),
        .I3(\seg_OBUF[2]_inst_i_8_n_4 ),
        .O(\seg_OBUF[2]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \seg_OBUF[2]_inst_i_60 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .O(\seg_OBUF[2]_inst_i_60_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \seg_OBUF[2]_inst_i_61 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_61_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[2]_inst_i_62 
       (.I0(\seg_OBUF[2]_inst_i_113_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_62_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[2]_inst_i_63 
       (.I0(\seg_OBUF[2]_inst_i_113_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[2]_inst_i_64 
       (.I0(\seg_OBUF[2]_inst_i_113_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[2]_inst_i_65 
       (.I0(\seg_OBUF[2]_inst_i_113_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[2]_inst_i_66 
       (.I0(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_113_n_0 ),
        .O(\seg_OBUF[2]_inst_i_66_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[2]_inst_i_67 
       (.I0(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_113_n_0 ),
        .O(\seg_OBUF[2]_inst_i_67_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[2]_inst_i_68 
       (.I0(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_113_n_0 ),
        .O(\seg_OBUF[2]_inst_i_68_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[2]_inst_i_69 
       (.I0(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_113_n_0 ),
        .O(\seg_OBUF[2]_inst_i_69_n_0 ));
  LUT4 #(
    .INIT(16'h998C)) 
    \seg_OBUF[2]_inst_i_7 
       (.I0(\seg_OBUF[2]_inst_i_8_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_8_n_5 ),
        .I2(\seg_OBUF[2]_inst_i_8_n_4 ),
        .I3(\seg_OBUF[6]_inst_i_19_n_7 ),
        .O(\seg_OBUF[2]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9A18)) 
    \seg_OBUF[2]_inst_i_70 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .I3(p_0_in[7]),
        .O(\seg_OBUF[2]_inst_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB02C)) 
    \seg_OBUF[2]_inst_i_71 
       (.I0(p_0_in[6]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[7]),
        .I4(p_0_in[10]),
        .O(\seg_OBUF[2]_inst_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h8133)) 
    \seg_OBUF[2]_inst_i_72 
       (.I0(p_0_in[7]),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_72_n_0 ));
  LUT5 #(
    .INIT(32'hC80001FF)) 
    \seg_OBUF[2]_inst_i_73 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[2]_inst_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hF7E00F0FEF010F0F)) 
    \seg_OBUF[2]_inst_i_74 
       (.I0(p_0_in[5]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(\seg_OBUF[2]_inst_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h4440DDD5BBBF222A)) 
    \seg_OBUF[2]_inst_i_75 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .I4(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_115_n_0 ),
        .O(\seg_OBUF[2]_inst_i_75_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \seg_OBUF[2]_inst_i_76 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[2]_inst_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[2]_inst_i_77 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[2]_inst_i_77_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \seg_OBUF[2]_inst_i_78 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[2]_inst_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \seg_OBUF[2]_inst_i_79 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[2]_inst_i_79_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_8 
       (.CI(1'b0),
        .CO({\seg_OBUF[2]_inst_i_8_n_0 ,\NLW_seg_OBUF[2]_inst_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\seg_OBUF[5]_inst_i_19_n_0 ,\seg_OBUF[5]_inst_i_10_n_0 ,\seg_OBUF[5]_inst_i_7_n_0 ,\seg_OBUF[5]_inst_i_9_n_0 }),
        .O({\seg_OBUF[2]_inst_i_8_n_4 ,\seg_OBUF[2]_inst_i_8_n_5 ,\seg_OBUF[2]_inst_i_8_n_6 ,\seg_OBUF[2]_inst_i_8_n_7 }),
        .S({\seg_OBUF[2]_inst_i_11_n_0 ,\seg_OBUF[2]_inst_i_12_n_0 ,\seg_OBUF[2]_inst_i_13_n_0 ,\seg_OBUF[2]_inst_i_14_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[2]_inst_i_80 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[2]_inst_i_80_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[2]_inst_i_81 
       (.I0(\seg_OBUF[2]_inst_i_113_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[2]_inst_i_82 
       (.I0(\seg_OBUF[2]_inst_i_113_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_82_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[2]_inst_i_83 
       (.I0(\seg_OBUF[2]_inst_i_113_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_83_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[2]_inst_i_84 
       (.I0(\seg_OBUF[2]_inst_i_113_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_115_n_2 ),
        .O(\seg_OBUF[2]_inst_i_84_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[2]_inst_i_85 
       (.I0(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_113_n_0 ),
        .O(\seg_OBUF[2]_inst_i_85_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[2]_inst_i_86 
       (.I0(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_113_n_0 ),
        .O(\seg_OBUF[2]_inst_i_86_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[2]_inst_i_87 
       (.I0(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_113_n_0 ),
        .O(\seg_OBUF[2]_inst_i_87_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[2]_inst_i_88 
       (.I0(\seg_OBUF[2]_inst_i_115_n_2 ),
        .I1(\seg_OBUF[2]_inst_i_114_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_113_n_0 ),
        .O(\seg_OBUF[2]_inst_i_88_n_0 ));
  CARRY4 \seg_OBUF[2]_inst_i_89 
       (.CI(\seg_OBUF[2]_inst_i_38_n_0 ),
        .CO(\NLW_seg_OBUF[2]_inst_i_89_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_seg_OBUF[2]_inst_i_89_O_UNCONNECTED [3:1],\seg_OBUF[2]_inst_i_89_n_7 }),
        .S({1'b0,1'b0,1'b0,\seg_OBUF[2]_inst_i_116_n_0 }));
  LUT4 #(
    .INIT(16'h3364)) 
    \seg_OBUF[2]_inst_i_9 
       (.I0(\seg_OBUF[2]_inst_i_8_n_4 ),
        .I1(\seg_OBUF[2]_inst_i_8_n_6 ),
        .I2(\seg_OBUF[2]_inst_i_8_n_5 ),
        .I3(\seg_OBUF[6]_inst_i_19_n_7 ),
        .O(\seg_OBUF[2]_inst_i_9_n_0 ));
  CARRY4 \seg_OBUF[2]_inst_i_90 
       (.CI(\seg_OBUF[2]_inst_i_40_n_0 ),
        .CO(\NLW_seg_OBUF[2]_inst_i_90_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_seg_OBUF[2]_inst_i_90_O_UNCONNECTED [3:1],\seg_OBUF[2]_inst_i_90_n_7 }),
        .S({1'b0,1'b0,1'b0,\seg_OBUF[2]_inst_i_117_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[2]_inst_i_91 
       (.I0(\seg_OBUF[2]_inst_i_98_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_99_n_5 ),
        .O(\seg_OBUF[2]_inst_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[2]_inst_i_92 
       (.I0(\seg_OBUF[2]_inst_i_98_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_99_n_6 ),
        .O(\seg_OBUF[2]_inst_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[2]_inst_i_93 
       (.I0(\seg_OBUF[2]_inst_i_98_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_118_n_7 ),
        .O(\seg_OBUF[2]_inst_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[2]_inst_i_94 
       (.I0(\seg_OBUF[2]_inst_i_99_n_5 ),
        .I1(\seg_OBUF[2]_inst_i_98_n_5 ),
        .I2(\seg_OBUF[2]_inst_i_98_n_4 ),
        .I3(\seg_OBUF[2]_inst_i_99_n_4 ),
        .O(\seg_OBUF[2]_inst_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[2]_inst_i_95 
       (.I0(\seg_OBUF[2]_inst_i_99_n_6 ),
        .I1(\seg_OBUF[2]_inst_i_98_n_6 ),
        .I2(\seg_OBUF[2]_inst_i_98_n_5 ),
        .I3(\seg_OBUF[2]_inst_i_99_n_5 ),
        .O(\seg_OBUF[2]_inst_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[2]_inst_i_96 
       (.I0(\seg_OBUF[2]_inst_i_118_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_98_n_7 ),
        .I2(\seg_OBUF[2]_inst_i_98_n_6 ),
        .I3(\seg_OBUF[2]_inst_i_99_n_6 ),
        .O(\seg_OBUF[2]_inst_i_96_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[2]_inst_i_97 
       (.I0(\seg_OBUF[2]_inst_i_118_n_7 ),
        .I1(\seg_OBUF[2]_inst_i_98_n_7 ),
        .O(\seg_OBUF[2]_inst_i_97_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_98 
       (.CI(\seg_OBUF[2]_inst_i_119_n_0 ),
        .CO({\seg_OBUF[2]_inst_i_98_n_0 ,\NLW_seg_OBUF[2]_inst_i_98_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[2]_inst_i_120_n_0 ,\seg_OBUF[2]_inst_i_121_n_0 ,\seg_OBUF[2]_inst_i_122_n_0 ,\seg_OBUF[2]_inst_i_123_n_0 }),
        .O({\seg_OBUF[2]_inst_i_98_n_4 ,\seg_OBUF[2]_inst_i_98_n_5 ,\seg_OBUF[2]_inst_i_98_n_6 ,\seg_OBUF[2]_inst_i_98_n_7 }),
        .S({\seg_OBUF[2]_inst_i_124_n_0 ,\seg_OBUF[2]_inst_i_125_n_0 ,\seg_OBUF[2]_inst_i_126_n_0 ,\seg_OBUF[2]_inst_i_127_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[2]_inst_i_99 
       (.CI(1'b0),
        .CO({\seg_OBUF[2]_inst_i_99_n_0 ,\NLW_seg_OBUF[2]_inst_i_99_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[5]_inst_i_7_n_0 ,\seg_OBUF[5]_inst_i_9_n_0 ,1'b0,1'b1}),
        .O({\seg_OBUF[2]_inst_i_99_n_4 ,\seg_OBUF[2]_inst_i_99_n_5 ,\seg_OBUF[2]_inst_i_99_n_6 ,\NLW_seg_OBUF[2]_inst_i_99_O_UNCONNECTED [0]}),
        .S({\seg_OBUF[2]_inst_i_128_n_0 ,\seg_OBUF[2]_inst_i_129_n_0 ,\seg_OBUF[2]_inst_i_130_n_0 ,\seg_OBUF[2]_inst_i_131_n_0 }));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  LUT3 #(
    .INIT(8'h6F)) 
    \seg_OBUF[4]_inst_i_5 
       (.I0(p_0_in[1]),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I2(\amount_paid_reg_n_0_[0] ),
        .O(\seg_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9769D65FB6FA9697)) 
    \seg_OBUF[4]_inst_i_7 
       (.I0(p_0_in[1]),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\seg_OBUF[5]_inst_i_11_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_12_n_0 ),
        .O(\seg_OBUF[4]_inst_i_7_n_0 ));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  LUT6 #(
    .INIT(64'h79EF286719EB0861)) 
    \seg_OBUF[5]_inst_i_10 
       (.I0(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .I3(\seg_OBUF[5]_inst_i_26_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_27_n_0 ),
        .I5(p_0_in[3]),
        .O(\seg_OBUF[5]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A69596569A5A5)) 
    \seg_OBUF[5]_inst_i_11 
       (.I0(p_0_in[3]),
        .I1(\seg_OBUF[5]_inst_i_26_n_0 ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_27_n_0 ),
        .O(\seg_OBUF[5]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF108508F0EF5EF70)) 
    \seg_OBUF[5]_inst_i_12 
       (.I0(\seg_OBUF[5]_inst_i_27_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_26_n_0 ),
        .I2(p_0_in[3]),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I4(p_0_in[4]),
        .I5(p_0_in[5]),
        .O(\seg_OBUF[5]_inst_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \seg_OBUF[5]_inst_i_14 
       (.I0(\seg_OBUF[6]_inst_i_18_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_16_n_1 ),
        .I2(\seg_OBUF[6]_inst_i_15_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_14_n_5 ),
        .O(\seg_OBUF[5]_inst_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \seg_OBUF[5]_inst_i_15 
       (.I0(\seg_OBUF[6]_inst_i_18_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_16_n_1 ),
        .I2(\seg_OBUF[6]_inst_i_15_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_14_n_7 ),
        .O(\seg_OBUF[5]_inst_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \seg_OBUF[5]_inst_i_16 
       (.I0(\seg_OBUF[6]_inst_i_18_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_16_n_1 ),
        .I2(\seg_OBUF[6]_inst_i_15_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_14_n_6 ),
        .O(\seg_OBUF[5]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCAFFFFFFFAF)) 
    \seg_OBUF[5]_inst_i_18 
       (.I0(\seg_OBUF[6]_inst_i_14_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_18_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_14_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_15_n_6 ),
        .I4(\seg_OBUF[6]_inst_i_16_n_1 ),
        .I5(\seg_OBUF[6]_inst_i_18_n_6 ),
        .O(\seg_OBUF[5]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h79EF086719EF0861)) 
    \seg_OBUF[5]_inst_i_19 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(p_0_in[6]),
        .I2(p_0_in[5]),
        .I3(\seg_OBUF[5]_inst_i_29_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I5(p_0_in[4]),
        .O(\seg_OBUF[5]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h90F9F690)) 
    \seg_OBUF[5]_inst_i_2 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(p_0_in[2]),
        .I2(\amount_paid_reg_n_0_[0] ),
        .I3(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I4(p_0_in[1]),
        .O(\seg_OBUF[5]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \seg_OBUF[5]_inst_i_20 
       (.I0(p_0_in[5]),
        .I1(p_0_in[4]),
        .I2(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[5]_inst_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[5]_inst_i_21 
       (.I0(\amount_paid_reg_n_0_[4] ),
        .I1(\amount_paid_reg_n_0_[2] ),
        .O(\seg_OBUF[5]_inst_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[5]_inst_i_22 
       (.I0(\amount_paid_reg_n_0_[3] ),
        .I1(\amount_paid_reg_n_0_[1] ),
        .O(\seg_OBUF[5]_inst_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[5]_inst_i_23 
       (.I0(\amount_paid_reg_n_0_[2] ),
        .I1(\amount_paid_reg_n_0_[0] ),
        .O(\seg_OBUF[5]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h3B63C6DC2342C49C)) 
    \seg_OBUF[5]_inst_i_24 
       (.I0(p_0_in[6]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[5]),
        .O(\seg_OBUF[5]_inst_i_24_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[5]_inst_i_25 
       (.CI(\seg_OBUF[5]_inst_i_8_n_0 ),
        .CO({\seg_OBUF[5]_inst_i_25_n_0 ,\NLW_seg_OBUF[5]_inst_i_25_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\amount_paid_reg_n_0_[7] ,\amount_paid_reg_n_0_[6] ,\amount_paid_reg_n_0_[5] }),
        .O(p_0_in[8:5]),
        .S({\amount_paid_reg_n_0_[6] ,\seg_OBUF[5]_inst_i_31_n_0 ,\seg_OBUF[5]_inst_i_32_n_0 ,\seg_OBUF[5]_inst_i_33_n_0 }));
  LUT6 #(
    .INIT(64'h9966695656999569)) 
    \seg_OBUF[5]_inst_i_26 
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .I2(p_0_in[9]),
        .I3(p_0_in[8]),
        .I4(p_0_in[7]),
        .I5(p_0_in[10]),
        .O(\seg_OBUF[5]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hC69CB92B9CB92B62)) 
    \seg_OBUF[5]_inst_i_27 
       (.I0(p_0_in[5]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(\seg_OBUF[5]_inst_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h6B5A294A)) 
    \seg_OBUF[5]_inst_i_28 
       (.I0(p_0_in[10]),
        .I1(p_0_in[7]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .I4(p_0_in[6]),
        .O(\seg_OBUF[5]_inst_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h56959969)) 
    \seg_OBUF[5]_inst_i_29 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[5]_inst_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h044891522A4A0112)) 
    \seg_OBUF[5]_inst_i_3 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I3(p_0_in[1]),
        .I4(\seg_OBUF[5]_inst_i_11_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_12_n_0 ),
        .O(sel0[3]));
  CARRY4 \seg_OBUF[5]_inst_i_30 
       (.CI(\seg_OBUF[5]_inst_i_25_n_0 ),
        .CO({\NLW_seg_OBUF[5]_inst_i_30_CO_UNCONNECTED [3:2],p_0_in[10],\NLW_seg_OBUF[5]_inst_i_30_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_seg_OBUF[5]_inst_i_30_O_UNCONNECTED [3:1],p_0_in[9]}),
        .S({1'b0,1'b0,1'b1,\amount_paid_reg_n_0_[7] }));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[5]_inst_i_31 
       (.I0(\amount_paid_reg_n_0_[7] ),
        .I1(\amount_paid_reg_n_0_[5] ),
        .O(\seg_OBUF[5]_inst_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[5]_inst_i_32 
       (.I0(\amount_paid_reg_n_0_[6] ),
        .I1(\amount_paid_reg_n_0_[4] ),
        .O(\seg_OBUF[5]_inst_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[5]_inst_i_33 
       (.I0(\amount_paid_reg_n_0_[5] ),
        .I1(\amount_paid_reg_n_0_[3] ),
        .O(\seg_OBUF[5]_inst_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h79EF086719EF0861)) 
    \seg_OBUF[5]_inst_i_7 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(\seg_OBUF[5]_inst_i_20_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I5(p_0_in[2]),
        .O(\seg_OBUF[5]_inst_i_7_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[5]_inst_i_8 
       (.CI(1'b0),
        .CO({\seg_OBUF[5]_inst_i_8_n_0 ,\NLW_seg_OBUF[5]_inst_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\amount_paid_reg_n_0_[4] ,\amount_paid_reg_n_0_[3] ,\amount_paid_reg_n_0_[2] ,1'b0}),
        .O(p_0_in[4:1]),
        .S({\seg_OBUF[5]_inst_i_21_n_0 ,\seg_OBUF[5]_inst_i_22_n_0 ,\seg_OBUF[5]_inst_i_23_n_0 ,\amount_paid_reg_n_0_[1] }));
  LUT6 #(
    .INIT(64'h79EF286719EB0861)) 
    \seg_OBUF[5]_inst_i_9 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(\seg_OBUF[5]_inst_i_11_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_12_n_0 ),
        .I5(p_0_in[1]),
        .O(\seg_OBUF[5]_inst_i_9_n_0 ));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  LUT5 #(
    .INIT(32'h08030EF0)) 
    \seg_OBUF[6]_inst_i_100 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_100_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \seg_OBUF[6]_inst_i_101 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_101_n_0 ));
  LUT4 #(
    .INIT(16'h8133)) 
    \seg_OBUF[6]_inst_i_102 
       (.I0(p_0_in[7]),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_102_n_0 ));
  LUT5 #(
    .INIT(32'h38F0F1FF)) 
    \seg_OBUF[6]_inst_i_103 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_103_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \seg_OBUF[6]_inst_i_104 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .O(\seg_OBUF[6]_inst_i_104_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \seg_OBUF[6]_inst_i_105 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_105_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_106 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_106_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_107 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_107_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_108 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_108_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_109 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_109_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_110 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_110_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_111 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_111_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_112 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_112_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_113 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_113_n_0 ));
  LUT5 #(
    .INIT(32'h37EC010F)) 
    \seg_OBUF[6]_inst_i_114 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h003E7C001F7CF81F)) 
    \seg_OBUF[6]_inst_i_115 
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .I2(p_0_in[7]),
        .I3(p_0_in[10]),
        .I4(p_0_in[8]),
        .I5(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h55AAA59A9A5559A5)) 
    \seg_OBUF[6]_inst_i_116 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(p_0_in[6]),
        .I2(p_0_in[9]),
        .I3(p_0_in[8]),
        .I4(p_0_in[7]),
        .I5(p_0_in[10]),
        .O(\seg_OBUF[6]_inst_i_116_n_0 ));
  LUT6 #(
    .INIT(64'hB22BB2B2222BB222)) 
    \seg_OBUF[6]_inst_i_117 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(p_0_in[9]),
        .I3(p_0_in[8]),
        .I4(p_0_in[10]),
        .I5(p_0_in[7]),
        .O(\seg_OBUF[6]_inst_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h342C0CCF2CCD0CCF)) 
    \seg_OBUF[6]_inst_i_118 
       (.I0(p_0_in[5]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(\seg_OBUF[6]_inst_i_118_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \seg_OBUF[6]_inst_i_119 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h5700FF57A8FF00A8)) 
    \seg_OBUF[6]_inst_i_120 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_116_n_0 ),
        .O(\seg_OBUF[6]_inst_i_120_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[6]_inst_i_121 
       (.I0(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_198_n_0 ),
        .O(\seg_OBUF[6]_inst_i_121_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_122 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_122_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_123 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_123_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_124 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_124_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_125 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_125_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_126 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_126_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_127 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_127_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_128 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_128_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_129 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_129_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_130 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_130_n_0 ,\NLW_seg_OBUF[6]_inst_i_130_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_199_n_0 ,\seg_OBUF[6]_inst_i_200_n_0 ,\seg_OBUF[6]_inst_i_201_n_0 ,1'b0}),
        .O(\NLW_seg_OBUF[6]_inst_i_130_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_202_n_0 ,\seg_OBUF[6]_inst_i_203_n_0 ,\seg_OBUF[6]_inst_i_204_n_0 ,\seg_OBUF[6]_inst_i_205_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[6]_inst_i_131 
       (.I0(\seg_OBUF[6]_inst_i_140_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_141_n_5 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_131_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[6]_inst_i_132 
       (.I0(\seg_OBUF[6]_inst_i_140_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_141_n_6 ),
        .I2(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_132_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_133 
       (.I0(\seg_OBUF[6]_inst_i_141_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_140_n_7 ),
        .O(\seg_OBUF[6]_inst_i_133_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_134 
       (.I0(\seg_OBUF[6]_inst_i_206_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_207_n_4 ),
        .O(\seg_OBUF[6]_inst_i_134_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[6]_inst_i_135 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_141_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_140_n_5 ),
        .I3(\seg_OBUF[6]_inst_i_141_n_4 ),
        .I4(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_140_n_4 ),
        .O(\seg_OBUF[6]_inst_i_135_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[6]_inst_i_136 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_141_n_6 ),
        .I2(\seg_OBUF[6]_inst_i_140_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_141_n_5 ),
        .I4(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_140_n_5 ),
        .O(\seg_OBUF[6]_inst_i_136_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \seg_OBUF[6]_inst_i_137 
       (.I0(\seg_OBUF[6]_inst_i_140_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_141_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_141_n_6 ),
        .I3(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_140_n_6 ),
        .O(\seg_OBUF[6]_inst_i_137_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[6]_inst_i_138 
       (.I0(\seg_OBUF[6]_inst_i_207_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_206_n_4 ),
        .I2(\seg_OBUF[6]_inst_i_141_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_140_n_7 ),
        .O(\seg_OBUF[6]_inst_i_138_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_139 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_139_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_14 
       (.CI(1'b0),
        .CO(\NLW_seg_OBUF[6]_inst_i_14_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\seg_OBUF[6]_inst_i_14_n_4 ,\seg_OBUF[6]_inst_i_14_n_5 ,\seg_OBUF[6]_inst_i_14_n_6 ,\seg_OBUF[6]_inst_i_14_n_7 }),
        .S({\seg_OBUF[6]_inst_i_17_n_7 ,\seg_OBUF[6]_inst_i_18_n_4 ,\seg_OBUF[6]_inst_i_18_n_5 ,\seg_OBUF[6]_inst_i_21_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_140 
       (.CI(\seg_OBUF[6]_inst_i_207_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_140_n_0 ,\NLW_seg_OBUF[6]_inst_i_140_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_208_n_0 ,\seg_OBUF[6]_inst_i_209_n_0 ,\seg_OBUF[6]_inst_i_210_n_0 ,\seg_OBUF[5]_inst_i_10_n_0 }),
        .O({\seg_OBUF[6]_inst_i_140_n_4 ,\seg_OBUF[6]_inst_i_140_n_5 ,\seg_OBUF[6]_inst_i_140_n_6 ,\seg_OBUF[6]_inst_i_140_n_7 }),
        .S({\seg_OBUF[6]_inst_i_211_n_0 ,\seg_OBUF[6]_inst_i_212_n_0 ,\seg_OBUF[6]_inst_i_213_n_0 ,\seg_OBUF[6]_inst_i_214_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_141 
       (.CI(\seg_OBUF[6]_inst_i_206_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_141_n_0 ,\NLW_seg_OBUF[6]_inst_i_141_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_215_n_0 ,\seg_OBUF[6]_inst_i_216_n_0 ,\seg_OBUF[6]_inst_i_217_n_0 ,\seg_OBUF[6]_inst_i_218_n_0 }),
        .O({\seg_OBUF[6]_inst_i_141_n_4 ,\seg_OBUF[6]_inst_i_141_n_5 ,\seg_OBUF[6]_inst_i_141_n_6 ,\seg_OBUF[6]_inst_i_141_n_7 }),
        .S({\seg_OBUF[6]_inst_i_219_n_0 ,\seg_OBUF[6]_inst_i_220_n_0 ,\seg_OBUF[6]_inst_i_221_n_0 ,\seg_OBUF[6]_inst_i_222_n_0 }));
  LUT4 #(
    .INIT(16'h9A18)) 
    \seg_OBUF[6]_inst_i_142 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .I3(p_0_in[7]),
        .O(\seg_OBUF[6]_inst_i_142_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB02C)) 
    \seg_OBUF[6]_inst_i_143 
       (.I0(p_0_in[6]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[7]),
        .I4(p_0_in[10]),
        .O(\seg_OBUF[6]_inst_i_143_n_0 ));
  LUT4 #(
    .INIT(16'h8133)) 
    \seg_OBUF[6]_inst_i_144 
       (.I0(p_0_in[7]),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_144_n_0 ));
  LUT5 #(
    .INIT(32'hC80001FF)) 
    \seg_OBUF[6]_inst_i_145 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_145_n_0 ));
  LUT6 #(
    .INIT(64'hF7E00F0FEF010F0F)) 
    \seg_OBUF[6]_inst_i_146 
       (.I0(p_0_in[5]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(\seg_OBUF[6]_inst_i_146_n_0 ));
  LUT6 #(
    .INIT(64'h4440DDD5BBBF222A)) 
    \seg_OBUF[6]_inst_i_147 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .I4(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_115_n_0 ),
        .O(\seg_OBUF[6]_inst_i_147_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[6]_inst_i_148 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_28_n_0 ),
        .O(\seg_OBUF[6]_inst_i_148_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \seg_OBUF[6]_inst_i_149 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_149_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_15 
       (.CI(\seg_OBUF[6]_inst_i_22_n_0 ),
        .CO(\NLW_seg_OBUF[6]_inst_i_15_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_seg_OBUF[6]_inst_i_15_O_UNCONNECTED [3:2],\seg_OBUF[6]_inst_i_15_n_6 ,\seg_OBUF[6]_inst_i_15_n_7 }),
        .S({1'b0,1'b0,\seg_OBUF[6]_inst_i_23_n_6 ,\seg_OBUF[6]_inst_i_23_n_7 }));
  LUT2 #(
    .INIT(4'hB)) 
    \seg_OBUF[6]_inst_i_150 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_150_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[6]_inst_i_151 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[6]_inst_i_151_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \seg_OBUF[6]_inst_i_152 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_152_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \seg_OBUF[6]_inst_i_153 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_153_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_154 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_154_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_155 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_155_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_156 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_156_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_157 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_157_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_158 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_158_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_159 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_159_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_16 
       (.CI(\seg_OBUF[6]_inst_i_24_n_0 ),
        .CO({\NLW_seg_OBUF[6]_inst_i_16_CO_UNCONNECTED [3],\seg_OBUF[6]_inst_i_16_n_1 ,\NLW_seg_OBUF[6]_inst_i_16_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\seg_OBUF[6]_inst_i_15_n_7 ,\seg_OBUF[6]_inst_i_22_n_4 ,\seg_OBUF[6]_inst_i_22_n_5 }),
        .O(\NLW_seg_OBUF[6]_inst_i_16_O_UNCONNECTED [3:0]),
        .S({1'b0,\seg_OBUF[6]_inst_i_25_n_0 ,\seg_OBUF[6]_inst_i_26_n_0 ,\seg_OBUF[6]_inst_i_27_n_0 }));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_160 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_160_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_161 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_161_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_162 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_162_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_163 
       (.CI(\seg_OBUF[6]_inst_i_223_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_163_n_0 ,\NLW_seg_OBUF[6]_inst_i_163_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_164_n_6 ,\seg_OBUF[6]_inst_i_164_n_7 ,\seg_OBUF[6]_inst_i_224_n_4 ,\seg_OBUF[6]_inst_i_224_n_5 }),
        .O({\seg_OBUF[6]_inst_i_163_n_4 ,\seg_OBUF[6]_inst_i_163_n_5 ,\seg_OBUF[6]_inst_i_163_n_6 ,\seg_OBUF[6]_inst_i_163_n_7 }),
        .S({\seg_OBUF[6]_inst_i_225_n_0 ,\seg_OBUF[6]_inst_i_226_n_0 ,\seg_OBUF[6]_inst_i_227_n_0 ,\seg_OBUF[6]_inst_i_228_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_164 
       (.CI(\seg_OBUF[6]_inst_i_224_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_164_n_0 ,\NLW_seg_OBUF[6]_inst_i_164_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_229_n_0 ,\seg_OBUF[6]_inst_i_230_n_0 ,\seg_OBUF[6]_inst_i_231_n_0 ,\seg_OBUF[6]_inst_i_232_n_0 }),
        .O({\seg_OBUF[6]_inst_i_164_n_4 ,\seg_OBUF[6]_inst_i_164_n_5 ,\seg_OBUF[6]_inst_i_164_n_6 ,\seg_OBUF[6]_inst_i_164_n_7 }),
        .S({\seg_OBUF[6]_inst_i_233_n_0 ,\seg_OBUF[6]_inst_i_234_n_0 ,\seg_OBUF[6]_inst_i_235_n_0 ,\seg_OBUF[6]_inst_i_236_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_165 
       (.I0(\seg_OBUF[6]_inst_i_78_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_164_n_4 ),
        .O(\seg_OBUF[6]_inst_i_165_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_166 
       (.I0(\seg_OBUF[6]_inst_i_78_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_164_n_5 ),
        .O(\seg_OBUF[6]_inst_i_166_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_167 
       (.I0(\seg_OBUF[6]_inst_i_164_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_164_n_6 ),
        .O(\seg_OBUF[6]_inst_i_167_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_168 
       (.I0(\seg_OBUF[6]_inst_i_164_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_164_n_7 ),
        .O(\seg_OBUF[6]_inst_i_168_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_169 
       (.I0(\seg_OBUF[6]_inst_i_177_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_169_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_17 
       (.CI(\seg_OBUF[6]_inst_i_18_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_17_n_0 ,\NLW_seg_OBUF[6]_inst_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_28_n_0 ,\seg_OBUF[6]_inst_i_29_n_0 ,\seg_OBUF[6]_inst_i_30_n_0 ,\seg_OBUF[6]_inst_i_31_n_0 }),
        .O({\seg_OBUF[6]_inst_i_17_n_4 ,\seg_OBUF[6]_inst_i_17_n_5 ,\seg_OBUF[6]_inst_i_17_n_6 ,\seg_OBUF[6]_inst_i_17_n_7 }),
        .S({\seg_OBUF[6]_inst_i_32_n_0 ,\seg_OBUF[6]_inst_i_33_n_0 ,\seg_OBUF[6]_inst_i_34_n_0 ,\seg_OBUF[6]_inst_i_35_n_0 }));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_170 
       (.I0(\seg_OBUF[6]_inst_i_177_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_170_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_171 
       (.I0(\seg_OBUF[6]_inst_i_177_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_171_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_172 
       (.I0(\seg_OBUF[6]_inst_i_237_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_172_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_173 
       (.I0(\seg_OBUF[6]_inst_i_177_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_169_n_0 ),
        .O(\seg_OBUF[6]_inst_i_173_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_174 
       (.I0(\seg_OBUF[6]_inst_i_177_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_170_n_0 ),
        .O(\seg_OBUF[6]_inst_i_174_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_175 
       (.I0(\seg_OBUF[6]_inst_i_177_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_171_n_0 ),
        .O(\seg_OBUF[6]_inst_i_175_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_176 
       (.I0(\seg_OBUF[6]_inst_i_177_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_172_n_0 ),
        .O(\seg_OBUF[6]_inst_i_176_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_177 
       (.CI(\seg_OBUF[6]_inst_i_237_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_177_n_0 ,\NLW_seg_OBUF[6]_inst_i_177_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_238_n_0 ,\seg_OBUF[6]_inst_i_239_n_0 ,\seg_OBUF[6]_inst_i_240_n_0 ,\seg_OBUF[6]_inst_i_241_n_0 }),
        .O({\seg_OBUF[6]_inst_i_177_n_4 ,\seg_OBUF[6]_inst_i_177_n_5 ,\seg_OBUF[6]_inst_i_177_n_6 ,\seg_OBUF[6]_inst_i_177_n_7 }),
        .S({\seg_OBUF[6]_inst_i_242_n_0 ,\seg_OBUF[6]_inst_i_243_n_0 ,\seg_OBUF[6]_inst_i_244_n_0 ,\seg_OBUF[6]_inst_i_245_n_0 }));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_178 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_178_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_179 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_179_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_18 
       (.CI(\seg_OBUF[6]_inst_i_36_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_18_n_0 ,\NLW_seg_OBUF[6]_inst_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_37_n_0 ,\seg_OBUF[6]_inst_i_38_n_0 ,\seg_OBUF[6]_inst_i_39_n_0 ,\seg_OBUF[6]_inst_i_40_n_0 }),
        .O({\seg_OBUF[6]_inst_i_18_n_4 ,\seg_OBUF[6]_inst_i_18_n_5 ,\seg_OBUF[6]_inst_i_18_n_6 ,\NLW_seg_OBUF[6]_inst_i_18_O_UNCONNECTED [0]}),
        .S({\seg_OBUF[6]_inst_i_41_n_0 ,\seg_OBUF[6]_inst_i_42_n_0 ,\seg_OBUF[6]_inst_i_43_n_0 ,\seg_OBUF[6]_inst_i_44_n_0 }));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_180 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_180_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_181 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_181_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_182 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_182_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_183 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_183_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_184 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_184_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_185 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_185_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_186 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_186_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_187 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_187_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_188 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_188_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_189 
       (.CI(\seg_OBUF[6]_inst_i_246_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_189_n_0 ,\NLW_seg_OBUF[6]_inst_i_189_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_163_n_6 ,\seg_OBUF[6]_inst_i_163_n_7 ,\seg_OBUF[6]_inst_i_223_n_4 ,\seg_OBUF[6]_inst_i_223_n_5 }),
        .O(\NLW_seg_OBUF[6]_inst_i_189_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_247_n_0 ,\seg_OBUF[6]_inst_i_248_n_0 ,\seg_OBUF[6]_inst_i_249_n_0 ,\seg_OBUF[6]_inst_i_250_n_0 }));
  CARRY4 \seg_OBUF[6]_inst_i_19 
       (.CI(\seg_OBUF[2]_inst_i_8_n_0 ),
        .CO(\NLW_seg_OBUF[6]_inst_i_19_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_seg_OBUF[6]_inst_i_19_O_UNCONNECTED [3:1],\seg_OBUF[6]_inst_i_19_n_7 }),
        .S({1'b0,1'b0,1'b0,\seg_OBUF[6]_inst_i_45_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_190 
       (.I0(\seg_OBUF[6]_inst_i_77_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_77_n_5 ),
        .O(\seg_OBUF[6]_inst_i_190_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_191 
       (.I0(\seg_OBUF[6]_inst_i_77_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_77_n_6 ),
        .O(\seg_OBUF[6]_inst_i_191_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_192 
       (.I0(\seg_OBUF[6]_inst_i_163_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_77_n_7 ),
        .O(\seg_OBUF[6]_inst_i_192_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_193 
       (.I0(\seg_OBUF[6]_inst_i_163_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_163_n_4 ),
        .O(\seg_OBUF[6]_inst_i_193_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_194 
       (.CI(\seg_OBUF[6]_inst_i_251_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_194_n_0 ,\NLW_seg_OBUF[6]_inst_i_194_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\seg_OBUF[6]_inst_i_252_n_0 ,\seg_OBUF[6]_inst_i_253_n_0 ,\seg_OBUF[6]_inst_i_254_n_0 }),
        .O({\NLW_seg_OBUF[6]_inst_i_194_O_UNCONNECTED [3],\seg_OBUF[6]_inst_i_194_n_5 ,\seg_OBUF[6]_inst_i_194_n_6 ,\seg_OBUF[6]_inst_i_194_n_7 }),
        .S({1'b1,\seg_OBUF[6]_inst_i_255_n_0 ,\seg_OBUF[6]_inst_i_256_n_0 ,\seg_OBUF[6]_inst_i_257_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_195 
       (.CI(\seg_OBUF[6]_inst_i_258_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_195_n_0 ,\NLW_seg_OBUF[6]_inst_i_195_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\seg_OBUF[6]_inst_i_259_n_0 ,\seg_OBUF[6]_inst_i_260_n_0 ,\seg_OBUF[6]_inst_i_261_n_0 }),
        .O({\NLW_seg_OBUF[6]_inst_i_195_O_UNCONNECTED [3],\seg_OBUF[6]_inst_i_195_n_5 ,\seg_OBUF[6]_inst_i_195_n_6 ,\seg_OBUF[6]_inst_i_195_n_7 }),
        .S({1'b1,\seg_OBUF[6]_inst_i_262_n_0 ,\seg_OBUF[6]_inst_i_263_n_0 ,\seg_OBUF[6]_inst_i_264_n_0 }));
  CARRY4 \seg_OBUF[6]_inst_i_196 
       (.CI(\seg_OBUF[6]_inst_i_265_n_0 ),
        .CO({\NLW_seg_OBUF[6]_inst_i_196_CO_UNCONNECTED [3:2],\seg_OBUF[6]_inst_i_196_n_2 ,\NLW_seg_OBUF[6]_inst_i_196_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\seg_OBUF[6]_inst_i_266_n_0 }),
        .O({\NLW_seg_OBUF[6]_inst_i_196_O_UNCONNECTED [3:1],\seg_OBUF[6]_inst_i_196_n_7 }),
        .S({1'b0,1'b0,1'b1,\seg_OBUF[6]_inst_i_267_n_0 }));
  LUT4 #(
    .INIT(16'h9A18)) 
    \seg_OBUF[6]_inst_i_197 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .I3(p_0_in[7]),
        .O(\seg_OBUF[6]_inst_i_197_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \seg_OBUF[6]_inst_i_198 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .O(\seg_OBUF[6]_inst_i_198_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_199 
       (.I0(\seg_OBUF[6]_inst_i_206_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_207_n_5 ),
        .O(\seg_OBUF[6]_inst_i_199_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_200 
       (.I0(\seg_OBUF[6]_inst_i_206_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_207_n_6 ),
        .O(\seg_OBUF[6]_inst_i_200_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_201 
       (.I0(\seg_OBUF[6]_inst_i_206_n_7 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_201_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[6]_inst_i_202 
       (.I0(\seg_OBUF[6]_inst_i_207_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_206_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_206_n_4 ),
        .I3(\seg_OBUF[6]_inst_i_207_n_4 ),
        .O(\seg_OBUF[6]_inst_i_202_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[6]_inst_i_203 
       (.I0(\seg_OBUF[6]_inst_i_207_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_206_n_6 ),
        .I2(\seg_OBUF[6]_inst_i_206_n_5 ),
        .I3(\seg_OBUF[6]_inst_i_207_n_5 ),
        .O(\seg_OBUF[6]_inst_i_203_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[6]_inst_i_204 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_206_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_206_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_207_n_6 ),
        .O(\seg_OBUF[6]_inst_i_204_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_205 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_206_n_7 ),
        .O(\seg_OBUF[6]_inst_i_205_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_206 
       (.CI(\seg_OBUF[6]_inst_i_268_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_206_n_0 ,\NLW_seg_OBUF[6]_inst_i_206_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_269_n_0 ,\seg_OBUF[6]_inst_i_270_n_0 ,\seg_OBUF[6]_inst_i_271_n_0 ,\seg_OBUF[6]_inst_i_272_n_0 }),
        .O({\seg_OBUF[6]_inst_i_206_n_4 ,\seg_OBUF[6]_inst_i_206_n_5 ,\seg_OBUF[6]_inst_i_206_n_6 ,\seg_OBUF[6]_inst_i_206_n_7 }),
        .S({\seg_OBUF[6]_inst_i_273_n_0 ,\seg_OBUF[6]_inst_i_274_n_0 ,\seg_OBUF[6]_inst_i_275_n_0 ,\seg_OBUF[6]_inst_i_276_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_207 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_207_n_0 ,\NLW_seg_OBUF[6]_inst_i_207_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[5]_inst_i_7_n_0 ,\seg_OBUF[5]_inst_i_9_n_0 ,1'b0,1'b1}),
        .O({\seg_OBUF[6]_inst_i_207_n_4 ,\seg_OBUF[6]_inst_i_207_n_5 ,\seg_OBUF[6]_inst_i_207_n_6 ,\NLW_seg_OBUF[6]_inst_i_207_O_UNCONNECTED [0]}),
        .S({\seg_OBUF[6]_inst_i_277_n_0 ,\seg_OBUF[6]_inst_i_278_n_0 ,\seg_OBUF[6]_inst_i_279_n_0 ,\seg_OBUF[6]_inst_i_280_n_0 }));
  LUT6 #(
    .INIT(64'h8E88EE8EEEEE88EE)) 
    \seg_OBUF[6]_inst_i_208 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I2(p_0_in[7]),
        .I3(p_0_in[10]),
        .I4(p_0_in[8]),
        .I5(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_208_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \seg_OBUF[6]_inst_i_209 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_209_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[6]_inst_i_21 
       (.I0(\seg_OBUF[6]_inst_i_18_n_6 ),
        .O(\seg_OBUF[6]_inst_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \seg_OBUF[6]_inst_i_210 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[6]_inst_i_210_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \seg_OBUF[6]_inst_i_211 
       (.I0(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_198_n_0 ),
        .O(\seg_OBUF[6]_inst_i_211_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \seg_OBUF[6]_inst_i_212 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_212_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \seg_OBUF[6]_inst_i_213 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_213_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \seg_OBUF[6]_inst_i_214 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[6]_inst_i_214_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_215 
       (.I0(\seg_OBUF[6]_inst_i_194_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_215_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_216 
       (.I0(\seg_OBUF[6]_inst_i_194_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_216_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_217 
       (.I0(\seg_OBUF[6]_inst_i_194_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_217_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_218 
       (.I0(\seg_OBUF[6]_inst_i_251_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_218_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \seg_OBUF[6]_inst_i_219 
       (.I0(\seg_OBUF[6]_inst_i_194_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_219_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_22 
       (.CI(\seg_OBUF[6]_inst_i_46_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_22_n_0 ,\NLW_seg_OBUF[6]_inst_i_22_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_23_n_6 ,\seg_OBUF[6]_inst_i_23_n_7 ,\seg_OBUF[6]_inst_i_47_n_4 ,\seg_OBUF[6]_inst_i_47_n_5 }),
        .O({\seg_OBUF[6]_inst_i_22_n_4 ,\seg_OBUF[6]_inst_i_22_n_5 ,\seg_OBUF[6]_inst_i_22_n_6 ,\seg_OBUF[6]_inst_i_22_n_7 }),
        .S({\seg_OBUF[6]_inst_i_48_n_0 ,\seg_OBUF[6]_inst_i_49_n_0 ,\seg_OBUF[6]_inst_i_50_n_0 ,\seg_OBUF[6]_inst_i_51_n_0 }));
  LUT4 #(
    .INIT(16'hE817)) 
    \seg_OBUF[6]_inst_i_220 
       (.I0(\seg_OBUF[6]_inst_i_194_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_194_n_5 ),
        .O(\seg_OBUF[6]_inst_i_220_n_0 ));
  LUT4 #(
    .INIT(16'hE817)) 
    \seg_OBUF[6]_inst_i_221 
       (.I0(\seg_OBUF[6]_inst_i_194_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_194_n_6 ),
        .O(\seg_OBUF[6]_inst_i_221_n_0 ));
  LUT4 #(
    .INIT(16'hE817)) 
    \seg_OBUF[6]_inst_i_222 
       (.I0(\seg_OBUF[6]_inst_i_251_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_194_n_7 ),
        .O(\seg_OBUF[6]_inst_i_222_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_223 
       (.CI(\seg_OBUF[6]_inst_i_281_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_223_n_0 ,\NLW_seg_OBUF[6]_inst_i_223_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_224_n_6 ,\seg_OBUF[6]_inst_i_224_n_7 ,\seg_OBUF[6]_inst_i_282_n_4 ,\seg_OBUF[6]_inst_i_282_n_5 }),
        .O({\seg_OBUF[6]_inst_i_223_n_4 ,\seg_OBUF[6]_inst_i_223_n_5 ,\seg_OBUF[6]_inst_i_223_n_6 ,\seg_OBUF[6]_inst_i_223_n_7 }),
        .S({\seg_OBUF[6]_inst_i_283_n_0 ,\seg_OBUF[6]_inst_i_284_n_0 ,\seg_OBUF[6]_inst_i_285_n_0 ,\seg_OBUF[6]_inst_i_286_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_224 
       (.CI(\seg_OBUF[6]_inst_i_282_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_224_n_0 ,\NLW_seg_OBUF[6]_inst_i_224_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_287_n_0 ,\seg_OBUF[6]_inst_i_288_n_0 ,\seg_OBUF[6]_inst_i_289_n_0 ,\seg_OBUF[6]_inst_i_290_n_0 }),
        .O({\seg_OBUF[6]_inst_i_224_n_4 ,\seg_OBUF[6]_inst_i_224_n_5 ,\seg_OBUF[6]_inst_i_224_n_6 ,\seg_OBUF[6]_inst_i_224_n_7 }),
        .S({\seg_OBUF[6]_inst_i_291_n_0 ,\seg_OBUF[6]_inst_i_292_n_0 ,\seg_OBUF[6]_inst_i_293_n_0 ,\seg_OBUF[6]_inst_i_294_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_225 
       (.I0(\seg_OBUF[6]_inst_i_164_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_224_n_4 ),
        .O(\seg_OBUF[6]_inst_i_225_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_226 
       (.I0(\seg_OBUF[6]_inst_i_164_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_224_n_5 ),
        .O(\seg_OBUF[6]_inst_i_226_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_227 
       (.I0(\seg_OBUF[6]_inst_i_224_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_224_n_6 ),
        .O(\seg_OBUF[6]_inst_i_227_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_228 
       (.I0(\seg_OBUF[6]_inst_i_224_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_224_n_7 ),
        .O(\seg_OBUF[6]_inst_i_228_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_229 
       (.I0(\seg_OBUF[6]_inst_i_237_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_229_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_23 
       (.CI(\seg_OBUF[6]_inst_i_47_n_0 ),
        .CO(\NLW_seg_OBUF[6]_inst_i_23_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\seg_OBUF[6]_inst_i_52_n_0 }),
        .O({\NLW_seg_OBUF[6]_inst_i_23_O_UNCONNECTED [3:2],\seg_OBUF[6]_inst_i_23_n_6 ,\seg_OBUF[6]_inst_i_23_n_7 }),
        .S({1'b0,1'b0,\seg_OBUF[6]_inst_i_53_n_0 ,\seg_OBUF[6]_inst_i_54_n_0 }));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_230 
       (.I0(\seg_OBUF[6]_inst_i_237_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_230_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_231 
       (.I0(\seg_OBUF[6]_inst_i_237_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_231_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_232 
       (.I0(\seg_OBUF[6]_inst_i_295_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_232_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_233 
       (.I0(\seg_OBUF[6]_inst_i_237_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_229_n_0 ),
        .O(\seg_OBUF[6]_inst_i_233_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_234 
       (.I0(\seg_OBUF[6]_inst_i_237_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_230_n_0 ),
        .O(\seg_OBUF[6]_inst_i_234_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_235 
       (.I0(\seg_OBUF[6]_inst_i_237_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_231_n_0 ),
        .O(\seg_OBUF[6]_inst_i_235_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_236 
       (.I0(\seg_OBUF[6]_inst_i_237_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_232_n_0 ),
        .O(\seg_OBUF[6]_inst_i_236_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_237 
       (.CI(\seg_OBUF[6]_inst_i_295_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_237_n_0 ,\NLW_seg_OBUF[6]_inst_i_237_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_296_n_0 ,\seg_OBUF[6]_inst_i_297_n_0 ,\seg_OBUF[6]_inst_i_298_n_0 ,\seg_OBUF[6]_inst_i_299_n_0 }),
        .O({\seg_OBUF[6]_inst_i_237_n_4 ,\seg_OBUF[6]_inst_i_237_n_5 ,\seg_OBUF[6]_inst_i_237_n_6 ,\seg_OBUF[6]_inst_i_237_n_7 }),
        .S({\seg_OBUF[6]_inst_i_300_n_0 ,\seg_OBUF[6]_inst_i_301_n_0 ,\seg_OBUF[6]_inst_i_302_n_0 ,\seg_OBUF[6]_inst_i_303_n_0 }));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_238 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_238_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_239 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_239_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_24 
       (.CI(\seg_OBUF[6]_inst_i_55_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_24_n_0 ,\NLW_seg_OBUF[6]_inst_i_24_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_22_n_6 ,\seg_OBUF[6]_inst_i_22_n_7 ,\seg_OBUF[6]_inst_i_46_n_4 ,\seg_OBUF[6]_inst_i_46_n_5 }),
        .O(\NLW_seg_OBUF[6]_inst_i_24_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_56_n_0 ,\seg_OBUF[6]_inst_i_57_n_0 ,\seg_OBUF[6]_inst_i_58_n_0 ,\seg_OBUF[6]_inst_i_59_n_0 }));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_240 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_240_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_241 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_241_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_242 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_242_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_243 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_243_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_244 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_244_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_245 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_245_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_246 
       (.CI(\seg_OBUF[6]_inst_i_304_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_246_n_0 ,\NLW_seg_OBUF[6]_inst_i_246_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_223_n_6 ,\seg_OBUF[6]_inst_i_223_n_7 ,\seg_OBUF[6]_inst_i_281_n_4 ,\seg_OBUF[6]_inst_i_281_n_5 }),
        .O(\NLW_seg_OBUF[6]_inst_i_246_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_305_n_0 ,\seg_OBUF[6]_inst_i_306_n_0 ,\seg_OBUF[6]_inst_i_307_n_0 ,\seg_OBUF[6]_inst_i_308_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_247 
       (.I0(\seg_OBUF[6]_inst_i_163_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_163_n_5 ),
        .O(\seg_OBUF[6]_inst_i_247_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_248 
       (.I0(\seg_OBUF[6]_inst_i_163_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_163_n_6 ),
        .O(\seg_OBUF[6]_inst_i_248_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_249 
       (.I0(\seg_OBUF[6]_inst_i_223_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_163_n_7 ),
        .O(\seg_OBUF[6]_inst_i_249_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_25 
       (.I0(\seg_OBUF[6]_inst_i_15_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_15_n_6 ),
        .O(\seg_OBUF[6]_inst_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_250 
       (.I0(\seg_OBUF[6]_inst_i_223_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_223_n_4 ),
        .O(\seg_OBUF[6]_inst_i_250_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_251 
       (.CI(\seg_OBUF[6]_inst_i_309_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_251_n_0 ,\NLW_seg_OBUF[6]_inst_i_251_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_114_n_0 ,\seg_OBUF[6]_inst_i_115_n_0 ,\seg_OBUF[6]_inst_i_116_n_0 ,\seg_OBUF[6]_inst_i_117_n_0 }),
        .O({\seg_OBUF[6]_inst_i_251_n_4 ,\seg_OBUF[6]_inst_i_251_n_5 ,\seg_OBUF[6]_inst_i_251_n_6 ,\seg_OBUF[6]_inst_i_251_n_7 }),
        .S({\seg_OBUF[6]_inst_i_310_n_0 ,\seg_OBUF[6]_inst_i_311_n_0 ,\seg_OBUF[6]_inst_i_312_n_0 ,\seg_OBUF[6]_inst_i_313_n_0 }));
  LUT3 #(
    .INIT(8'hE0)) 
    \seg_OBUF[6]_inst_i_252 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .O(\seg_OBUF[6]_inst_i_252_n_0 ));
  LUT4 #(
    .INIT(16'h9A18)) 
    \seg_OBUF[6]_inst_i_253 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .I3(p_0_in[7]),
        .O(\seg_OBUF[6]_inst_i_253_n_0 ));
  LUT5 #(
    .INIT(32'h08030EF0)) 
    \seg_OBUF[6]_inst_i_254 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_254_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \seg_OBUF[6]_inst_i_255 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_255_n_0 ));
  LUT4 #(
    .INIT(16'h8133)) 
    \seg_OBUF[6]_inst_i_256 
       (.I0(p_0_in[7]),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_256_n_0 ));
  LUT5 #(
    .INIT(32'h38F0F1FF)) 
    \seg_OBUF[6]_inst_i_257 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_257_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_258 
       (.CI(\seg_OBUF[6]_inst_i_314_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_258_n_0 ,\NLW_seg_OBUF[6]_inst_i_258_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_114_n_0 ,\seg_OBUF[6]_inst_i_115_n_0 ,\seg_OBUF[6]_inst_i_116_n_0 ,\seg_OBUF[6]_inst_i_117_n_0 }),
        .O({\seg_OBUF[6]_inst_i_258_n_4 ,\seg_OBUF[6]_inst_i_258_n_5 ,\seg_OBUF[6]_inst_i_258_n_6 ,\seg_OBUF[6]_inst_i_258_n_7 }),
        .S({\seg_OBUF[6]_inst_i_315_n_0 ,\seg_OBUF[6]_inst_i_316_n_0 ,\seg_OBUF[6]_inst_i_317_n_0 ,\seg_OBUF[6]_inst_i_318_n_0 }));
  LUT3 #(
    .INIT(8'hE0)) 
    \seg_OBUF[6]_inst_i_259 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .O(\seg_OBUF[6]_inst_i_259_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_26 
       (.I0(\seg_OBUF[6]_inst_i_22_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_15_n_7 ),
        .O(\seg_OBUF[6]_inst_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9A18)) 
    \seg_OBUF[6]_inst_i_260 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .I3(p_0_in[7]),
        .O(\seg_OBUF[6]_inst_i_260_n_0 ));
  LUT5 #(
    .INIT(32'h08030EF0)) 
    \seg_OBUF[6]_inst_i_261 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_261_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \seg_OBUF[6]_inst_i_262 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_262_n_0 ));
  LUT4 #(
    .INIT(16'h8133)) 
    \seg_OBUF[6]_inst_i_263 
       (.I0(p_0_in[7]),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_263_n_0 ));
  LUT5 #(
    .INIT(32'h38F0F1FF)) 
    \seg_OBUF[6]_inst_i_264 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_264_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_265 
       (.CI(\seg_OBUF[6]_inst_i_319_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_265_n_0 ,\NLW_seg_OBUF[6]_inst_i_265_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_320_n_0 ,\seg_OBUF[6]_inst_i_321_n_0 ,\seg_OBUF[6]_inst_i_114_n_0 ,\seg_OBUF[6]_inst_i_115_n_0 }),
        .O({\seg_OBUF[6]_inst_i_265_n_4 ,\seg_OBUF[6]_inst_i_265_n_5 ,\seg_OBUF[6]_inst_i_265_n_6 ,\seg_OBUF[6]_inst_i_265_n_7 }),
        .S({\seg_OBUF[6]_inst_i_322_n_0 ,\seg_OBUF[6]_inst_i_323_n_0 ,\seg_OBUF[6]_inst_i_324_n_0 ,\seg_OBUF[6]_inst_i_325_n_0 }));
  LUT3 #(
    .INIT(8'hE0)) 
    \seg_OBUF[6]_inst_i_266 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .O(\seg_OBUF[6]_inst_i_266_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \seg_OBUF[6]_inst_i_267 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_267_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_268 
       (.CI(\seg_OBUF[6]_inst_i_326_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_268_n_0 ,\NLW_seg_OBUF[6]_inst_i_268_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_327_n_0 ,\seg_OBUF[6]_inst_i_328_n_0 ,\seg_OBUF[6]_inst_i_329_n_0 ,\seg_OBUF[6]_inst_i_330_n_0 }),
        .O(\NLW_seg_OBUF[6]_inst_i_268_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_331_n_0 ,\seg_OBUF[6]_inst_i_332_n_0 ,\seg_OBUF[6]_inst_i_333_n_0 ,\seg_OBUF[6]_inst_i_334_n_0 }));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_269 
       (.I0(\seg_OBUF[6]_inst_i_251_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_269_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_27 
       (.I0(\seg_OBUF[6]_inst_i_22_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_22_n_4 ),
        .O(\seg_OBUF[6]_inst_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_270 
       (.I0(\seg_OBUF[6]_inst_i_251_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_270_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[6]_inst_i_271 
       (.I0(\seg_OBUF[6]_inst_i_196_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_251_n_7 ),
        .O(\seg_OBUF[6]_inst_i_271_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[6]_inst_i_272 
       (.I0(\seg_OBUF[6]_inst_i_265_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_309_n_4 ),
        .O(\seg_OBUF[6]_inst_i_272_n_0 ));
  LUT4 #(
    .INIT(16'hE817)) 
    \seg_OBUF[6]_inst_i_273 
       (.I0(\seg_OBUF[6]_inst_i_251_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_251_n_4 ),
        .O(\seg_OBUF[6]_inst_i_273_n_0 ));
  LUT4 #(
    .INIT(16'hE817)) 
    \seg_OBUF[6]_inst_i_274 
       (.I0(\seg_OBUF[6]_inst_i_251_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_251_n_5 ),
        .O(\seg_OBUF[6]_inst_i_274_n_0 ));
  LUT5 #(
    .INIT(32'h78E1871E)) 
    \seg_OBUF[6]_inst_i_275 
       (.I0(\seg_OBUF[6]_inst_i_251_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_196_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_251_n_6 ),
        .O(\seg_OBUF[6]_inst_i_275_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[6]_inst_i_276 
       (.I0(\seg_OBUF[6]_inst_i_309_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_265_n_4 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_251_n_7 ),
        .O(\seg_OBUF[6]_inst_i_276_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_277 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[6]_inst_i_277_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_278 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[6]_inst_i_278_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[6]_inst_i_279 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_279_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[6]_inst_i_28 
       (.I0(\seg_OBUF[6]_inst_i_60_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_62_n_5 ),
        .O(\seg_OBUF[6]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h79EF286719EB0861)) 
    \seg_OBUF[6]_inst_i_280 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(\seg_OBUF[5]_inst_i_11_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_12_n_0 ),
        .I5(p_0_in[1]),
        .O(\seg_OBUF[6]_inst_i_280_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_281 
       (.CI(\seg_OBUF[6]_inst_i_335_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_281_n_0 ,\NLW_seg_OBUF[6]_inst_i_281_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_282_n_6 ,\seg_OBUF[6]_inst_i_282_n_7 ,\seg_OBUF[6]_inst_i_17_n_4 ,\seg_OBUF[6]_inst_i_17_n_5 }),
        .O({\seg_OBUF[6]_inst_i_281_n_4 ,\seg_OBUF[6]_inst_i_281_n_5 ,\seg_OBUF[6]_inst_i_281_n_6 ,\seg_OBUF[6]_inst_i_281_n_7 }),
        .S({\seg_OBUF[6]_inst_i_336_n_0 ,\seg_OBUF[6]_inst_i_337_n_0 ,\seg_OBUF[6]_inst_i_338_n_0 ,\seg_OBUF[6]_inst_i_339_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_282 
       (.CI(\seg_OBUF[6]_inst_i_17_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_282_n_0 ,\NLW_seg_OBUF[6]_inst_i_282_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_340_n_0 ,\seg_OBUF[6]_inst_i_341_n_0 ,\seg_OBUF[6]_inst_i_342_n_0 ,\seg_OBUF[6]_inst_i_343_n_0 }),
        .O({\seg_OBUF[6]_inst_i_282_n_4 ,\seg_OBUF[6]_inst_i_282_n_5 ,\seg_OBUF[6]_inst_i_282_n_6 ,\seg_OBUF[6]_inst_i_282_n_7 }),
        .S({\seg_OBUF[6]_inst_i_344_n_0 ,\seg_OBUF[6]_inst_i_345_n_0 ,\seg_OBUF[6]_inst_i_346_n_0 ,\seg_OBUF[6]_inst_i_347_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_283 
       (.I0(\seg_OBUF[6]_inst_i_224_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_282_n_4 ),
        .O(\seg_OBUF[6]_inst_i_283_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_284 
       (.I0(\seg_OBUF[6]_inst_i_224_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_282_n_5 ),
        .O(\seg_OBUF[6]_inst_i_284_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_285 
       (.I0(\seg_OBUF[6]_inst_i_282_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_282_n_6 ),
        .O(\seg_OBUF[6]_inst_i_285_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_286 
       (.I0(\seg_OBUF[6]_inst_i_282_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_282_n_7 ),
        .O(\seg_OBUF[6]_inst_i_286_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_287 
       (.I0(\seg_OBUF[6]_inst_i_295_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_287_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_288 
       (.I0(\seg_OBUF[6]_inst_i_295_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_288_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_289 
       (.I0(\seg_OBUF[6]_inst_i_295_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_289_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[6]_inst_i_29 
       (.I0(\seg_OBUF[6]_inst_i_60_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_62_n_6 ),
        .O(\seg_OBUF[6]_inst_i_29_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_290 
       (.I0(\seg_OBUF[6]_inst_i_348_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_290_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_291 
       (.I0(\seg_OBUF[6]_inst_i_295_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_287_n_0 ),
        .O(\seg_OBUF[6]_inst_i_291_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_292 
       (.I0(\seg_OBUF[6]_inst_i_295_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_288_n_0 ),
        .O(\seg_OBUF[6]_inst_i_292_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_293 
       (.I0(\seg_OBUF[6]_inst_i_295_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_289_n_0 ),
        .O(\seg_OBUF[6]_inst_i_293_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_294 
       (.I0(\seg_OBUF[6]_inst_i_295_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_290_n_0 ),
        .O(\seg_OBUF[6]_inst_i_294_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_295 
       (.CI(\seg_OBUF[6]_inst_i_348_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_295_n_0 ,\NLW_seg_OBUF[6]_inst_i_295_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_349_n_0 ,\seg_OBUF[6]_inst_i_350_n_0 ,\seg_OBUF[6]_inst_i_351_n_0 ,\seg_OBUF[6]_inst_i_352_n_0 }),
        .O({\seg_OBUF[6]_inst_i_295_n_4 ,\seg_OBUF[6]_inst_i_295_n_5 ,\seg_OBUF[6]_inst_i_295_n_6 ,\seg_OBUF[6]_inst_i_295_n_7 }),
        .S({\seg_OBUF[6]_inst_i_353_n_0 ,\seg_OBUF[6]_inst_i_354_n_0 ,\seg_OBUF[6]_inst_i_355_n_0 ,\seg_OBUF[6]_inst_i_356_n_0 }));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_296 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_296_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_297 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_297_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_298 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_298_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_299 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_299_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[6]_inst_i_30 
       (.I0(\seg_OBUF[6]_inst_i_60_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_62_n_7 ),
        .O(\seg_OBUF[6]_inst_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_300 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_300_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_301 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_301_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_302 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_302_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_303 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_303_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_304 
       (.CI(\seg_OBUF[6]_inst_i_357_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_304_n_0 ,\NLW_seg_OBUF[6]_inst_i_304_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_358_n_0 ,\seg_OBUF[6]_inst_i_359_n_0 ,\seg_OBUF[6]_inst_i_360_n_0 ,\seg_OBUF[6]_inst_i_361_n_0 }),
        .O(\NLW_seg_OBUF[6]_inst_i_304_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_362_n_0 ,\seg_OBUF[6]_inst_i_363_n_0 ,\seg_OBUF[6]_inst_i_364_n_0 ,\seg_OBUF[6]_inst_i_365_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_305 
       (.I0(\seg_OBUF[6]_inst_i_223_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_223_n_5 ),
        .O(\seg_OBUF[6]_inst_i_305_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_306 
       (.I0(\seg_OBUF[6]_inst_i_223_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_223_n_6 ),
        .O(\seg_OBUF[6]_inst_i_306_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_307 
       (.I0(\seg_OBUF[6]_inst_i_281_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_223_n_7 ),
        .O(\seg_OBUF[6]_inst_i_307_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_308 
       (.I0(\seg_OBUF[6]_inst_i_281_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_281_n_4 ),
        .O(\seg_OBUF[6]_inst_i_308_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_309 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_309_n_0 ,\NLW_seg_OBUF[6]_inst_i_309_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_148_n_0 ,\seg_OBUF[6]_inst_i_149_n_0 ,\seg_OBUF[6]_inst_i_366_n_0 ,1'b0}),
        .O({\seg_OBUF[6]_inst_i_309_n_4 ,\seg_OBUF[6]_inst_i_309_n_5 ,\seg_OBUF[6]_inst_i_309_n_6 ,\NLW_seg_OBUF[6]_inst_i_309_O_UNCONNECTED [0]}),
        .S({\seg_OBUF[6]_inst_i_367_n_0 ,\seg_OBUF[6]_inst_i_368_n_0 ,\seg_OBUF[6]_inst_i_369_n_0 ,\seg_OBUF[6]_inst_i_370_n_0 }));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[6]_inst_i_31 
       (.I0(\seg_OBUF[6]_inst_i_63_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_64_n_4 ),
        .O(\seg_OBUF[6]_inst_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h342C0CCF2CCD0CCF)) 
    \seg_OBUF[6]_inst_i_310 
       (.I0(p_0_in[5]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(\seg_OBUF[6]_inst_i_310_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \seg_OBUF[6]_inst_i_311 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_311_n_0 ));
  LUT6 #(
    .INIT(64'h5700FF57A8FF00A8)) 
    \seg_OBUF[6]_inst_i_312 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_116_n_0 ),
        .O(\seg_OBUF[6]_inst_i_312_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[6]_inst_i_313 
       (.I0(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_198_n_0 ),
        .O(\seg_OBUF[6]_inst_i_313_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_314 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_314_n_0 ,\NLW_seg_OBUF[6]_inst_i_314_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_148_n_0 ,\seg_OBUF[6]_inst_i_149_n_0 ,\seg_OBUF[6]_inst_i_371_n_0 ,1'b0}),
        .O(\NLW_seg_OBUF[6]_inst_i_314_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_372_n_0 ,\seg_OBUF[6]_inst_i_373_n_0 ,\seg_OBUF[6]_inst_i_374_n_0 ,\seg_OBUF[6]_inst_i_375_n_0 }));
  LUT6 #(
    .INIT(64'h342C0CCF2CCD0CCF)) 
    \seg_OBUF[6]_inst_i_315 
       (.I0(p_0_in[5]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(\seg_OBUF[6]_inst_i_315_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \seg_OBUF[6]_inst_i_316 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_316_n_0 ));
  LUT6 #(
    .INIT(64'h5700FF57A8FF00A8)) 
    \seg_OBUF[6]_inst_i_317 
       (.I0(p_0_in[10]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_116_n_0 ),
        .O(\seg_OBUF[6]_inst_i_317_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[6]_inst_i_318 
       (.I0(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_198_n_0 ),
        .O(\seg_OBUF[6]_inst_i_318_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_319 
       (.CI(\seg_OBUF[6]_inst_i_376_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_319_n_0 ,\NLW_seg_OBUF[6]_inst_i_319_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_208_n_0 ,\seg_OBUF[6]_inst_i_209_n_0 ,\seg_OBUF[6]_inst_i_377_n_0 ,\seg_OBUF[5]_inst_i_10_n_0 }),
        .O({\seg_OBUF[6]_inst_i_319_n_4 ,\seg_OBUF[6]_inst_i_319_n_5 ,\seg_OBUF[6]_inst_i_319_n_6 ,\seg_OBUF[6]_inst_i_319_n_7 }),
        .S({\seg_OBUF[6]_inst_i_378_n_0 ,\seg_OBUF[6]_inst_i_379_n_0 ,\seg_OBUF[6]_inst_i_380_n_0 ,\seg_OBUF[6]_inst_i_381_n_0 }));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_32 
       (.I0(\seg_OBUF[6]_inst_i_62_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_28_n_0 ),
        .O(\seg_OBUF[6]_inst_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9A18)) 
    \seg_OBUF[6]_inst_i_320 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .I3(p_0_in[7]),
        .O(\seg_OBUF[6]_inst_i_320_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB02C)) 
    \seg_OBUF[6]_inst_i_321 
       (.I0(p_0_in[6]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[7]),
        .I4(p_0_in[10]),
        .O(\seg_OBUF[6]_inst_i_321_n_0 ));
  LUT4 #(
    .INIT(16'h8133)) 
    \seg_OBUF[6]_inst_i_322 
       (.I0(p_0_in[7]),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_322_n_0 ));
  LUT5 #(
    .INIT(32'hC80001FF)) 
    \seg_OBUF[6]_inst_i_323 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_323_n_0 ));
  LUT6 #(
    .INIT(64'hF7E00F0FEF010F0F)) 
    \seg_OBUF[6]_inst_i_324 
       (.I0(p_0_in[5]),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[10]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(\seg_OBUF[6]_inst_i_324_n_0 ));
  LUT6 #(
    .INIT(64'h4440DDD5BBBF222A)) 
    \seg_OBUF[6]_inst_i_325 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .I4(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_115_n_0 ),
        .O(\seg_OBUF[6]_inst_i_325_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_326 
       (.CI(\seg_OBUF[6]_inst_i_382_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_326_n_0 ,\NLW_seg_OBUF[6]_inst_i_326_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_383_n_0 ,\seg_OBUF[6]_inst_i_384_n_0 ,\seg_OBUF[6]_inst_i_385_n_0 ,\seg_OBUF[6]_inst_i_386_n_0 }),
        .O(\NLW_seg_OBUF[6]_inst_i_326_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_387_n_0 ,\seg_OBUF[6]_inst_i_388_n_0 ,\seg_OBUF[6]_inst_i_389_n_0 ,\seg_OBUF[6]_inst_i_390_n_0 }));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[6]_inst_i_327 
       (.I0(\seg_OBUF[6]_inst_i_265_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_309_n_5 ),
        .O(\seg_OBUF[6]_inst_i_327_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[6]_inst_i_328 
       (.I0(\seg_OBUF[6]_inst_i_265_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_309_n_6 ),
        .O(\seg_OBUF[6]_inst_i_328_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[6]_inst_i_329 
       (.I0(\seg_OBUF[6]_inst_i_265_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_391_n_7 ),
        .O(\seg_OBUF[6]_inst_i_329_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h965A5A69)) 
    \seg_OBUF[6]_inst_i_33 
       (.I0(\seg_OBUF[6]_inst_i_60_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_62_n_5 ),
        .I3(\seg_OBUF[6]_inst_i_62_n_6 ),
        .I4(\seg_OBUF[6]_inst_i_60_n_6 ),
        .O(\seg_OBUF[6]_inst_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \seg_OBUF[6]_inst_i_330 
       (.I0(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_319_n_4 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[6]_inst_i_330_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[6]_inst_i_331 
       (.I0(\seg_OBUF[6]_inst_i_309_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_265_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_265_n_4 ),
        .I3(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_309_n_4 ),
        .O(\seg_OBUF[6]_inst_i_331_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[6]_inst_i_332 
       (.I0(\seg_OBUF[6]_inst_i_309_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_265_n_6 ),
        .I2(\seg_OBUF[6]_inst_i_265_n_5 ),
        .I3(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_309_n_5 ),
        .O(\seg_OBUF[6]_inst_i_332_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[6]_inst_i_333 
       (.I0(\seg_OBUF[6]_inst_i_391_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_265_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_265_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_309_n_6 ),
        .O(\seg_OBUF[6]_inst_i_333_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[6]_inst_i_334 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_319_n_4 ),
        .I2(\seg_OBUF[6]_inst_i_265_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_391_n_7 ),
        .O(\seg_OBUF[6]_inst_i_334_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_335 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_335_n_0 ,\NLW_seg_OBUF[6]_inst_i_335_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_17_n_6 ,\seg_OBUF[6]_inst_i_17_n_7 ,\seg_OBUF[6]_inst_i_18_n_4 ,1'b0}),
        .O({\seg_OBUF[6]_inst_i_335_n_4 ,\seg_OBUF[6]_inst_i_335_n_5 ,\seg_OBUF[6]_inst_i_335_n_6 ,\seg_OBUF[6]_inst_i_335_n_7 }),
        .S({\seg_OBUF[6]_inst_i_392_n_0 ,\seg_OBUF[6]_inst_i_393_n_0 ,\seg_OBUF[6]_inst_i_394_n_0 ,\seg_OBUF[6]_inst_i_18_n_5 }));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_336 
       (.I0(\seg_OBUF[6]_inst_i_282_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_17_n_4 ),
        .O(\seg_OBUF[6]_inst_i_336_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_337 
       (.I0(\seg_OBUF[6]_inst_i_282_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_17_n_5 ),
        .O(\seg_OBUF[6]_inst_i_337_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_338 
       (.I0(\seg_OBUF[6]_inst_i_17_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_17_n_6 ),
        .O(\seg_OBUF[6]_inst_i_338_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_339 
       (.I0(\seg_OBUF[6]_inst_i_17_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_17_n_7 ),
        .O(\seg_OBUF[6]_inst_i_339_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[6]_inst_i_34 
       (.I0(\seg_OBUF[6]_inst_i_62_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_60_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I4(\seg_OBUF[6]_inst_i_62_n_6 ),
        .O(\seg_OBUF[6]_inst_i_34_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_340 
       (.I0(\seg_OBUF[6]_inst_i_348_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_340_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_341 
       (.I0(\seg_OBUF[6]_inst_i_348_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_341_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_342 
       (.I0(\seg_OBUF[6]_inst_i_348_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_342_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_343 
       (.I0(\seg_OBUF[6]_inst_i_62_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_343_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_344 
       (.I0(\seg_OBUF[6]_inst_i_348_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_340_n_0 ),
        .O(\seg_OBUF[6]_inst_i_344_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_345 
       (.I0(\seg_OBUF[6]_inst_i_348_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_341_n_0 ),
        .O(\seg_OBUF[6]_inst_i_345_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_346 
       (.I0(\seg_OBUF[6]_inst_i_348_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_342_n_0 ),
        .O(\seg_OBUF[6]_inst_i_346_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_347 
       (.I0(\seg_OBUF[6]_inst_i_348_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_343_n_0 ),
        .O(\seg_OBUF[6]_inst_i_347_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_348 
       (.CI(\seg_OBUF[6]_inst_i_62_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_348_n_0 ,\NLW_seg_OBUF[6]_inst_i_348_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_395_n_0 ,\seg_OBUF[6]_inst_i_396_n_0 ,\seg_OBUF[6]_inst_i_397_n_0 ,\seg_OBUF[6]_inst_i_398_n_0 }),
        .O({\seg_OBUF[6]_inst_i_348_n_4 ,\seg_OBUF[6]_inst_i_348_n_5 ,\seg_OBUF[6]_inst_i_348_n_6 ,\seg_OBUF[6]_inst_i_348_n_7 }),
        .S({\seg_OBUF[6]_inst_i_399_n_0 ,\seg_OBUF[6]_inst_i_400_n_0 ,\seg_OBUF[6]_inst_i_401_n_0 ,\seg_OBUF[6]_inst_i_402_n_0 }));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_349 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_349_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[6]_inst_i_35 
       (.I0(\seg_OBUF[6]_inst_i_64_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_63_n_4 ),
        .I2(\seg_OBUF[6]_inst_i_60_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I4(\seg_OBUF[6]_inst_i_62_n_7 ),
        .O(\seg_OBUF[6]_inst_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_350 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_350_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_351 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_351_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_352 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_352_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_353 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_353_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_354 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_354_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_355 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_355_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_356 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_356_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_357 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_357_n_0 ,\NLW_seg_OBUF[6]_inst_i_357_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_403_n_0 ,\seg_OBUF[6]_inst_i_404_n_0 ,\seg_OBUF[6]_inst_i_405_n_0 ,1'b0}),
        .O(\NLW_seg_OBUF[6]_inst_i_357_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_406_n_0 ,\seg_OBUF[6]_inst_i_407_n_0 ,\seg_OBUF[6]_inst_i_408_n_0 ,\seg_OBUF[6]_inst_i_409_n_0 }));
  LUT4 #(
    .INIT(16'h222A)) 
    \seg_OBUF[6]_inst_i_358 
       (.I0(\seg_OBUF[6]_inst_i_281_n_6 ),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_358_n_0 ));
  LUT5 #(
    .INIT(32'h20A2AA0A)) 
    \seg_OBUF[6]_inst_i_359 
       (.I0(\seg_OBUF[6]_inst_i_281_n_7 ),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .O(\seg_OBUF[6]_inst_i_359_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_36 
       (.CI(\seg_OBUF[6]_inst_i_65_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_36_n_0 ,\NLW_seg_OBUF[6]_inst_i_36_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_66_n_0 ,\seg_OBUF[6]_inst_i_67_n_0 ,\seg_OBUF[6]_inst_i_68_n_0 ,\seg_OBUF[6]_inst_i_69_n_0 }),
        .O(\NLW_seg_OBUF[6]_inst_i_36_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_70_n_0 ,\seg_OBUF[6]_inst_i_71_n_0 ,\seg_OBUF[6]_inst_i_72_n_0 ,\seg_OBUF[6]_inst_i_73_n_0 }));
  LUT6 #(
    .INIT(64'hAA000A2020AAA20A)) 
    \seg_OBUF[6]_inst_i_360 
       (.I0(\seg_OBUF[6]_inst_i_335_n_4 ),
        .I1(p_0_in[6]),
        .I2(p_0_in[9]),
        .I3(p_0_in[8]),
        .I4(p_0_in[7]),
        .I5(p_0_in[10]),
        .O(\seg_OBUF[6]_inst_i_360_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \seg_OBUF[6]_inst_i_361 
       (.I0(\seg_OBUF[6]_inst_i_335_n_5 ),
        .I1(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_361_n_0 ));
  LUT5 #(
    .INIT(32'h1F00E0FF)) 
    \seg_OBUF[6]_inst_i_362 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .I3(\seg_OBUF[6]_inst_i_281_n_6 ),
        .I4(\seg_OBUF[6]_inst_i_281_n_5 ),
        .O(\seg_OBUF[6]_inst_i_362_n_0 ));
  LUT6 #(
    .INIT(64'hB43C3C0F0FC34BC3)) 
    \seg_OBUF[6]_inst_i_363 
       (.I0(p_0_in[7]),
        .I1(\seg_OBUF[6]_inst_i_281_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_281_n_6 ),
        .I3(p_0_in[9]),
        .I4(p_0_in[8]),
        .I5(p_0_in[10]),
        .O(\seg_OBUF[6]_inst_i_363_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \seg_OBUF[6]_inst_i_364 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_335_n_4 ),
        .I2(\seg_OBUF[6]_inst_i_281_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_197_n_0 ),
        .O(\seg_OBUF[6]_inst_i_364_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \seg_OBUF[6]_inst_i_365 
       (.I0(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_335_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_335_n_4 ),
        .I3(\seg_OBUF[5]_inst_i_28_n_0 ),
        .O(\seg_OBUF[6]_inst_i_365_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \seg_OBUF[6]_inst_i_366 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_366_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[6]_inst_i_367 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[6]_inst_i_367_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \seg_OBUF[6]_inst_i_368 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_368_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \seg_OBUF[6]_inst_i_369 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_369_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \seg_OBUF[6]_inst_i_37 
       (.I0(\seg_OBUF[6]_inst_i_63_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I2(\seg_OBUF[6]_inst_i_64_n_5 ),
        .O(\seg_OBUF[6]_inst_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_370 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_370_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \seg_OBUF[6]_inst_i_371 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_371_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[6]_inst_i_372 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[6]_inst_i_372_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \seg_OBUF[6]_inst_i_373 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_373_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \seg_OBUF[6]_inst_i_374 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_374_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_375 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_375_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_376 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_376_n_0 ,\NLW_seg_OBUF[6]_inst_i_376_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[5]_inst_i_7_n_0 ,\seg_OBUF[5]_inst_i_9_n_0 ,1'b0,1'b1}),
        .O({\seg_OBUF[6]_inst_i_376_n_4 ,\seg_OBUF[6]_inst_i_376_n_5 ,\seg_OBUF[6]_inst_i_376_n_6 ,\NLW_seg_OBUF[6]_inst_i_376_O_UNCONNECTED [0]}),
        .S({\seg_OBUF[6]_inst_i_410_n_0 ,\seg_OBUF[6]_inst_i_411_n_0 ,\seg_OBUF[6]_inst_i_412_n_0 ,\seg_OBUF[6]_inst_i_413_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \seg_OBUF[6]_inst_i_377 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[6]_inst_i_377_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \seg_OBUF[6]_inst_i_378 
       (.I0(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_198_n_0 ),
        .O(\seg_OBUF[6]_inst_i_378_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \seg_OBUF[6]_inst_i_379 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_379_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \seg_OBUF[6]_inst_i_38 
       (.I0(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_63_n_6 ),
        .I2(\seg_OBUF[6]_inst_i_64_n_6 ),
        .O(\seg_OBUF[6]_inst_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \seg_OBUF[6]_inst_i_380 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_380_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \seg_OBUF[6]_inst_i_381 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[6]_inst_i_381_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_382 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_382_n_0 ,\NLW_seg_OBUF[6]_inst_i_382_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_414_n_0 ,\seg_OBUF[6]_inst_i_415_n_0 ,\seg_OBUF[6]_inst_i_416_n_0 ,1'b0}),
        .O(\NLW_seg_OBUF[6]_inst_i_382_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_417_n_0 ,\seg_OBUF[6]_inst_i_418_n_0 ,\seg_OBUF[6]_inst_i_419_n_0 ,\seg_OBUF[6]_inst_i_420_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[6]_inst_i_383 
       (.I0(\seg_OBUF[6]_inst_i_195_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_319_n_5 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_383_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[6]_inst_i_384 
       (.I0(\seg_OBUF[6]_inst_i_195_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_319_n_6 ),
        .I2(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_384_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_385 
       (.I0(\seg_OBUF[6]_inst_i_319_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_7 ),
        .O(\seg_OBUF[6]_inst_i_385_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_386 
       (.I0(\seg_OBUF[6]_inst_i_376_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_258_n_4 ),
        .O(\seg_OBUF[6]_inst_i_386_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \seg_OBUF[6]_inst_i_387 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_319_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_195_n_5 ),
        .I3(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_319_n_4 ),
        .I5(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[6]_inst_i_387_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[6]_inst_i_388 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_319_n_6 ),
        .I2(\seg_OBUF[6]_inst_i_195_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_319_n_5 ),
        .I4(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_195_n_5 ),
        .O(\seg_OBUF[6]_inst_i_388_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \seg_OBUF[6]_inst_i_389 
       (.I0(\seg_OBUF[6]_inst_i_195_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_319_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_319_n_6 ),
        .I3(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_195_n_6 ),
        .O(\seg_OBUF[6]_inst_i_389_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[6]_inst_i_39 
       (.I0(\seg_OBUF[6]_inst_i_61_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_63_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_64_n_7 ),
        .O(\seg_OBUF[6]_inst_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[6]_inst_i_390 
       (.I0(\seg_OBUF[6]_inst_i_258_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_376_n_4 ),
        .I2(\seg_OBUF[6]_inst_i_319_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_195_n_7 ),
        .O(\seg_OBUF[6]_inst_i_390_n_0 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_391 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_391_n_0 ,\NLW_seg_OBUF[6]_inst_i_391_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_148_n_0 ,\seg_OBUF[6]_inst_i_149_n_0 ,\seg_OBUF[6]_inst_i_421_n_0 ,1'b0}),
        .O({\NLW_seg_OBUF[6]_inst_i_391_O_UNCONNECTED [3:1],\seg_OBUF[6]_inst_i_391_n_7 }),
        .S({\seg_OBUF[6]_inst_i_422_n_0 ,\seg_OBUF[6]_inst_i_423_n_0 ,\seg_OBUF[6]_inst_i_424_n_0 ,\seg_OBUF[6]_inst_i_425_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_392 
       (.I0(\seg_OBUF[6]_inst_i_17_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_18_n_4 ),
        .O(\seg_OBUF[6]_inst_i_392_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_393 
       (.I0(\seg_OBUF[6]_inst_i_17_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_18_n_5 ),
        .O(\seg_OBUF[6]_inst_i_393_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_394 
       (.I0(\seg_OBUF[6]_inst_i_18_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_18_n_6 ),
        .O(\seg_OBUF[6]_inst_i_394_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_395 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_395_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_396 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_396_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_397 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_397_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \seg_OBUF[6]_inst_i_398 
       (.I0(\seg_OBUF[6]_inst_i_194_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_196_n_2 ),
        .O(\seg_OBUF[6]_inst_i_398_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_399 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_399_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[6]_inst_i_40 
       (.I0(\seg_OBUF[6]_inst_i_74_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_75_n_4 ),
        .I2(\seg_OBUF[6]_inst_i_76_n_4 ),
        .O(\seg_OBUF[6]_inst_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_400 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_400_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_401 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_401_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \seg_OBUF[6]_inst_i_402 
       (.I0(\seg_OBUF[6]_inst_i_196_n_2 ),
        .I1(\seg_OBUF[6]_inst_i_195_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_194_n_0 ),
        .O(\seg_OBUF[6]_inst_i_402_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \seg_OBUF[6]_inst_i_403 
       (.I0(\seg_OBUF[6]_inst_i_335_n_6 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[6]_inst_i_403_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \seg_OBUF[6]_inst_i_404 
       (.I0(\seg_OBUF[6]_inst_i_335_n_7 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[6]_inst_i_404_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \seg_OBUF[6]_inst_i_405 
       (.I0(\seg_OBUF[6]_inst_i_18_n_6 ),
        .I1(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_405_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \seg_OBUF[6]_inst_i_406 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_335_n_6 ),
        .I2(\seg_OBUF[6]_inst_i_335_n_5 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_406_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \seg_OBUF[6]_inst_i_407 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_335_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_335_n_6 ),
        .I3(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[6]_inst_i_407_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \seg_OBUF[6]_inst_i_408 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_18_n_6 ),
        .I2(\seg_OBUF[6]_inst_i_335_n_7 ),
        .I3(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[6]_inst_i_408_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_409 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_18_n_6 ),
        .O(\seg_OBUF[6]_inst_i_409_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[6]_inst_i_41 
       (.I0(\seg_OBUF[6]_inst_i_64_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_63_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_63_n_4 ),
        .I3(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I4(\seg_OBUF[6]_inst_i_64_n_4 ),
        .O(\seg_OBUF[6]_inst_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_410 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[6]_inst_i_410_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_411 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[6]_inst_i_411_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[6]_inst_i_412 
       (.I0(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_412_n_0 ));
  LUT6 #(
    .INIT(64'h79EF286719EB0861)) 
    \seg_OBUF[6]_inst_i_413 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(\seg_OBUF[5]_inst_i_11_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_12_n_0 ),
        .I5(p_0_in[1]),
        .O(\seg_OBUF[6]_inst_i_413_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_414 
       (.I0(\seg_OBUF[6]_inst_i_376_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_258_n_5 ),
        .O(\seg_OBUF[6]_inst_i_414_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_415 
       (.I0(\seg_OBUF[6]_inst_i_376_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_258_n_6 ),
        .O(\seg_OBUF[6]_inst_i_415_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_416 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_258_n_7 ),
        .O(\seg_OBUF[6]_inst_i_416_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[6]_inst_i_417 
       (.I0(\seg_OBUF[6]_inst_i_258_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_376_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_376_n_4 ),
        .I3(\seg_OBUF[6]_inst_i_258_n_4 ),
        .O(\seg_OBUF[6]_inst_i_417_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[6]_inst_i_418 
       (.I0(\seg_OBUF[6]_inst_i_258_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_376_n_6 ),
        .I2(\seg_OBUF[6]_inst_i_376_n_5 ),
        .I3(\seg_OBUF[6]_inst_i_258_n_5 ),
        .O(\seg_OBUF[6]_inst_i_418_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \seg_OBUF[6]_inst_i_419 
       (.I0(\seg_OBUF[6]_inst_i_258_n_7 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_376_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_258_n_6 ),
        .O(\seg_OBUF[6]_inst_i_419_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \seg_OBUF[6]_inst_i_42 
       (.I0(\seg_OBUF[6]_inst_i_64_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_63_n_6 ),
        .I2(\seg_OBUF[6]_inst_i_63_n_5 ),
        .I3(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I4(\seg_OBUF[6]_inst_i_64_n_5 ),
        .O(\seg_OBUF[6]_inst_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_420 
       (.I0(\seg_OBUF[6]_inst_i_258_n_7 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_420_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \seg_OBUF[6]_inst_i_421 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_421_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \seg_OBUF[6]_inst_i_422 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_197_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_19_n_0 ),
        .O(\seg_OBUF[6]_inst_i_422_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \seg_OBUF[6]_inst_i_423 
       (.I0(\seg_OBUF[5]_inst_i_28_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_423_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \seg_OBUF[6]_inst_i_424 
       (.I0(\seg_OBUF[5]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_7_n_0 ),
        .I3(\seg_OBUF[5]_inst_i_24_n_0 ),
        .O(\seg_OBUF[6]_inst_i_424_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_425 
       (.I0(\seg_OBUF[5]_inst_i_19_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_425_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \seg_OBUF[6]_inst_i_43 
       (.I0(\seg_OBUF[6]_inst_i_64_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_63_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I4(\seg_OBUF[6]_inst_i_63_n_6 ),
        .I5(\seg_OBUF[6]_inst_i_64_n_6 ),
        .O(\seg_OBUF[6]_inst_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[6]_inst_i_44 
       (.I0(\seg_OBUF[6]_inst_i_76_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_75_n_4 ),
        .I2(\seg_OBUF[6]_inst_i_74_n_4 ),
        .I3(\seg_OBUF[6]_inst_i_63_n_7 ),
        .I4(\seg_OBUF[6]_inst_i_64_n_7 ),
        .I5(\seg_OBUF[6]_inst_i_61_n_7 ),
        .O(\seg_OBUF[6]_inst_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_45 
       (.I0(\seg_OBUF[5]_inst_i_24_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_15_n_5 ),
        .O(\seg_OBUF[6]_inst_i_45_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_46 
       (.CI(\seg_OBUF[6]_inst_i_77_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_46_n_0 ,\NLW_seg_OBUF[6]_inst_i_46_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_47_n_6 ,\seg_OBUF[6]_inst_i_47_n_7 ,\seg_OBUF[6]_inst_i_78_n_4 ,\seg_OBUF[6]_inst_i_78_n_5 }),
        .O({\seg_OBUF[6]_inst_i_46_n_4 ,\seg_OBUF[6]_inst_i_46_n_5 ,\seg_OBUF[6]_inst_i_46_n_6 ,\seg_OBUF[6]_inst_i_46_n_7 }),
        .S({\seg_OBUF[6]_inst_i_79_n_0 ,\seg_OBUF[6]_inst_i_80_n_0 ,\seg_OBUF[6]_inst_i_81_n_0 ,\seg_OBUF[6]_inst_i_82_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_47 
       (.CI(\seg_OBUF[6]_inst_i_78_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_47_n_0 ,\NLW_seg_OBUF[6]_inst_i_47_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_83_n_0 ,\seg_OBUF[6]_inst_i_84_n_0 ,\seg_OBUF[6]_inst_i_85_n_0 ,\seg_OBUF[6]_inst_i_86_n_0 }),
        .O({\seg_OBUF[6]_inst_i_47_n_4 ,\seg_OBUF[6]_inst_i_47_n_5 ,\seg_OBUF[6]_inst_i_47_n_6 ,\seg_OBUF[6]_inst_i_47_n_7 }),
        .S({\seg_OBUF[6]_inst_i_87_n_0 ,\seg_OBUF[6]_inst_i_88_n_0 ,\seg_OBUF[6]_inst_i_89_n_0 ,\seg_OBUF[6]_inst_i_90_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_48 
       (.I0(\seg_OBUF[6]_inst_i_23_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_47_n_4 ),
        .O(\seg_OBUF[6]_inst_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_49 
       (.I0(\seg_OBUF[6]_inst_i_23_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_47_n_5 ),
        .O(\seg_OBUF[6]_inst_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(\seg_OBUF[6]_inst_i_14_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_18_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_14_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_15_n_6 ),
        .I4(\seg_OBUF[6]_inst_i_16_n_1 ),
        .I5(\seg_OBUF[6]_inst_i_18_n_6 ),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_50 
       (.I0(\seg_OBUF[6]_inst_i_47_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_47_n_6 ),
        .O(\seg_OBUF[6]_inst_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_51 
       (.I0(\seg_OBUF[6]_inst_i_47_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_47_n_7 ),
        .O(\seg_OBUF[6]_inst_i_51_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_52 
       (.I0(\seg_OBUF[6]_inst_i_91_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hE817)) 
    \seg_OBUF[6]_inst_i_53 
       (.I0(\seg_OBUF[6]_inst_i_92_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_92_n_6 ),
        .O(\seg_OBUF[6]_inst_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_54 
       (.I0(\seg_OBUF[6]_inst_i_52_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_92_n_7 ),
        .O(\seg_OBUF[6]_inst_i_54_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_55 
       (.CI(\seg_OBUF[6]_inst_i_93_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_55_n_0 ,\NLW_seg_OBUF[6]_inst_i_55_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_46_n_6 ,\seg_OBUF[6]_inst_i_46_n_7 ,\seg_OBUF[6]_inst_i_77_n_4 ,\seg_OBUF[6]_inst_i_77_n_5 }),
        .O(\NLW_seg_OBUF[6]_inst_i_55_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_94_n_0 ,\seg_OBUF[6]_inst_i_95_n_0 ,\seg_OBUF[6]_inst_i_96_n_0 ,\seg_OBUF[6]_inst_i_97_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_56 
       (.I0(\seg_OBUF[6]_inst_i_22_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_22_n_5 ),
        .O(\seg_OBUF[6]_inst_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_57 
       (.I0(\seg_OBUF[6]_inst_i_22_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_22_n_6 ),
        .O(\seg_OBUF[6]_inst_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_58 
       (.I0(\seg_OBUF[6]_inst_i_46_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_22_n_7 ),
        .O(\seg_OBUF[6]_inst_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_59 
       (.I0(\seg_OBUF[6]_inst_i_46_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_46_n_4 ),
        .O(\seg_OBUF[6]_inst_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(\seg_OBUF[6]_inst_i_14_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_17_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_14_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_15_n_6 ),
        .I4(\seg_OBUF[6]_inst_i_16_n_1 ),
        .I5(\seg_OBUF[6]_inst_i_18_n_5 ),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_60 
       (.CI(\seg_OBUF[6]_inst_i_63_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_60_n_0 ,\NLW_seg_OBUF[6]_inst_i_60_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\seg_OBUF[6]_inst_i_98_n_0 ,\seg_OBUF[6]_inst_i_99_n_0 ,\seg_OBUF[6]_inst_i_100_n_0 }),
        .O({\NLW_seg_OBUF[6]_inst_i_60_O_UNCONNECTED [3],\seg_OBUF[6]_inst_i_60_n_5 ,\seg_OBUF[6]_inst_i_60_n_6 ,\seg_OBUF[6]_inst_i_60_n_7 }),
        .S({1'b1,\seg_OBUF[6]_inst_i_101_n_0 ,\seg_OBUF[6]_inst_i_102_n_0 ,\seg_OBUF[6]_inst_i_103_n_0 }));
  CARRY4 \seg_OBUF[6]_inst_i_61 
       (.CI(\seg_OBUF[6]_inst_i_74_n_0 ),
        .CO({\NLW_seg_OBUF[6]_inst_i_61_CO_UNCONNECTED [3:2],\seg_OBUF[6]_inst_i_61_n_2 ,\NLW_seg_OBUF[6]_inst_i_61_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\seg_OBUF[6]_inst_i_104_n_0 }),
        .O({\NLW_seg_OBUF[6]_inst_i_61_O_UNCONNECTED [3:1],\seg_OBUF[6]_inst_i_61_n_7 }),
        .S({1'b0,1'b0,1'b1,\seg_OBUF[6]_inst_i_105_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_62 
       (.CI(\seg_OBUF[6]_inst_i_64_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_62_n_0 ,\NLW_seg_OBUF[6]_inst_i_62_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_106_n_0 ,\seg_OBUF[6]_inst_i_107_n_0 ,\seg_OBUF[6]_inst_i_108_n_0 ,\seg_OBUF[6]_inst_i_109_n_0 }),
        .O({\seg_OBUF[6]_inst_i_62_n_4 ,\seg_OBUF[6]_inst_i_62_n_5 ,\seg_OBUF[6]_inst_i_62_n_6 ,\seg_OBUF[6]_inst_i_62_n_7 }),
        .S({\seg_OBUF[6]_inst_i_110_n_0 ,\seg_OBUF[6]_inst_i_111_n_0 ,\seg_OBUF[6]_inst_i_112_n_0 ,\seg_OBUF[6]_inst_i_113_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_63 
       (.CI(\seg_OBUF[6]_inst_i_75_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_63_n_0 ,\NLW_seg_OBUF[6]_inst_i_63_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_114_n_0 ,\seg_OBUF[6]_inst_i_115_n_0 ,\seg_OBUF[6]_inst_i_116_n_0 ,\seg_OBUF[6]_inst_i_117_n_0 }),
        .O({\seg_OBUF[6]_inst_i_63_n_4 ,\seg_OBUF[6]_inst_i_63_n_5 ,\seg_OBUF[6]_inst_i_63_n_6 ,\seg_OBUF[6]_inst_i_63_n_7 }),
        .S({\seg_OBUF[6]_inst_i_118_n_0 ,\seg_OBUF[6]_inst_i_119_n_0 ,\seg_OBUF[6]_inst_i_120_n_0 ,\seg_OBUF[6]_inst_i_121_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_64 
       (.CI(\seg_OBUF[6]_inst_i_76_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_64_n_0 ,\NLW_seg_OBUF[6]_inst_i_64_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_122_n_0 ,\seg_OBUF[6]_inst_i_123_n_0 ,\seg_OBUF[6]_inst_i_124_n_0 ,\seg_OBUF[6]_inst_i_125_n_0 }),
        .O({\seg_OBUF[6]_inst_i_64_n_4 ,\seg_OBUF[6]_inst_i_64_n_5 ,\seg_OBUF[6]_inst_i_64_n_6 ,\seg_OBUF[6]_inst_i_64_n_7 }),
        .S({\seg_OBUF[6]_inst_i_126_n_0 ,\seg_OBUF[6]_inst_i_127_n_0 ,\seg_OBUF[6]_inst_i_128_n_0 ,\seg_OBUF[6]_inst_i_129_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_65 
       (.CI(\seg_OBUF[6]_inst_i_130_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_65_n_0 ,\NLW_seg_OBUF[6]_inst_i_65_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_131_n_0 ,\seg_OBUF[6]_inst_i_132_n_0 ,\seg_OBUF[6]_inst_i_133_n_0 ,\seg_OBUF[6]_inst_i_134_n_0 }),
        .O(\NLW_seg_OBUF[6]_inst_i_65_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_135_n_0 ,\seg_OBUF[6]_inst_i_136_n_0 ,\seg_OBUF[6]_inst_i_137_n_0 ,\seg_OBUF[6]_inst_i_138_n_0 }));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[6]_inst_i_66 
       (.I0(\seg_OBUF[6]_inst_i_74_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_75_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_76_n_5 ),
        .O(\seg_OBUF[6]_inst_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[6]_inst_i_67 
       (.I0(\seg_OBUF[6]_inst_i_74_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_75_n_6 ),
        .I2(\seg_OBUF[6]_inst_i_76_n_6 ),
        .O(\seg_OBUF[6]_inst_i_67_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[6]_inst_i_68 
       (.I0(\seg_OBUF[6]_inst_i_74_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_139_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_76_n_7 ),
        .O(\seg_OBUF[6]_inst_i_68_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \seg_OBUF[6]_inst_i_69 
       (.I0(\seg_OBUF[6]_inst_i_140_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_141_n_4 ),
        .I2(\seg_OBUF[5]_inst_i_10_n_0 ),
        .O(\seg_OBUF[6]_inst_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[6]_inst_i_70 
       (.I0(\seg_OBUF[6]_inst_i_76_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_75_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_74_n_5 ),
        .I3(\seg_OBUF[6]_inst_i_75_n_4 ),
        .I4(\seg_OBUF[6]_inst_i_76_n_4 ),
        .I5(\seg_OBUF[6]_inst_i_74_n_4 ),
        .O(\seg_OBUF[6]_inst_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[6]_inst_i_71 
       (.I0(\seg_OBUF[6]_inst_i_76_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_75_n_6 ),
        .I2(\seg_OBUF[6]_inst_i_74_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_75_n_5 ),
        .I4(\seg_OBUF[6]_inst_i_76_n_5 ),
        .I5(\seg_OBUF[6]_inst_i_74_n_5 ),
        .O(\seg_OBUF[6]_inst_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[6]_inst_i_72 
       (.I0(\seg_OBUF[6]_inst_i_76_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_139_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_74_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_75_n_6 ),
        .I4(\seg_OBUF[6]_inst_i_76_n_6 ),
        .I5(\seg_OBUF[6]_inst_i_74_n_6 ),
        .O(\seg_OBUF[6]_inst_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \seg_OBUF[6]_inst_i_73 
       (.I0(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_141_n_4 ),
        .I2(\seg_OBUF[6]_inst_i_140_n_4 ),
        .I3(\seg_OBUF[6]_inst_i_139_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_76_n_7 ),
        .I5(\seg_OBUF[6]_inst_i_74_n_7 ),
        .O(\seg_OBUF[6]_inst_i_73_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_74 
       (.CI(\seg_OBUF[6]_inst_i_140_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_74_n_0 ,\NLW_seg_OBUF[6]_inst_i_74_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_142_n_0 ,\seg_OBUF[6]_inst_i_143_n_0 ,\seg_OBUF[6]_inst_i_114_n_0 ,\seg_OBUF[6]_inst_i_115_n_0 }),
        .O({\seg_OBUF[6]_inst_i_74_n_4 ,\seg_OBUF[6]_inst_i_74_n_5 ,\seg_OBUF[6]_inst_i_74_n_6 ,\seg_OBUF[6]_inst_i_74_n_7 }),
        .S({\seg_OBUF[6]_inst_i_144_n_0 ,\seg_OBUF[6]_inst_i_145_n_0 ,\seg_OBUF[6]_inst_i_146_n_0 ,\seg_OBUF[6]_inst_i_147_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_75 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_75_n_0 ,\NLW_seg_OBUF[6]_inst_i_75_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_148_n_0 ,\seg_OBUF[6]_inst_i_149_n_0 ,\seg_OBUF[6]_inst_i_150_n_0 ,1'b0}),
        .O({\seg_OBUF[6]_inst_i_75_n_4 ,\seg_OBUF[6]_inst_i_75_n_5 ,\seg_OBUF[6]_inst_i_75_n_6 ,\NLW_seg_OBUF[6]_inst_i_75_O_UNCONNECTED [0]}),
        .S({\seg_OBUF[6]_inst_i_151_n_0 ,\seg_OBUF[6]_inst_i_152_n_0 ,\seg_OBUF[6]_inst_i_153_n_0 ,\seg_OBUF[6]_inst_i_154_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_76 
       (.CI(\seg_OBUF[6]_inst_i_141_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_76_n_0 ,\NLW_seg_OBUF[6]_inst_i_76_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_155_n_0 ,\seg_OBUF[6]_inst_i_156_n_0 ,\seg_OBUF[6]_inst_i_157_n_0 ,\seg_OBUF[6]_inst_i_158_n_0 }),
        .O({\seg_OBUF[6]_inst_i_76_n_4 ,\seg_OBUF[6]_inst_i_76_n_5 ,\seg_OBUF[6]_inst_i_76_n_6 ,\seg_OBUF[6]_inst_i_76_n_7 }),
        .S({\seg_OBUF[6]_inst_i_159_n_0 ,\seg_OBUF[6]_inst_i_160_n_0 ,\seg_OBUF[6]_inst_i_161_n_0 ,\seg_OBUF[6]_inst_i_162_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_77 
       (.CI(\seg_OBUF[6]_inst_i_163_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_77_n_0 ,\NLW_seg_OBUF[6]_inst_i_77_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_78_n_6 ,\seg_OBUF[6]_inst_i_78_n_7 ,\seg_OBUF[6]_inst_i_164_n_4 ,\seg_OBUF[6]_inst_i_164_n_5 }),
        .O({\seg_OBUF[6]_inst_i_77_n_4 ,\seg_OBUF[6]_inst_i_77_n_5 ,\seg_OBUF[6]_inst_i_77_n_6 ,\seg_OBUF[6]_inst_i_77_n_7 }),
        .S({\seg_OBUF[6]_inst_i_165_n_0 ,\seg_OBUF[6]_inst_i_166_n_0 ,\seg_OBUF[6]_inst_i_167_n_0 ,\seg_OBUF[6]_inst_i_168_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_78 
       (.CI(\seg_OBUF[6]_inst_i_164_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_78_n_0 ,\NLW_seg_OBUF[6]_inst_i_78_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_169_n_0 ,\seg_OBUF[6]_inst_i_170_n_0 ,\seg_OBUF[6]_inst_i_171_n_0 ,\seg_OBUF[6]_inst_i_172_n_0 }),
        .O({\seg_OBUF[6]_inst_i_78_n_4 ,\seg_OBUF[6]_inst_i_78_n_5 ,\seg_OBUF[6]_inst_i_78_n_6 ,\seg_OBUF[6]_inst_i_78_n_7 }),
        .S({\seg_OBUF[6]_inst_i_173_n_0 ,\seg_OBUF[6]_inst_i_174_n_0 ,\seg_OBUF[6]_inst_i_175_n_0 ,\seg_OBUF[6]_inst_i_176_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_79 
       (.I0(\seg_OBUF[6]_inst_i_47_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_78_n_4 ),
        .O(\seg_OBUF[6]_inst_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hD10C4C742E32308B)) 
    \seg_OBUF[6]_inst_i_8 
       (.I0(\seg_OBUF[5]_inst_i_12_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_11_n_0 ),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I5(p_0_in[1]),
        .O(sel0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_80 
       (.I0(\seg_OBUF[6]_inst_i_47_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_78_n_5 ),
        .O(\seg_OBUF[6]_inst_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_81 
       (.I0(\seg_OBUF[6]_inst_i_78_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_78_n_6 ),
        .O(\seg_OBUF[6]_inst_i_81_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_82 
       (.I0(\seg_OBUF[6]_inst_i_78_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_78_n_7 ),
        .O(\seg_OBUF[6]_inst_i_82_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_83 
       (.I0(\seg_OBUF[6]_inst_i_91_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_83_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_84 
       (.I0(\seg_OBUF[6]_inst_i_91_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_84_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_85 
       (.I0(\seg_OBUF[6]_inst_i_91_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_85_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \seg_OBUF[6]_inst_i_86 
       (.I0(\seg_OBUF[6]_inst_i_177_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .O(\seg_OBUF[6]_inst_i_86_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_87 
       (.I0(\seg_OBUF[6]_inst_i_91_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_83_n_0 ),
        .O(\seg_OBUF[6]_inst_i_87_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_88 
       (.I0(\seg_OBUF[6]_inst_i_91_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_84_n_0 ),
        .O(\seg_OBUF[6]_inst_i_88_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_89 
       (.I0(\seg_OBUF[6]_inst_i_91_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_85_n_0 ),
        .O(\seg_OBUF[6]_inst_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h11AE7588136CC903)) 
    \seg_OBUF[6]_inst_i_9 
       (.I0(\seg_OBUF[5]_inst_i_12_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_10_n_0 ),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\seg_OBUF[5]_inst_i_11_n_0 ),
        .I5(p_0_in[1]),
        .O(sel0[2]));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \seg_OBUF[6]_inst_i_90 
       (.I0(\seg_OBUF[6]_inst_i_91_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_60_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_61_n_2 ),
        .I3(\seg_OBUF[6]_inst_i_86_n_0 ),
        .O(\seg_OBUF[6]_inst_i_90_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_91 
       (.CI(\seg_OBUF[6]_inst_i_177_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_91_n_0 ,\NLW_seg_OBUF[6]_inst_i_91_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_178_n_0 ,\seg_OBUF[6]_inst_i_179_n_0 ,\seg_OBUF[6]_inst_i_180_n_0 ,\seg_OBUF[6]_inst_i_181_n_0 }),
        .O({\seg_OBUF[6]_inst_i_91_n_4 ,\seg_OBUF[6]_inst_i_91_n_5 ,\seg_OBUF[6]_inst_i_91_n_6 ,\seg_OBUF[6]_inst_i_91_n_7 }),
        .S({\seg_OBUF[6]_inst_i_182_n_0 ,\seg_OBUF[6]_inst_i_183_n_0 ,\seg_OBUF[6]_inst_i_184_n_0 ,\seg_OBUF[6]_inst_i_185_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_92 
       (.CI(\seg_OBUF[6]_inst_i_91_n_0 ),
        .CO(\NLW_seg_OBUF[6]_inst_i_92_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\seg_OBUF[6]_inst_i_186_n_0 }),
        .O({\NLW_seg_OBUF[6]_inst_i_92_O_UNCONNECTED [3:2],\seg_OBUF[6]_inst_i_92_n_6 ,\seg_OBUF[6]_inst_i_92_n_7 }),
        .S({1'b0,1'b0,\seg_OBUF[6]_inst_i_187_n_0 ,\seg_OBUF[6]_inst_i_188_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \seg_OBUF[6]_inst_i_93 
       (.CI(\seg_OBUF[6]_inst_i_189_n_0 ),
        .CO({\seg_OBUF[6]_inst_i_93_n_0 ,\NLW_seg_OBUF[6]_inst_i_93_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_77_n_6 ,\seg_OBUF[6]_inst_i_77_n_7 ,\seg_OBUF[6]_inst_i_163_n_4 ,\seg_OBUF[6]_inst_i_163_n_5 }),
        .O(\NLW_seg_OBUF[6]_inst_i_93_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_190_n_0 ,\seg_OBUF[6]_inst_i_191_n_0 ,\seg_OBUF[6]_inst_i_192_n_0 ,\seg_OBUF[6]_inst_i_193_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_94 
       (.I0(\seg_OBUF[6]_inst_i_46_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_46_n_5 ),
        .O(\seg_OBUF[6]_inst_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_95 
       (.I0(\seg_OBUF[6]_inst_i_46_n_7 ),
        .I1(\seg_OBUF[6]_inst_i_46_n_6 ),
        .O(\seg_OBUF[6]_inst_i_95_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_96 
       (.I0(\seg_OBUF[6]_inst_i_77_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_46_n_7 ),
        .O(\seg_OBUF[6]_inst_i_96_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_97 
       (.I0(\seg_OBUF[6]_inst_i_77_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_77_n_4 ),
        .O(\seg_OBUF[6]_inst_i_97_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \seg_OBUF[6]_inst_i_98 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .O(\seg_OBUF[6]_inst_i_98_n_0 ));
  LUT4 #(
    .INIT(16'h9A18)) 
    \seg_OBUF[6]_inst_i_99 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[10]),
        .I3(p_0_in[7]),
        .O(\seg_OBUF[6]_inst_i_99_n_0 ));
endmodule

module Debounce_money
   (E,
    D,
    \stable_money_input_reg[3]_0 ,
    item_type_IBUF,
    Q,
    \amount_paid_reg[3] ,
    \amount_paid_reg[4] ,
    \money_input_prev_reg[3]_0 ,
    CLK100MHZ_IBUF_BUFG,
    AR);
  output [0:0]E;
  output [7:0]D;
  output \stable_money_input_reg[3]_0 ;
  input [2:0]item_type_IBUF;
  input [7:0]Q;
  input \amount_paid_reg[3] ;
  input \amount_paid_reg[4] ;
  input [3:0]\money_input_prev_reg[3]_0 ;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK100MHZ_IBUF_BUFG;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire \amount_paid[1]_i_2_n_0 ;
  wire \amount_paid[1]_i_3_n_0 ;
  wire \amount_paid[2]_i_2_n_0 ;
  wire \amount_paid[2]_i_3_n_0 ;
  wire \amount_paid[3]_i_2_n_0 ;
  wire \amount_paid[3]_i_3_n_0 ;
  wire \amount_paid[4]_i_2_n_0 ;
  wire \amount_paid[4]_i_3_n_0 ;
  wire \amount_paid[5]_i_2_n_0 ;
  wire \amount_paid[5]_i_3_n_0 ;
  wire \amount_paid[6]_i_2_n_0 ;
  wire \amount_paid[7]_i_3_n_0 ;
  wire \amount_paid[7]_i_4_n_0 ;
  wire \amount_paid[7]_i_5_n_0 ;
  wire \amount_paid[7]_i_6_n_0 ;
  wire \amount_paid[7]_i_7_n_0 ;
  wire \amount_paid_reg[3] ;
  wire \amount_paid_reg[4] ;
  wire \debounce_counter[0]_i_2_n_0 ;
  wire \debounce_counter[0]_i_3_n_0 ;
  wire \debounce_counter[0]_i_4_n_0 ;
  wire \debounce_counter[0]_i_5_n_0 ;
  wire \debounce_counter[12]_i_2_n_0 ;
  wire \debounce_counter[12]_i_3_n_0 ;
  wire \debounce_counter[12]_i_4_n_0 ;
  wire \debounce_counter[12]_i_5_n_0 ;
  wire \debounce_counter[16]_i_2_n_0 ;
  wire \debounce_counter[16]_i_3_n_0 ;
  wire \debounce_counter[16]_i_4_n_0 ;
  wire \debounce_counter[16]_i_5_n_0 ;
  wire \debounce_counter[4]_i_2_n_0 ;
  wire \debounce_counter[4]_i_3_n_0 ;
  wire \debounce_counter[4]_i_4_n_0 ;
  wire \debounce_counter[4]_i_5_n_0 ;
  wire \debounce_counter[8]_i_2_n_0 ;
  wire \debounce_counter[8]_i_3_n_0 ;
  wire \debounce_counter[8]_i_4_n_0 ;
  wire \debounce_counter[8]_i_5_n_0 ;
  wire [19:0]debounce_counter_reg;
  wire \debounce_counter_reg[0]_i_1_n_0 ;
  wire \debounce_counter_reg[0]_i_1_n_4 ;
  wire \debounce_counter_reg[0]_i_1_n_5 ;
  wire \debounce_counter_reg[0]_i_1_n_6 ;
  wire \debounce_counter_reg[0]_i_1_n_7 ;
  wire \debounce_counter_reg[12]_i_1_n_0 ;
  wire \debounce_counter_reg[12]_i_1_n_4 ;
  wire \debounce_counter_reg[12]_i_1_n_5 ;
  wire \debounce_counter_reg[12]_i_1_n_6 ;
  wire \debounce_counter_reg[12]_i_1_n_7 ;
  wire \debounce_counter_reg[16]_i_1_n_4 ;
  wire \debounce_counter_reg[16]_i_1_n_5 ;
  wire \debounce_counter_reg[16]_i_1_n_6 ;
  wire \debounce_counter_reg[16]_i_1_n_7 ;
  wire \debounce_counter_reg[4]_i_1_n_0 ;
  wire \debounce_counter_reg[4]_i_1_n_4 ;
  wire \debounce_counter_reg[4]_i_1_n_5 ;
  wire \debounce_counter_reg[4]_i_1_n_6 ;
  wire \debounce_counter_reg[4]_i_1_n_7 ;
  wire \debounce_counter_reg[8]_i_1_n_0 ;
  wire \debounce_counter_reg[8]_i_1_n_4 ;
  wire \debounce_counter_reg[8]_i_1_n_5 ;
  wire \debounce_counter_reg[8]_i_1_n_6 ;
  wire \debounce_counter_reg[8]_i_1_n_7 ;
  wire [3:0]debounced_money_input;
  wire [2:0]item_type_IBUF;
  wire [3:0]money_input_prev;
  wire \money_input_prev[3]_i_1_n_0 ;
  wire \money_input_prev[3]_i_2_n_0 ;
  wire [3:0]\money_input_prev_reg[3]_0 ;
  wire \stable_money_input[3]_i_1_n_0 ;
  wire \stable_money_input[3]_i_2_n_0 ;
  wire \stable_money_input[3]_i_3_n_0 ;
  wire \stable_money_input[3]_i_4_n_0 ;
  wire \stable_money_input[3]_i_5_n_0 ;
  wire \stable_money_input_reg[3]_0 ;
  wire [2:0]\NLW_debounce_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_debounce_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_debounce_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_debounce_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_debounce_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFE00FE00FF000000)) 
    \amount_paid[0]_i_1 
       (.I0(debounced_money_input[3]),
        .I1(debounced_money_input[1]),
        .I2(debounced_money_input[2]),
        .I3(\amount_paid[7]_i_6_n_0 ),
        .I4(debounced_money_input[0]),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFF00000EEEE0000)) 
    \amount_paid[1]_i_1 
       (.I0(debounced_money_input[3]),
        .I1(\amount_paid[1]_i_2_n_0 ),
        .I2(\amount_paid[1]_i_3_n_0 ),
        .I3(debounced_money_input[2]),
        .I4(\amount_paid[7]_i_6_n_0 ),
        .I5(Q[1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hF8)) 
    \amount_paid[1]_i_2 
       (.I0(debounced_money_input[0]),
        .I1(Q[0]),
        .I2(debounced_money_input[1]),
        .O(\amount_paid[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \amount_paid[1]_i_3 
       (.I0(debounced_money_input[0]),
        .I1(Q[0]),
        .O(\amount_paid[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFFACACA00000000)) 
    \amount_paid[2]_i_1 
       (.I0(\amount_paid[2]_i_2_n_0 ),
        .I1(\amount_paid[2]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(debounced_money_input[3]),
        .I5(\amount_paid[7]_i_6_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFFAA80)) 
    \amount_paid[2]_i_2 
       (.I0(Q[1]),
        .I1(debounced_money_input[0]),
        .I2(Q[0]),
        .I3(debounced_money_input[1]),
        .I4(debounced_money_input[2]),
        .O(\amount_paid[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5F44)) 
    \amount_paid[2]_i_3 
       (.I0(Q[1]),
        .I1(debounced_money_input[1]),
        .I2(Q[0]),
        .I3(debounced_money_input[0]),
        .O(\amount_paid[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFAAAAEAEAAAAA)) 
    \amount_paid[3]_i_1 
       (.I0(\amount_paid[3]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\amount_paid[3]_i_3_n_0 ),
        .I3(\amount_paid_reg[3] ),
        .I4(\amount_paid[7]_i_6_n_0 ),
        .I5(debounced_money_input[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h88F0000000000000)) 
    \amount_paid[3]_i_2 
       (.I0(debounced_money_input[3]),
        .I1(Q[1]),
        .I2(\amount_paid[2]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\amount_paid[7]_i_6_n_0 ),
        .O(\amount_paid[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55F554F4FFFFF4F4)) 
    \amount_paid[3]_i_3 
       (.I0(Q[2]),
        .I1(debounced_money_input[2]),
        .I2(debounced_money_input[0]),
        .I3(Q[0]),
        .I4(debounced_money_input[1]),
        .I5(Q[1]),
        .O(\amount_paid[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \amount_paid[4]_i_1 
       (.I0(\amount_paid[4]_i_2_n_0 ),
        .I1(\amount_paid[6]_i_2_n_0 ),
        .I2(\amount_paid_reg[4] ),
        .I3(\amount_paid[5]_i_3_n_0 ),
        .I4(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FF002A)) 
    \amount_paid[4]_i_2 
       (.I0(debounced_money_input[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\amount_paid[4]_i_3_n_0 ),
        .I5(\amount_paid[3]_i_3_n_0 ),
        .O(\amount_paid[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \amount_paid[4]_i_3 
       (.I0(debounced_money_input[1]),
        .I1(debounced_money_input[0]),
        .I2(debounced_money_input[2]),
        .O(\amount_paid[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000880000)) 
    \amount_paid[5]_i_1 
       (.I0(\amount_paid[6]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\amount_paid[5]_i_2_n_0 ),
        .I3(\amount_paid_reg[4] ),
        .I4(\amount_paid[5]_i_3_n_0 ),
        .I5(Q[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555554)) 
    \amount_paid[5]_i_2 
       (.I0(Q[4]),
        .I1(debounced_money_input[2]),
        .I2(debounced_money_input[0]),
        .I3(debounced_money_input[1]),
        .I4(debounced_money_input[3]),
        .I5(\amount_paid[4]_i_2_n_0 ),
        .O(\amount_paid[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0116)) 
    \amount_paid[5]_i_3 
       (.I0(debounced_money_input[0]),
        .I1(debounced_money_input[1]),
        .I2(debounced_money_input[2]),
        .I3(debounced_money_input[3]),
        .O(\amount_paid[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00000080800000)) 
    \amount_paid[6]_i_1 
       (.I0(\amount_paid[6]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(\amount_paid[7]_i_5_n_0 ),
        .I4(\amount_paid[7]_i_6_n_0 ),
        .I5(Q[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hECC0E0C0)) 
    \amount_paid[6]_i_2 
       (.I0(\amount_paid[2]_i_2_n_0 ),
        .I1(debounced_money_input[3]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\amount_paid[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF81)) 
    \amount_paid[7]_i_1 
       (.I0(item_type_IBUF[0]),
        .I1(item_type_IBUF[2]),
        .I2(item_type_IBUF[1]),
        .I3(\amount_paid[7]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4000000)) 
    \amount_paid[7]_i_2 
       (.I0(Q[6]),
        .I1(\amount_paid[7]_i_4_n_0 ),
        .I2(\amount_paid[7]_i_5_n_0 ),
        .I3(\amount_paid[7]_i_6_n_0 ),
        .I4(Q[7]),
        .I5(\amount_paid[7]_i_7_n_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h00010016)) 
    \amount_paid[7]_i_3 
       (.I0(debounced_money_input[2]),
        .I1(debounced_money_input[1]),
        .I2(debounced_money_input[0]),
        .I3(\amount_paid_reg[4] ),
        .I4(debounced_money_input[3]),
        .O(\amount_paid[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \amount_paid[7]_i_4 
       (.I0(debounced_money_input[2]),
        .I1(debounced_money_input[0]),
        .I2(debounced_money_input[1]),
        .I3(debounced_money_input[3]),
        .O(\amount_paid[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555554)) 
    \amount_paid[7]_i_5 
       (.I0(Q[5]),
        .I1(debounced_money_input[2]),
        .I2(debounced_money_input[0]),
        .I3(debounced_money_input[1]),
        .I4(debounced_money_input[3]),
        .I5(\amount_paid[5]_i_2_n_0 ),
        .O(\amount_paid[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \amount_paid[7]_i_6 
       (.I0(\amount_paid[5]_i_3_n_0 ),
        .I1(\amount_paid_reg[4] ),
        .O(\amount_paid[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \amount_paid[7]_i_7 
       (.I0(\amount_paid[7]_i_6_n_0 ),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(\amount_paid[6]_i_2_n_0 ),
        .O(\amount_paid[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    button_pressed_i_1
       (.I0(debounced_money_input[3]),
        .I1(debounced_money_input[1]),
        .I2(debounced_money_input[0]),
        .I3(debounced_money_input[2]),
        .O(\stable_money_input_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[0]_i_2 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[3]),
        .O(\debounce_counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[0]_i_3 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[2]),
        .O(\debounce_counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[0]_i_4 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[1]),
        .O(\debounce_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \debounce_counter[0]_i_5 
       (.I0(debounce_counter_reg[0]),
        .I1(\stable_money_input[3]_i_5_n_0 ),
        .O(\debounce_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[12]_i_2 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[15]),
        .O(\debounce_counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[12]_i_3 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[14]),
        .O(\debounce_counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[12]_i_4 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[13]),
        .O(\debounce_counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[12]_i_5 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[12]),
        .O(\debounce_counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[16]_i_2 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[19]),
        .O(\debounce_counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[16]_i_3 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[18]),
        .O(\debounce_counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[16]_i_4 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[17]),
        .O(\debounce_counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[16]_i_5 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[16]),
        .O(\debounce_counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[4]_i_2 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[7]),
        .O(\debounce_counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[4]_i_3 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[6]),
        .O(\debounce_counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[4]_i_4 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[5]),
        .O(\debounce_counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[4]_i_5 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[4]),
        .O(\debounce_counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[8]_i_2 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[11]),
        .O(\debounce_counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[8]_i_3 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[10]),
        .O(\debounce_counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[8]_i_4 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[9]),
        .O(\debounce_counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \debounce_counter[8]_i_5 
       (.I0(\stable_money_input[3]_i_5_n_0 ),
        .I1(debounce_counter_reg[8]),
        .O(\debounce_counter[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[0]_i_1_n_7 ),
        .Q(debounce_counter_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debounce_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\debounce_counter_reg[0]_i_1_n_0 ,\NLW_debounce_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\stable_money_input[3]_i_5_n_0 }),
        .O({\debounce_counter_reg[0]_i_1_n_4 ,\debounce_counter_reg[0]_i_1_n_5 ,\debounce_counter_reg[0]_i_1_n_6 ,\debounce_counter_reg[0]_i_1_n_7 }),
        .S({\debounce_counter[0]_i_2_n_0 ,\debounce_counter[0]_i_3_n_0 ,\debounce_counter[0]_i_4_n_0 ,\debounce_counter[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[8]_i_1_n_5 ),
        .Q(debounce_counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[8]_i_1_n_4 ),
        .Q(debounce_counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[12]_i_1_n_7 ),
        .Q(debounce_counter_reg[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debounce_counter_reg[12]_i_1 
       (.CI(\debounce_counter_reg[8]_i_1_n_0 ),
        .CO({\debounce_counter_reg[12]_i_1_n_0 ,\NLW_debounce_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debounce_counter_reg[12]_i_1_n_4 ,\debounce_counter_reg[12]_i_1_n_5 ,\debounce_counter_reg[12]_i_1_n_6 ,\debounce_counter_reg[12]_i_1_n_7 }),
        .S({\debounce_counter[12]_i_2_n_0 ,\debounce_counter[12]_i_3_n_0 ,\debounce_counter[12]_i_4_n_0 ,\debounce_counter[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[12]_i_1_n_6 ),
        .Q(debounce_counter_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[12]_i_1_n_5 ),
        .Q(debounce_counter_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[12]_i_1_n_4 ),
        .Q(debounce_counter_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[16]_i_1_n_7 ),
        .Q(debounce_counter_reg[16]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debounce_counter_reg[16]_i_1 
       (.CI(\debounce_counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_debounce_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debounce_counter_reg[16]_i_1_n_4 ,\debounce_counter_reg[16]_i_1_n_5 ,\debounce_counter_reg[16]_i_1_n_6 ,\debounce_counter_reg[16]_i_1_n_7 }),
        .S({\debounce_counter[16]_i_2_n_0 ,\debounce_counter[16]_i_3_n_0 ,\debounce_counter[16]_i_4_n_0 ,\debounce_counter[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[16]_i_1_n_6 ),
        .Q(debounce_counter_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[16]_i_1_n_5 ),
        .Q(debounce_counter_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[16]_i_1_n_4 ),
        .Q(debounce_counter_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[0]_i_1_n_6 ),
        .Q(debounce_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[0]_i_1_n_5 ),
        .Q(debounce_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[0]_i_1_n_4 ),
        .Q(debounce_counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[4]_i_1_n_7 ),
        .Q(debounce_counter_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debounce_counter_reg[4]_i_1 
       (.CI(\debounce_counter_reg[0]_i_1_n_0 ),
        .CO({\debounce_counter_reg[4]_i_1_n_0 ,\NLW_debounce_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debounce_counter_reg[4]_i_1_n_4 ,\debounce_counter_reg[4]_i_1_n_5 ,\debounce_counter_reg[4]_i_1_n_6 ,\debounce_counter_reg[4]_i_1_n_7 }),
        .S({\debounce_counter[4]_i_2_n_0 ,\debounce_counter[4]_i_3_n_0 ,\debounce_counter[4]_i_4_n_0 ,\debounce_counter[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[4]_i_1_n_6 ),
        .Q(debounce_counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[4]_i_1_n_5 ),
        .Q(debounce_counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[4]_i_1_n_4 ),
        .Q(debounce_counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[8]_i_1_n_7 ),
        .Q(debounce_counter_reg[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \debounce_counter_reg[8]_i_1 
       (.CI(\debounce_counter_reg[4]_i_1_n_0 ),
        .CO({\debounce_counter_reg[8]_i_1_n_0 ,\NLW_debounce_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\debounce_counter_reg[8]_i_1_n_4 ,\debounce_counter_reg[8]_i_1_n_5 ,\debounce_counter_reg[8]_i_1_n_6 ,\debounce_counter_reg[8]_i_1_n_7 }),
        .S({\debounce_counter[8]_i_2_n_0 ,\debounce_counter[8]_i_3_n_0 ,\debounce_counter[8]_i_4_n_0 ,\debounce_counter[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\debounce_counter_reg[8]_i_1_n_6 ),
        .Q(debounce_counter_reg[9]));
  LUT5 #(
    .INIT(32'h6FFFFF6F)) 
    \money_input_prev[3]_i_1 
       (.I0(money_input_prev[1]),
        .I1(\money_input_prev_reg[3]_0 [1]),
        .I2(\money_input_prev[3]_i_2_n_0 ),
        .I3(\money_input_prev_reg[3]_0 [0]),
        .I4(money_input_prev[0]),
        .O(\money_input_prev[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \money_input_prev[3]_i_2 
       (.I0(\money_input_prev_reg[3]_0 [2]),
        .I1(money_input_prev[2]),
        .I2(\money_input_prev_reg[3]_0 [3]),
        .I3(money_input_prev[3]),
        .O(\money_input_prev[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \money_input_prev_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\money_input_prev[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\money_input_prev_reg[3]_0 [0]),
        .Q(money_input_prev[0]));
  FDCE #(
    .INIT(1'b0)) 
    \money_input_prev_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\money_input_prev[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\money_input_prev_reg[3]_0 [1]),
        .Q(money_input_prev[1]));
  FDCE #(
    .INIT(1'b0)) 
    \money_input_prev_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\money_input_prev[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\money_input_prev_reg[3]_0 [2]),
        .Q(money_input_prev[2]));
  FDCE #(
    .INIT(1'b0)) 
    \money_input_prev_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\money_input_prev[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\money_input_prev_reg[3]_0 [3]),
        .Q(money_input_prev[3]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \stable_money_input[3]_i_1 
       (.I0(\stable_money_input[3]_i_2_n_0 ),
        .I1(\stable_money_input[3]_i_3_n_0 ),
        .I2(\stable_money_input[3]_i_4_n_0 ),
        .I3(\stable_money_input[3]_i_5_n_0 ),
        .I4(debounce_counter_reg[0]),
        .I5(debounce_counter_reg[1]),
        .O(\stable_money_input[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \stable_money_input[3]_i_2 
       (.I0(debounce_counter_reg[4]),
        .I1(debounce_counter_reg[5]),
        .I2(debounce_counter_reg[2]),
        .I3(debounce_counter_reg[3]),
        .I4(debounce_counter_reg[7]),
        .I5(debounce_counter_reg[6]),
        .O(\stable_money_input[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \stable_money_input[3]_i_3 
       (.I0(debounce_counter_reg[10]),
        .I1(debounce_counter_reg[11]),
        .I2(debounce_counter_reg[8]),
        .I3(debounce_counter_reg[9]),
        .I4(debounce_counter_reg[13]),
        .I5(debounce_counter_reg[12]),
        .O(\stable_money_input[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \stable_money_input[3]_i_4 
       (.I0(debounce_counter_reg[16]),
        .I1(debounce_counter_reg[17]),
        .I2(debounce_counter_reg[14]),
        .I3(debounce_counter_reg[15]),
        .I4(debounce_counter_reg[19]),
        .I5(debounce_counter_reg[18]),
        .O(\stable_money_input[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h82000082)) 
    \stable_money_input[3]_i_5 
       (.I0(\money_input_prev[3]_i_2_n_0 ),
        .I1(money_input_prev[1]),
        .I2(\money_input_prev_reg[3]_0 [1]),
        .I3(money_input_prev[0]),
        .I4(\money_input_prev_reg[3]_0 [0]),
        .O(\stable_money_input[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \stable_money_input_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\stable_money_input[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\money_input_prev_reg[3]_0 [0]),
        .Q(debounced_money_input[0]));
  FDCE #(
    .INIT(1'b0)) 
    \stable_money_input_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\stable_money_input[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\money_input_prev_reg[3]_0 [1]),
        .Q(debounced_money_input[1]));
  FDCE #(
    .INIT(1'b0)) 
    \stable_money_input_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\stable_money_input[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\money_input_prev_reg[3]_0 [2]),
        .Q(debounced_money_input[2]));
  FDCE #(
    .INIT(1'b0)) 
    \stable_money_input_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\stable_money_input[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\money_input_prev_reg[3]_0 [3]),
        .Q(debounced_money_input[3]));
endmodule

module HexTo7Segment
   (seg_OBUF,
    AN_OBUF,
    DP_OBUF,
    CLK100MHZ_IBUF_BUFG,
    item_type_IBUF,
    sel0,
    O,
    \seg_OBUF[2]_inst_i_1_0 ,
    Q,
    \seg[5] ,
    \seg[0] ,
    \seg[2] ,
    \seg[6] ,
    \seg[6]_0 ,
    \seg_OBUF[2]_inst_i_1_1 ,
    \seg[1] ,
    \seg[1]_0 ,
    \seg_OBUF[4]_inst_i_1_0 ,
    \seg_OBUF[4]_inst_i_1_1 ,
    \seg_OBUF[3]_inst_i_4_0 ,
    \seg_OBUF[2]_inst_i_1_2 ,
    \seg_OBUF[1]_inst_i_1_0 ,
    \seg_OBUF[1]_inst_i_1_1 ,
    \seg_OBUF[4]_inst_i_6_0 ,
    \seg_OBUF[1]_inst_i_1_2 ,
    \seg_OBUF[4]_inst_i_1_2 ,
    \seg_OBUF[4]_inst_i_6_1 ,
    \seg_OBUF[6]_inst_i_1_0 ,
    \seg_OBUF[3]_inst_i_4_1 ,
    CO,
    \seg_OBUF[3]_inst_i_4_2 ,
    \seg_OBUF[6]_inst_i_1_1 );
  output [6:0]seg_OBUF;
  output [2:0]AN_OBUF;
  output DP_OBUF;
  input CLK100MHZ_IBUF_BUFG;
  input [2:0]item_type_IBUF;
  input [2:0]sel0;
  input [1:0]O;
  input \seg_OBUF[2]_inst_i_1_0 ;
  input [0:0]Q;
  input \seg[5] ;
  input \seg[0] ;
  input \seg[2] ;
  input \seg[6] ;
  input \seg[6]_0 ;
  input \seg_OBUF[2]_inst_i_1_1 ;
  input \seg[1] ;
  input \seg[1]_0 ;
  input \seg_OBUF[4]_inst_i_1_0 ;
  input \seg_OBUF[4]_inst_i_1_1 ;
  input \seg_OBUF[3]_inst_i_4_0 ;
  input \seg_OBUF[2]_inst_i_1_2 ;
  input \seg_OBUF[1]_inst_i_1_0 ;
  input \seg_OBUF[1]_inst_i_1_1 ;
  input [3:0]\seg_OBUF[4]_inst_i_6_0 ;
  input \seg_OBUF[1]_inst_i_1_2 ;
  input \seg_OBUF[4]_inst_i_1_2 ;
  input [0:0]\seg_OBUF[4]_inst_i_6_1 ;
  input [2:0]\seg_OBUF[6]_inst_i_1_0 ;
  input [0:0]\seg_OBUF[3]_inst_i_4_1 ;
  input [0:0]CO;
  input [1:0]\seg_OBUF[3]_inst_i_4_2 ;
  input [0:0]\seg_OBUF[6]_inst_i_1_1 ;

  wire [2:0]AN_OBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]CO;
  wire DP_OBUF;
  wire [1:0]O;
  wire [0:0]Q;
  wire \clkdiv[0]_i_2_n_0 ;
  wire \clkdiv_reg[0]_i_1_n_0 ;
  wire \clkdiv_reg[0]_i_1_n_4 ;
  wire \clkdiv_reg[0]_i_1_n_5 ;
  wire \clkdiv_reg[0]_i_1_n_6 ;
  wire \clkdiv_reg[0]_i_1_n_7 ;
  wire \clkdiv_reg[12]_i_1_n_0 ;
  wire \clkdiv_reg[12]_i_1_n_4 ;
  wire \clkdiv_reg[12]_i_1_n_5 ;
  wire \clkdiv_reg[12]_i_1_n_6 ;
  wire \clkdiv_reg[12]_i_1_n_7 ;
  wire \clkdiv_reg[16]_i_1_n_4 ;
  wire \clkdiv_reg[16]_i_1_n_5 ;
  wire \clkdiv_reg[16]_i_1_n_6 ;
  wire \clkdiv_reg[16]_i_1_n_7 ;
  wire \clkdiv_reg[4]_i_1_n_0 ;
  wire \clkdiv_reg[4]_i_1_n_4 ;
  wire \clkdiv_reg[4]_i_1_n_5 ;
  wire \clkdiv_reg[4]_i_1_n_6 ;
  wire \clkdiv_reg[4]_i_1_n_7 ;
  wire \clkdiv_reg[8]_i_1_n_0 ;
  wire \clkdiv_reg[8]_i_1_n_4 ;
  wire \clkdiv_reg[8]_i_1_n_5 ;
  wire \clkdiv_reg[8]_i_1_n_6 ;
  wire \clkdiv_reg[8]_i_1_n_7 ;
  wire \clkdiv_reg_n_0_[0] ;
  wire \clkdiv_reg_n_0_[10] ;
  wire \clkdiv_reg_n_0_[11] ;
  wire \clkdiv_reg_n_0_[12] ;
  wire \clkdiv_reg_n_0_[13] ;
  wire \clkdiv_reg_n_0_[14] ;
  wire \clkdiv_reg_n_0_[15] ;
  wire \clkdiv_reg_n_0_[16] ;
  wire \clkdiv_reg_n_0_[17] ;
  wire \clkdiv_reg_n_0_[1] ;
  wire \clkdiv_reg_n_0_[2] ;
  wire \clkdiv_reg_n_0_[3] ;
  wire \clkdiv_reg_n_0_[4] ;
  wire \clkdiv_reg_n_0_[5] ;
  wire \clkdiv_reg_n_0_[6] ;
  wire \clkdiv_reg_n_0_[7] ;
  wire \clkdiv_reg_n_0_[8] ;
  wire \clkdiv_reg_n_0_[9] ;
  wire [2:0]item_type_IBUF;
  wire [1:0]s;
  wire \seg[0] ;
  wire \seg[1] ;
  wire \seg[1]_0 ;
  wire \seg[2] ;
  wire \seg[5] ;
  wire \seg[6] ;
  wire \seg[6]_0 ;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[0]_inst_i_2_n_0 ;
  wire \seg_OBUF[0]_inst_i_4_n_0 ;
  wire \seg_OBUF[0]_inst_i_5_n_0 ;
  wire \seg_OBUF[0]_inst_i_6_n_0 ;
  wire \seg_OBUF[0]_inst_i_7_n_0 ;
  wire \seg_OBUF[1]_inst_i_1_0 ;
  wire \seg_OBUF[1]_inst_i_1_1 ;
  wire \seg_OBUF[1]_inst_i_1_2 ;
  wire \seg_OBUF[1]_inst_i_4_n_0 ;
  wire \seg_OBUF[1]_inst_i_5_n_0 ;
  wire \seg_OBUF[1]_inst_i_6_n_0 ;
  wire \seg_OBUF[1]_inst_i_7_n_0 ;
  wire \seg_OBUF[1]_inst_i_8_n_0 ;
  wire \seg_OBUF[2]_inst_i_10_n_0 ;
  wire \seg_OBUF[2]_inst_i_1_0 ;
  wire \seg_OBUF[2]_inst_i_1_1 ;
  wire \seg_OBUF[2]_inst_i_1_2 ;
  wire \seg_OBUF[2]_inst_i_2_n_0 ;
  wire \seg_OBUF[2]_inst_i_3_n_0 ;
  wire \seg_OBUF[2]_inst_i_4_n_0 ;
  wire \seg_OBUF[2]_inst_i_5_n_0 ;
  wire \seg_OBUF[3]_inst_i_2_n_0 ;
  wire \seg_OBUF[3]_inst_i_3_n_0 ;
  wire \seg_OBUF[3]_inst_i_4_0 ;
  wire [0:0]\seg_OBUF[3]_inst_i_4_1 ;
  wire [1:0]\seg_OBUF[3]_inst_i_4_2 ;
  wire \seg_OBUF[3]_inst_i_4_n_0 ;
  wire \seg_OBUF[3]_inst_i_5_n_0 ;
  wire \seg_OBUF[3]_inst_i_6_n_0 ;
  wire \seg_OBUF[3]_inst_i_7_n_0 ;
  wire \seg_OBUF[3]_inst_i_8_n_0 ;
  wire \seg_OBUF[4]_inst_i_1_0 ;
  wire \seg_OBUF[4]_inst_i_1_1 ;
  wire \seg_OBUF[4]_inst_i_1_2 ;
  wire \seg_OBUF[4]_inst_i_2_n_0 ;
  wire \seg_OBUF[4]_inst_i_3_n_0 ;
  wire \seg_OBUF[4]_inst_i_4_n_0 ;
  wire [3:0]\seg_OBUF[4]_inst_i_6_0 ;
  wire [0:0]\seg_OBUF[4]_inst_i_6_1 ;
  wire \seg_OBUF[4]_inst_i_6_n_0 ;
  wire \seg_OBUF[4]_inst_i_8_n_0 ;
  wire \seg_OBUF[4]_inst_i_9_n_0 ;
  wire \seg_OBUF[5]_inst_i_13_n_0 ;
  wire \seg_OBUF[5]_inst_i_17_n_0 ;
  wire \seg_OBUF[5]_inst_i_4_n_0 ;
  wire \seg_OBUF[5]_inst_i_5_n_0 ;
  wire \seg_OBUF[5]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_10_n_0 ;
  wire \seg_OBUF[6]_inst_i_11_n_0 ;
  wire \seg_OBUF[6]_inst_i_12_n_0 ;
  wire \seg_OBUF[6]_inst_i_13_n_0 ;
  wire [2:0]\seg_OBUF[6]_inst_i_1_0 ;
  wire [0:0]\seg_OBUF[6]_inst_i_1_1 ;
  wire \seg_OBUF[6]_inst_i_20_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire [2:0]sel0;
  wire [2:0]\NLW_clkdiv_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_clkdiv_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clkdiv_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_clkdiv_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_clkdiv_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \AN_OBUF[0]_inst_i_1 
       (.I0(s[0]),
        .I1(s[1]),
        .O(AN_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[1]_inst_i_1 
       (.I0(s[1]),
        .I1(s[0]),
        .O(AN_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[2]_inst_i_1 
       (.I0(s[0]),
        .I1(s[1]),
        .O(DP_OBUF));
  LUT2 #(
    .INIT(4'h7)) 
    \AN_OBUF[3]_inst_i_1 
       (.I0(s[1]),
        .I1(s[0]),
        .O(AN_OBUF[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \clkdiv[0]_i_2 
       (.I0(\clkdiv_reg_n_0_[0] ),
        .O(\clkdiv[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[0] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clkdiv_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clkdiv_reg[0]_i_1_n_0 ,\NLW_clkdiv_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clkdiv_reg[0]_i_1_n_4 ,\clkdiv_reg[0]_i_1_n_5 ,\clkdiv_reg[0]_i_1_n_6 ,\clkdiv_reg[0]_i_1_n_7 }),
        .S({\clkdiv_reg_n_0_[3] ,\clkdiv_reg_n_0_[2] ,\clkdiv_reg_n_0_[1] ,\clkdiv[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[12] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clkdiv_reg[12]_i_1 
       (.CI(\clkdiv_reg[8]_i_1_n_0 ),
        .CO({\clkdiv_reg[12]_i_1_n_0 ,\NLW_clkdiv_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[12]_i_1_n_4 ,\clkdiv_reg[12]_i_1_n_5 ,\clkdiv_reg[12]_i_1_n_6 ,\clkdiv_reg[12]_i_1_n_7 }),
        .S({\clkdiv_reg_n_0_[15] ,\clkdiv_reg_n_0_[14] ,\clkdiv_reg_n_0_[13] ,\clkdiv_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[16] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clkdiv_reg[16]_i_1 
       (.CI(\clkdiv_reg[12]_i_1_n_0 ),
        .CO(\NLW_clkdiv_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[16]_i_1_n_4 ,\clkdiv_reg[16]_i_1_n_5 ,\clkdiv_reg[16]_i_1_n_6 ,\clkdiv_reg[16]_i_1_n_7 }),
        .S({s,\clkdiv_reg_n_0_[17] ,\clkdiv_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_5 ),
        .Q(s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_4 ),
        .Q(s[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[4] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clkdiv_reg[4]_i_1 
       (.CI(\clkdiv_reg[0]_i_1_n_0 ),
        .CO({\clkdiv_reg[4]_i_1_n_0 ,\NLW_clkdiv_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[4]_i_1_n_4 ,\clkdiv_reg[4]_i_1_n_5 ,\clkdiv_reg[4]_i_1_n_6 ,\clkdiv_reg[4]_i_1_n_7 }),
        .S({\clkdiv_reg_n_0_[7] ,\clkdiv_reg_n_0_[6] ,\clkdiv_reg_n_0_[5] ,\clkdiv_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[8] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clkdiv_reg[8]_i_1 
       (.CI(\clkdiv_reg[4]_i_1_n_0 ),
        .CO({\clkdiv_reg[8]_i_1_n_0 ,\NLW_clkdiv_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[8]_i_1_n_4 ,\clkdiv_reg[8]_i_1_n_5 ,\clkdiv_reg[8]_i_1_n_6 ,\clkdiv_reg[8]_i_1_n_7 }),
        .S({\clkdiv_reg_n_0_[11] ,\clkdiv_reg_n_0_[10] ,\clkdiv_reg_n_0_[9] ,\clkdiv_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAEA)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[0]_inst_i_2_n_0 ),
        .I1(\seg[0] ),
        .I2(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I3(item_type_IBUF[1]),
        .I4(\seg_OBUF[5]_inst_i_4_n_0 ),
        .I5(\seg_OBUF[0]_inst_i_4_n_0 ),
        .O(seg_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAABA)) 
    \seg_OBUF[0]_inst_i_2 
       (.I0(\seg_OBUF[0]_inst_i_5_n_0 ),
        .I1(Q),
        .I2(sel0[1]),
        .I3(AN_OBUF[1]),
        .I4(\seg_OBUF[4]_inst_i_1_0 ),
        .I5(\seg_OBUF[0]_inst_i_6_n_0 ),
        .O(\seg_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010100010000010)) 
    \seg_OBUF[0]_inst_i_4 
       (.I0(AN_OBUF[1]),
        .I1(sel0[1]),
        .I2(Q),
        .I3(\seg_OBUF[2]_inst_i_1_0 ),
        .I4(O[0]),
        .I5(sel0[2]),
        .O(\seg_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABAABAAAAAAAABBA)) 
    \seg_OBUF[0]_inst_i_5 
       (.I0(\seg_OBUF[0]_inst_i_7_n_0 ),
        .I1(AN_OBUF[2]),
        .I2(\seg_OBUF[4]_inst_i_1_1 ),
        .I3(\seg_OBUF[3]_inst_i_4_0 ),
        .I4(\seg_OBUF[2]_inst_i_1_2 ),
        .I5(\seg[1]_0 ),
        .O(\seg_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000004004)) 
    \seg_OBUF[0]_inst_i_6 
       (.I0(DP_OBUF),
        .I1(\seg_OBUF[4]_inst_i_6_0 [0]),
        .I2(\seg_OBUF[4]_inst_i_6_0 [3]),
        .I3(\seg_OBUF[4]_inst_i_6_0 [1]),
        .I4(\seg_OBUF[4]_inst_i_6_0 [2]),
        .I5(\seg_OBUF[4]_inst_i_6_1 ),
        .O(\seg_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040050000100)) 
    \seg_OBUF[0]_inst_i_7 
       (.I0(DP_OBUF),
        .I1(\seg_OBUF[4]_inst_i_6_1 ),
        .I2(\seg_OBUF[4]_inst_i_6_0 [3]),
        .I3(\seg_OBUF[4]_inst_i_6_0 [2]),
        .I4(\seg_OBUF[4]_inst_i_6_0 [1]),
        .I5(\seg_OBUF[4]_inst_i_6_0 [0]),
        .O(\seg_OBUF[0]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\seg[1] ),
        .I1(\seg[1]_0 ),
        .I2(s[0]),
        .I3(s[1]),
        .I4(\seg_OBUF[1]_inst_i_4_n_0 ),
        .I5(\seg_OBUF[1]_inst_i_5_n_0 ),
        .O(seg_OBUF[1]));
  LUT6 #(
    .INIT(64'hAAAAEBFEAAAAEAAA)) 
    \seg_OBUF[1]_inst_i_4 
       (.I0(\seg_OBUF[1]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_1_0 ),
        .I2(\seg_OBUF[1]_inst_i_1_2 ),
        .I3(\seg_OBUF[4]_inst_i_6_0 [0]),
        .I4(DP_OBUF),
        .I5(\seg_OBUF[1]_inst_i_1_1 ),
        .O(\seg_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAFEAABAAABAAAEA)) 
    \seg_OBUF[1]_inst_i_5 
       (.I0(\seg_OBUF[1]_inst_i_7_n_0 ),
        .I1(Q),
        .I2(sel0[1]),
        .I3(AN_OBUF[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\seg_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8888888888888)) 
    \seg_OBUF[1]_inst_i_6 
       (.I0(\seg[6]_0 ),
        .I1(\seg_OBUF[1]_inst_i_8_n_0 ),
        .I2(item_type_IBUF[1]),
        .I3(item_type_IBUF[0]),
        .I4(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I5(item_type_IBUF[2]),
        .O(\seg_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ABA80000)) 
    \seg_OBUF[1]_inst_i_7 
       (.I0(\seg_OBUF[3]_inst_i_4_2 [0]),
        .I1(CO),
        .I2(\seg_OBUF[3]_inst_i_4_1 ),
        .I3(\seg_OBUF[6]_inst_i_1_0 [0]),
        .I4(\seg_OBUF[6]_inst_i_11_n_0 ),
        .I5(\seg[6]_0 ),
        .O(\seg_OBUF[1]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0002AAA2)) 
    \seg_OBUF[1]_inst_i_8 
       (.I0(\seg_OBUF[6]_inst_i_11_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_1_0 [0]),
        .I2(\seg_OBUF[3]_inst_i_4_1 ),
        .I3(CO),
        .I4(\seg_OBUF[3]_inst_i_4_2 [0]),
        .O(\seg_OBUF[1]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[2]_inst_i_2_n_0 ),
        .I1(\seg[2] ),
        .I2(sel0[2]),
        .I3(\seg_OBUF[2]_inst_i_3_n_0 ),
        .I4(\seg_OBUF[2]_inst_i_4_n_0 ),
        .I5(\seg_OBUF[2]_inst_i_5_n_0 ),
        .O(seg_OBUF[2]));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \seg_OBUF[2]_inst_i_10 
       (.I0(\seg_OBUF[4]_inst_i_1_2 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I2(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I3(item_type_IBUF[2]),
        .I4(item_type_IBUF[1]),
        .I5(item_type_IBUF[0]),
        .O(\seg_OBUF[2]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000695A0000)) 
    \seg_OBUF[2]_inst_i_2 
       (.I0(O[1]),
        .I1(O[0]),
        .I2(\seg_OBUF[2]_inst_i_1_1 ),
        .I3(\seg_OBUF[2]_inst_i_1_0 ),
        .I4(s[0]),
        .I5(s[1]),
        .O(\seg_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \seg_OBUF[2]_inst_i_3 
       (.I0(\seg[1]_0 ),
        .I1(\seg_OBUF[2]_inst_i_1_2 ),
        .I2(\seg_OBUF[3]_inst_i_4_0 ),
        .I3(\seg_OBUF[4]_inst_i_1_1 ),
        .I4(s[1]),
        .I5(s[0]),
        .O(\seg_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000014)) 
    \seg_OBUF[2]_inst_i_4 
       (.I0(sel0[2]),
        .I1(O[0]),
        .I2(\seg_OBUF[2]_inst_i_1_0 ),
        .I3(Q),
        .I4(sel0[1]),
        .I5(AN_OBUF[1]),
        .O(\seg_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08090008)) 
    \seg_OBUF[2]_inst_i_5 
       (.I0(\seg_OBUF[1]_inst_i_1_0 ),
        .I1(\seg_OBUF[1]_inst_i_1_1 ),
        .I2(DP_OBUF),
        .I3(\seg_OBUF[4]_inst_i_6_0 [0]),
        .I4(\seg_OBUF[1]_inst_i_1_2 ),
        .I5(\seg_OBUF[2]_inst_i_10_n_0 ),
        .O(\seg_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD75DD75DD75D0000)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I1(item_type_IBUF[2]),
        .I2(item_type_IBUF[1]),
        .I3(item_type_IBUF[0]),
        .I4(\seg_OBUF[3]_inst_i_3_n_0 ),
        .I5(\seg_OBUF[3]_inst_i_4_n_0 ),
        .O(seg_OBUF[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \seg_OBUF[3]_inst_i_2 
       (.I0(s[1]),
        .I1(s[0]),
        .O(\seg_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003C414128)) 
    \seg_OBUF[3]_inst_i_3 
       (.I0(sel0[2]),
        .I1(O[0]),
        .I2(\seg_OBUF[2]_inst_i_1_0 ),
        .I3(Q),
        .I4(sel0[1]),
        .I5(s[1]),
        .O(\seg_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF04)) 
    \seg_OBUF[3]_inst_i_4 
       (.I0(\seg[6]_0 ),
        .I1(\seg_OBUF[6]_inst_i_11_n_0 ),
        .I2(\seg_OBUF[3]_inst_i_4_0 ),
        .I3(\seg_OBUF[3]_inst_i_5_n_0 ),
        .I4(\seg_OBUF[3]_inst_i_6_n_0 ),
        .I5(\seg_OBUF[3]_inst_i_7_n_0 ),
        .O(\seg_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1104440000010044)) 
    \seg_OBUF[3]_inst_i_5 
       (.I0(s[0]),
        .I1(\seg_OBUF[4]_inst_i_6_0 [0]),
        .I2(\seg_OBUF[4]_inst_i_6_1 ),
        .I3(\seg_OBUF[4]_inst_i_6_0 [3]),
        .I4(\seg_OBUF[4]_inst_i_6_0 [2]),
        .I5(\seg_OBUF[4]_inst_i_6_0 [1]),
        .O(\seg_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9191111119111111)) 
    \seg_OBUF[3]_inst_i_6 
       (.I0(s[0]),
        .I1(s[1]),
        .I2(\seg_OBUF[4]_inst_i_1_1 ),
        .I3(\seg[1]_0 ),
        .I4(\seg_OBUF[2]_inst_i_1_2 ),
        .I5(\seg_OBUF[3]_inst_i_4_0 ),
        .O(\seg_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \seg_OBUF[3]_inst_i_7 
       (.I0(s[0]),
        .I1(s[1]),
        .I2(\seg_OBUF[4]_inst_i_1_1 ),
        .I3(\seg_OBUF[3]_inst_i_4_0 ),
        .I4(\seg[6]_0 ),
        .I5(\seg_OBUF[3]_inst_i_8_n_0 ),
        .O(\seg_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000104000)) 
    \seg_OBUF[3]_inst_i_8 
       (.I0(s[0]),
        .I1(\seg_OBUF[4]_inst_i_6_0 [0]),
        .I2(\seg_OBUF[4]_inst_i_6_1 ),
        .I3(\seg_OBUF[4]_inst_i_6_0 [3]),
        .I4(\seg_OBUF[4]_inst_i_6_0 [2]),
        .I5(\seg_OBUF[4]_inst_i_6_0 [1]),
        .O(\seg_OBUF[3]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEFEEE)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[4]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_3_n_0 ),
        .I2(sel0[2]),
        .I3(\seg_OBUF[4]_inst_i_4_n_0 ),
        .I4(\seg[2] ),
        .I5(\seg_OBUF[4]_inst_i_6_n_0 ),
        .O(seg_OBUF[4]));
  LUT6 #(
    .INIT(64'h222200000F000000)) 
    \seg_OBUF[4]_inst_i_2 
       (.I0(\seg_OBUF[3]_inst_i_4_0 ),
        .I1(\seg[1]_0 ),
        .I2(sel0[2]),
        .I3(Q),
        .I4(s[0]),
        .I5(s[1]),
        .O(\seg_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444400000F000000)) 
    \seg_OBUF[4]_inst_i_3 
       (.I0(\seg[6]_0 ),
        .I1(\seg_OBUF[4]_inst_i_1_1 ),
        .I2(\seg_OBUF[4]_inst_i_1_0 ),
        .I3(sel0[1]),
        .I4(s[0]),
        .I5(s[1]),
        .O(\seg_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2002022020200202)) 
    \seg_OBUF[4]_inst_i_4 
       (.I0(s[0]),
        .I1(s[1]),
        .I2(O[1]),
        .I3(O[0]),
        .I4(\seg_OBUF[2]_inst_i_1_1 ),
        .I5(\seg_OBUF[2]_inst_i_1_0 ),
        .O(\seg_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h04FF04FF04FF0400)) 
    \seg_OBUF[4]_inst_i_6 
       (.I0(\seg_OBUF[4]_inst_i_1_2 ),
        .I1(s[1]),
        .I2(\seg_OBUF[4]_inst_i_1_1 ),
        .I3(s[0]),
        .I4(\seg_OBUF[4]_inst_i_8_n_0 ),
        .I5(\seg_OBUF[4]_inst_i_9_n_0 ),
        .O(\seg_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hADFF809000000000)) 
    \seg_OBUF[4]_inst_i_8 
       (.I0(\seg_OBUF[4]_inst_i_6_0 [3]),
        .I1(\seg_OBUF[4]_inst_i_6_0 [1]),
        .I2(\seg_OBUF[4]_inst_i_6_0 [2]),
        .I3(\seg_OBUF[4]_inst_i_6_1 ),
        .I4(\seg_OBUF[4]_inst_i_6_0 [0]),
        .I5(s[1]),
        .O(\seg_OBUF[4]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0F02)) 
    \seg_OBUF[4]_inst_i_9 
       (.I0(item_type_IBUF[2]),
        .I1(item_type_IBUF[1]),
        .I2(s[1]),
        .I3(item_type_IBUF[0]),
        .O(\seg_OBUF[4]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF02)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\seg[5] ),
        .I1(sel0[2]),
        .I2(AN_OBUF[1]),
        .I3(\seg_OBUF[5]_inst_i_4_n_0 ),
        .I4(\seg_OBUF[5]_inst_i_5_n_0 ),
        .I5(\seg_OBUF[5]_inst_i_6_n_0 ),
        .O(seg_OBUF[5]));
  LUT6 #(
    .INIT(64'h0800080000000080)) 
    \seg_OBUF[5]_inst_i_13 
       (.I0(\seg_OBUF[6]_inst_i_20_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_6_0 [0]),
        .I2(\seg_OBUF[4]_inst_i_6_0 [3]),
        .I3(\seg_OBUF[4]_inst_i_6_0 [1]),
        .I4(\seg_OBUF[4]_inst_i_6_0 [2]),
        .I5(\seg_OBUF[4]_inst_i_6_1 ),
        .O(\seg_OBUF[5]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0004440555000044)) 
    \seg_OBUF[5]_inst_i_17 
       (.I0(DP_OBUF),
        .I1(\seg_OBUF[4]_inst_i_6_0 [0]),
        .I2(\seg_OBUF[4]_inst_i_6_1 ),
        .I3(\seg_OBUF[4]_inst_i_6_0 [3]),
        .I4(\seg_OBUF[4]_inst_i_6_0 [2]),
        .I5(\seg_OBUF[4]_inst_i_6_0 [1]),
        .O(\seg_OBUF[5]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \seg_OBUF[5]_inst_i_4 
       (.I0(\seg_OBUF[5]_inst_i_13_n_0 ),
        .I1(sel0[0]),
        .I2(Q),
        .I3(AN_OBUF[1]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\seg_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000D4)) 
    \seg_OBUF[5]_inst_i_5 
       (.I0(\seg_OBUF[4]_inst_i_1_1 ),
        .I1(\seg_OBUF[3]_inst_i_4_0 ),
        .I2(\seg_OBUF[2]_inst_i_1_2 ),
        .I3(\seg[1]_0 ),
        .I4(AN_OBUF[2]),
        .I5(\seg_OBUF[5]_inst_i_17_n_0 ),
        .O(\seg_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF2F222F222F22222)) 
    \seg_OBUF[5]_inst_i_6 
       (.I0(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_1_2 ),
        .I2(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I3(item_type_IBUF[2]),
        .I4(item_type_IBUF[1]),
        .I5(item_type_IBUF[0]),
        .O(\seg_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFEEEFE)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg[6] ),
        .I4(\seg[6]_0 ),
        .I5(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(seg_OBUF[6]));
  LUT6 #(
    .INIT(64'h0000202100000000)) 
    \seg_OBUF[6]_inst_i_10 
       (.I0(\seg_OBUF[4]_inst_i_6_0 [1]),
        .I1(\seg_OBUF[4]_inst_i_6_0 [2]),
        .I2(\seg_OBUF[4]_inst_i_6_0 [3]),
        .I3(\seg_OBUF[4]_inst_i_6_1 ),
        .I4(s[0]),
        .I5(s[1]),
        .O(\seg_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFE02000000000000)) 
    \seg_OBUF[6]_inst_i_11 
       (.I0(\seg_OBUF[6]_inst_i_1_0 [1]),
        .I1(\seg_OBUF[3]_inst_i_4_1 ),
        .I2(CO),
        .I3(\seg_OBUF[3]_inst_i_4_2 [1]),
        .I4(s[0]),
        .I5(s[1]),
        .O(\seg_OBUF[6]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h10000101)) 
    \seg_OBUF[6]_inst_i_12 
       (.I0(s[1]),
        .I1(s[0]),
        .I2(item_type_IBUF[2]),
        .I3(item_type_IBUF[0]),
        .I4(item_type_IBUF[1]),
        .O(\seg_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0208020880800820)) 
    \seg_OBUF[6]_inst_i_13 
       (.I0(\seg_OBUF[6]_inst_i_20_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_6_0 [0]),
        .I2(\seg_OBUF[4]_inst_i_6_0 [3]),
        .I3(\seg_OBUF[4]_inst_i_6_1 ),
        .I4(\seg_OBUF[4]_inst_i_6_0 [2]),
        .I5(\seg_OBUF[4]_inst_i_6_0 [1]),
        .O(\seg_OBUF[6]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00420011)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(Q),
        .I3(AN_OBUF[1]),
        .I4(sel0[1]),
        .I5(\seg_OBUF[6]_inst_i_10_n_0 ),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F01A0000)) 
    \seg_OBUF[6]_inst_i_20 
       (.I0(\seg_OBUF[4]_inst_i_6_1 ),
        .I1(\seg_OBUF[4]_inst_i_6_0 [3]),
        .I2(\seg_OBUF[4]_inst_i_6_0 [2]),
        .I3(\seg_OBUF[4]_inst_i_6_0 [1]),
        .I4(s[1]),
        .I5(s[0]),
        .O(\seg_OBUF[6]_inst_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(\seg[1]_0 ),
        .I1(\seg_OBUF[6]_inst_i_11_n_0 ),
        .I2(\seg[1] ),
        .I3(\seg_OBUF[6]_inst_i_12_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_13_n_0 ),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(\seg_OBUF[6]_inst_i_11_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_1_0 [2]),
        .I2(\seg_OBUF[3]_inst_i_4_1 ),
        .I3(CO),
        .I4(\seg_OBUF[6]_inst_i_1_1 ),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000888888808)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(s[0]),
        .I1(s[1]),
        .I2(\seg_OBUF[6]_inst_i_1_0 [1]),
        .I3(\seg_OBUF[3]_inst_i_4_1 ),
        .I4(CO),
        .I5(\seg_OBUF[3]_inst_i_4_2 [1]),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
