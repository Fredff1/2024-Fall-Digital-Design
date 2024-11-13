// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Thu Nov  7 19:46:34 2024
// Host        : FredMachine running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Courses/CS_Cousrces/2024 Fall Digital
//               Design/Lab_2/Lab_2/Lab_2.sim/sim_1/impl/timing/xsim/ALU_tb_time_impl.v}
// Design      : ALU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "46037172" *) 
(* NotValidForBitStream *)
module ALU
   (CLK100MHZ,
    A,
    B,
    type,
    seg,
    AN,
    DP,
    result);
  input CLK100MHZ;
  input [3:0]A;
  input [3:0]B;
  input [1:0]type;
  output [6:0]seg;
  output [7:0]AN;
  output DP;
  output [7:0]result;

  wire [3:0]A;
  wire [7:0]AN;
  wire [1:0]AN_OBUF;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire DP;
  wire [7:0]result;
  wire [7:0]result_OBUF;
  wire \result_OBUF[1]_inst_i_2_n_0 ;
  wire \result_OBUF[1]_inst_i_3_n_0 ;
  wire \result_OBUF[1]_inst_i_4_n_0 ;
  wire \result_OBUF[2]_inst_i_3_n_0 ;
  wire \result_OBUF[3]_inst_i_2_n_0 ;
  wire \result_OBUF[3]_inst_i_3_n_0 ;
  wire \result_OBUF[4]_inst_i_2_n_0 ;
  wire \result_OBUF[4]_inst_i_4_n_0 ;
  wire \result_OBUF[7]_inst_i_2_n_0 ;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [2:2]subtract_result;
  wire [1:0]type;
  wire [1:0]type_IBUF;

initial begin
 $sdf_annotate("ALU_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(1'b1),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(1'b1),
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
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  OBUF DP_OBUF_inst
       (.I(1'b1),
        .O(DP));
  HexTo7Segment display
       (.AN_OBUF(AN_OBUF),
        .CLK100MHZ(CLK100MHZ_IBUF_BUFG));
  Multiplier multiply_instance
       (.AN_OBUF(AN_OBUF[0]),
        .A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .\result[1] (\result_OBUF[1]_inst_i_2_n_0 ),
        .\result[1]_0 (\result_OBUF[1]_inst_i_3_n_0 ),
        .\result[1]_1 (\result_OBUF[1]_inst_i_4_n_0 ),
        .\result[2] (\result_OBUF[2]_inst_i_3_n_0 ),
        .\result[3] (\result_OBUF[7]_inst_i_2_n_0 ),
        .\result[3]_0 (\result_OBUF[3]_inst_i_2_n_0 ),
        .\result[3]_1 (\result_OBUF[3]_inst_i_3_n_0 ),
        .\result[4] (\result_OBUF[4]_inst_i_2_n_0 ),
        .result_OBUF(result_OBUF),
        .seg_OBUF(seg_OBUF),
        .subtract_result(subtract_result),
        .type_IBUF(type_IBUF));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \result_OBUF[1]_inst_i_2 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .O(\result_OBUF[1]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[1]_inst_i_3 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .O(\result_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEBEEBEBEB)) 
    \result_OBUF[1]_inst_i_4 
       (.I0(type_IBUF[0]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[1]),
        .I3(B_IBUF[0]),
        .I4(A_IBUF[0]),
        .I5(type_IBUF[1]),
        .O(\result_OBUF[1]_inst_i_4_n_0 ));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    \result_OBUF[2]_inst_i_2 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[1]),
        .I4(A_IBUF[2]),
        .I5(B_IBUF[2]),
        .O(subtract_result));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \result_OBUF[2]_inst_i_3 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[1]),
        .I4(B_IBUF[2]),
        .I5(A_IBUF[2]),
        .O(\result_OBUF[2]_inst_i_3_n_0 ));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[3]_inst_i_2 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .O(\result_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEEEEBEEB)) 
    \result_OBUF[3]_inst_i_3 
       (.I0(type_IBUF[0]),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[3]),
        .I3(\result_OBUF[4]_inst_i_4_n_0 ),
        .I4(type_IBUF[1]),
        .O(\result_OBUF[3]_inst_i_3_n_0 ));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  LUT4 #(
    .INIT(16'h00E8)) 
    \result_OBUF[4]_inst_i_2 
       (.I0(\result_OBUF[4]_inst_i_4_n_0 ),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[3]),
        .I3(type_IBUF[1]),
        .O(\result_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \result_OBUF[4]_inst_i_4 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[0]),
        .I4(A_IBUF[1]),
        .I5(B_IBUF[1]),
        .O(\result_OBUF[4]_inst_i_4_n_0 ));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  OBUF \result_OBUF[7]_inst 
       (.I(result_OBUF[7]),
        .O(result[7]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \result_OBUF[7]_inst_i_2 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[0]),
        .I4(A_IBUF[1]),
        .I5(B_IBUF[1]),
        .O(\result_OBUF[7]_inst_i_2_n_0 ));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  IBUF \type_IBUF[0]_inst 
       (.I(type[0]),
        .O(type_IBUF[0]));
  IBUF \type_IBUF[1]_inst 
       (.I(type[1]),
        .O(type_IBUF[1]));
endmodule

module HexTo7Segment
   (AN_OBUF,
    CLK100MHZ);
  output [1:0]AN_OBUF;
  input CLK100MHZ;

  wire [1:0]AN_OBUF;
  wire CLK100MHZ;
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
  wire \clkdiv_reg_n_0_[18] ;
  wire \clkdiv_reg_n_0_[1] ;
  wire \clkdiv_reg_n_0_[2] ;
  wire \clkdiv_reg_n_0_[3] ;
  wire \clkdiv_reg_n_0_[4] ;
  wire \clkdiv_reg_n_0_[5] ;
  wire \clkdiv_reg_n_0_[6] ;
  wire \clkdiv_reg_n_0_[7] ;
  wire \clkdiv_reg_n_0_[8] ;
  wire \clkdiv_reg_n_0_[9] ;
  wire [2:0]\NLW_clkdiv_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_clkdiv_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clkdiv_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_clkdiv_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_clkdiv_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \AN_OBUF[1]_inst_i_1 
       (.I0(AN_OBUF[0]),
        .O(AN_OBUF[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \clkdiv[0]_i_2 
       (.I0(\clkdiv_reg_n_0_[0] ),
        .O(\clkdiv[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[0] 
       (.C(CLK100MHZ),
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
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[11] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[12] 
       (.C(CLK100MHZ),
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
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[14] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[15] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[16] 
       (.C(CLK100MHZ),
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
        .S({AN_OBUF[0],\clkdiv_reg_n_0_[18] ,\clkdiv_reg_n_0_[17] ,\clkdiv_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[17] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[18] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[19] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_4 ),
        .Q(AN_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[1] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[2] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[3] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[4] 
       (.C(CLK100MHZ),
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
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[6] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[7] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[8] 
       (.C(CLK100MHZ),
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
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module Multiplier
   (seg_OBUF,
    result_OBUF,
    B_IBUF,
    A_IBUF,
    AN_OBUF,
    type_IBUF,
    \result[1] ,
    \result[1]_0 ,
    \result[1]_1 ,
    subtract_result,
    \result[2] ,
    \result[3] ,
    \result[3]_0 ,
    \result[3]_1 ,
    \result[4] );
  output [6:0]seg_OBUF;
  output [7:0]result_OBUF;
  input [3:0]B_IBUF;
  input [3:0]A_IBUF;
  input [0:0]AN_OBUF;
  input [1:0]type_IBUF;
  input \result[1] ;
  input \result[1]_0 ;
  input \result[1]_1 ;
  input [0:0]subtract_result;
  input \result[2] ;
  input \result[3] ;
  input \result[3]_0 ;
  input \result[3]_1 ;
  input \result[4] ;

  wire [0:0]AN_OBUF;
  wire [3:0]A_IBUF;
  wire [3:0]B_IBUF;
  wire [7:0]O;
  wire O__1_carry__0_i_10_n_0;
  wire O__1_carry__0_i_1_n_0;
  wire O__1_carry__0_i_2_n_0;
  wire O__1_carry__0_i_3_n_0;
  wire O__1_carry__0_i_4_n_0;
  wire O__1_carry__0_i_5_n_0;
  wire O__1_carry__0_i_6_n_0;
  wire O__1_carry__0_i_7_n_0;
  wire O__1_carry__0_i_8_n_0;
  wire O__1_carry__0_i_9_n_0;
  wire O__1_carry_i_1_n_0;
  wire O__1_carry_i_2_n_0;
  wire O__1_carry_i_3_n_0;
  wire O__1_carry_i_4_n_0;
  wire O__1_carry_i_5_n_0;
  wire O__1_carry_i_6_n_0;
  wire O__1_carry_i_7_n_0;
  wire O__1_carry_i_8_n_0;
  wire O__1_carry_i_9_n_0;
  wire O__1_carry_n_0;
  wire \result[1] ;
  wire \result[1]_0 ;
  wire \result[1]_1 ;
  wire \result[2] ;
  wire \result[3] ;
  wire \result[3]_0 ;
  wire \result[3]_1 ;
  wire \result[4] ;
  wire [7:0]result_OBUF;
  wire \result_OBUF[4]_inst_i_3_n_0 ;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[0]_inst_i_2_n_0 ;
  wire \seg_OBUF[1]_inst_i_2_n_0 ;
  wire \seg_OBUF[2]_inst_i_2_n_0 ;
  wire \seg_OBUF[3]_inst_i_2_n_0 ;
  wire \seg_OBUF[4]_inst_i_2_n_0 ;
  wire \seg_OBUF[5]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire [0:0]subtract_result;
  wire [1:0]type_IBUF;
  wire [2:0]NLW_O__1_carry_CO_UNCONNECTED;
  wire [2:0]NLW_O__1_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_O__1_carry__0_O_UNCONNECTED;

  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 O__1_carry
       (.CI(1'b0),
        .CO({O__1_carry_n_0,NLW_O__1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({O__1_carry_i_1_n_0,O__1_carry_i_2_n_0,O__1_carry_i_3_n_0,1'b0}),
        .O(O[3:0]),
        .S({O__1_carry_i_4_n_0,O__1_carry_i_5_n_0,O__1_carry_i_6_n_0,O__1_carry_i_7_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 O__1_carry__0
       (.CI(O__1_carry_n_0),
        .CO({O[7],NLW_O__1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,O__1_carry__0_i_1_n_0,O__1_carry__0_i_2_n_0,O__1_carry__0_i_3_n_0}),
        .O({NLW_O__1_carry__0_O_UNCONNECTED[3],O[6:4]}),
        .S({1'b1,O__1_carry__0_i_4_n_0,O__1_carry__0_i_5_n_0,O__1_carry__0_i_6_n_0}));
  LUT6 #(
    .INIT(64'hE8808080C0008000)) 
    O__1_carry__0_i_1
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[1]),
        .I5(A_IBUF[1]),
        .O(O__1_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    O__1_carry__0_i_10
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[2]),
        .O(O__1_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h2A80802A802A802A)) 
    O__1_carry__0_i_2
       (.I0(O__1_carry__0_i_7_n_0),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[2]),
        .I3(O__1_carry__0_i_8_n_0),
        .I4(A_IBUF[3]),
        .I5(B_IBUF[1]),
        .O(O__1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    O__1_carry__0_i_3
       (.I0(O__1_carry__0_i_7_n_0),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[2]),
        .I3(O__1_carry__0_i_8_n_0),
        .I4(A_IBUF[3]),
        .I5(B_IBUF[1]),
        .O(O__1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h077FC000A0000000)) 
    O__1_carry__0_i_4
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[2]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[3]),
        .O(O__1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    O__1_carry__0_i_5
       (.I0(O__1_carry__0_i_2_n_0),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[3]),
        .I3(B_IBUF[3]),
        .I4(A_IBUF[2]),
        .I5(O__1_carry__0_i_9_n_0),
        .O(O__1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6A55AA6AAA6AAA6A)) 
    O__1_carry__0_i_6
       (.I0(O__1_carry__0_i_3_n_0),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[1]),
        .I3(O__1_carry__0_i_10_n_0),
        .I4(A_IBUF[0]),
        .I5(B_IBUF[3]),
        .O(O__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    O__1_carry__0_i_7
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[2]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[3]),
        .O(O__1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    O__1_carry__0_i_8
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[3]),
        .O(O__1_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    O__1_carry__0_i_9
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[2]),
        .I4(B_IBUF[1]),
        .I5(A_IBUF[3]),
        .O(O__1_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    O__1_carry_i_1
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[0]),
        .I4(A_IBUF[2]),
        .I5(B_IBUF[1]),
        .O(O__1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    O__1_carry_i_2
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[0]),
        .O(O__1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    O__1_carry_i_3
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[1]),
        .O(O__1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6A95)) 
    O__1_carry_i_4
       (.I0(O__1_carry_i_8_n_0),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[0]),
        .I3(O__1_carry_i_9_n_0),
        .O(O__1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    O__1_carry_i_5
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[1]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[2]),
        .O(O__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    O__1_carry_i_6
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[0]),
        .O(O__1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    O__1_carry_i_7
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .O(O__1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    O__1_carry_i_8
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[2]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[3]),
        .I4(A_IBUF[1]),
        .I5(B_IBUF[2]),
        .O(O__1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    O__1_carry_i_9
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[1]),
        .O(O__1_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h8BB80F3C)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(O[0]),
        .I1(type_IBUF[1]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[0]),
        .I4(type_IBUF[0]),
        .O(result_OBUF[0]));
  LUT6 #(
    .INIT(64'h8A80808AFFFFFFFF)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(type_IBUF[0]),
        .I1(O[1]),
        .I2(type_IBUF[1]),
        .I3(\result[1] ),
        .I4(\result[1]_0 ),
        .I5(\result[1]_1 ),
        .O(result_OBUF[1]));
  LUT6 #(
    .INIT(64'hAACCAACC0FFF0F00)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(O[2]),
        .I1(subtract_result),
        .I2(A_IBUF[2]),
        .I3(type_IBUF[1]),
        .I4(\result[2] ),
        .I5(type_IBUF[0]),
        .O(result_OBUF[2]));
  LUT6 #(
    .INIT(64'h8A80808AFFFFFFFF)) 
    \result_OBUF[3]_inst_i_1 
       (.I0(type_IBUF[0]),
        .I1(O[3]),
        .I2(type_IBUF[1]),
        .I3(\result[3] ),
        .I4(\result[3]_0 ),
        .I5(\result[3]_1 ),
        .O(result_OBUF[3]));
  MUXF7 \result_OBUF[4]_inst_i_1 
       (.I0(\result[4] ),
        .I1(\result_OBUF[4]_inst_i_3_n_0 ),
        .O(result_OBUF[4]),
        .S(type_IBUF[0]));
  LUT5 #(
    .INIT(32'h8BBB888B)) 
    \result_OBUF[4]_inst_i_3 
       (.I0(O[4]),
        .I1(type_IBUF[1]),
        .I2(\result[3] ),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[3]),
        .O(\result_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2A0200002A02)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(type_IBUF[0]),
        .I1(\result[3] ),
        .I2(A_IBUF[3]),
        .I3(B_IBUF[3]),
        .I4(type_IBUF[1]),
        .I5(O[5]),
        .O(result_OBUF[5]));
  LUT6 #(
    .INIT(64'hAAAA2A0200002A02)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(type_IBUF[0]),
        .I1(\result[3] ),
        .I2(A_IBUF[3]),
        .I3(B_IBUF[3]),
        .I4(type_IBUF[1]),
        .I5(O[6]),
        .O(result_OBUF[6]));
  LUT6 #(
    .INIT(64'hAAAA2A0200002A02)) 
    \result_OBUF[7]_inst_i_1 
       (.I0(type_IBUF[0]),
        .I1(\result[3] ),
        .I2(A_IBUF[3]),
        .I3(B_IBUF[3]),
        .I4(type_IBUF[1]),
        .I5(O[7]),
        .O(result_OBUF[7]));
  LUT6 #(
    .INIT(64'h1DD1111D111111D1)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[0]_inst_i_2_n_0 ),
        .I1(AN_OBUF),
        .I2(result_OBUF[6]),
        .I3(result_OBUF[5]),
        .I4(result_OBUF[7]),
        .I5(result_OBUF[4]),
        .O(seg_OBUF[0]));
  LUT4 #(
    .INIT(16'hF67D)) 
    \seg_OBUF[0]_inst_i_2 
       (.I0(result_OBUF[0]),
        .I1(result_OBUF[3]),
        .I2(result_OBUF[1]),
        .I3(result_OBUF[2]),
        .O(\seg_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE448FFFFE4480000)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(result_OBUF[4]),
        .I1(result_OBUF[6]),
        .I2(result_OBUF[7]),
        .I3(result_OBUF[5]),
        .I4(AN_OBUF),
        .I5(\seg_OBUF[1]_inst_i_2_n_0 ),
        .O(seg_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE448)) 
    \seg_OBUF[1]_inst_i_2 
       (.I0(result_OBUF[0]),
        .I1(result_OBUF[2]),
        .I2(result_OBUF[3]),
        .I3(result_OBUF[1]),
        .O(\seg_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80A4FFFF80A40000)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(result_OBUF[6]),
        .I1(result_OBUF[5]),
        .I2(result_OBUF[7]),
        .I3(result_OBUF[4]),
        .I4(AN_OBUF),
        .I5(\seg_OBUF[2]_inst_i_2_n_0 ),
        .O(seg_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h80A4)) 
    \seg_OBUF[2]_inst_i_2 
       (.I0(result_OBUF[2]),
        .I1(result_OBUF[1]),
        .I2(result_OBUF[3]),
        .I3(result_OBUF[0]),
        .O(\seg_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8492FFFF84920000)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(result_OBUF[4]),
        .I1(result_OBUF[5]),
        .I2(result_OBUF[6]),
        .I3(result_OBUF[7]),
        .I4(AN_OBUF),
        .I5(\seg_OBUF[3]_inst_i_2_n_0 ),
        .O(seg_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8492)) 
    \seg_OBUF[3]_inst_i_2 
       (.I0(result_OBUF[0]),
        .I1(result_OBUF[1]),
        .I2(result_OBUF[2]),
        .I3(result_OBUF[3]),
        .O(\seg_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5074FFFF50740000)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(result_OBUF[7]),
        .I1(result_OBUF[6]),
        .I2(result_OBUF[4]),
        .I3(result_OBUF[5]),
        .I4(AN_OBUF),
        .I5(\seg_OBUF[4]_inst_i_2_n_0 ),
        .O(seg_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5074)) 
    \seg_OBUF[4]_inst_i_2 
       (.I0(result_OBUF[3]),
        .I1(result_OBUF[2]),
        .I2(result_OBUF[0]),
        .I3(result_OBUF[1]),
        .O(\seg_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h480EFFFF480E0000)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(result_OBUF[5]),
        .I1(result_OBUF[4]),
        .I2(result_OBUF[7]),
        .I3(result_OBUF[6]),
        .I4(AN_OBUF),
        .I5(\seg_OBUF[5]_inst_i_2_n_0 ),
        .O(seg_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h480E)) 
    \seg_OBUF[5]_inst_i_2 
       (.I0(result_OBUF[1]),
        .I1(result_OBUF[0]),
        .I2(result_OBUF[3]),
        .I3(result_OBUF[2]),
        .O(\seg_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0483FFFF04830000)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(result_OBUF[4]),
        .I1(result_OBUF[6]),
        .I2(result_OBUF[5]),
        .I3(result_OBUF[7]),
        .I4(AN_OBUF),
        .I5(\seg_OBUF[6]_inst_i_2_n_0 ),
        .O(seg_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0483)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(result_OBUF[0]),
        .I1(result_OBUF[2]),
        .I2(result_OBUF[1]),
        .I3(result_OBUF[3]),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
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
