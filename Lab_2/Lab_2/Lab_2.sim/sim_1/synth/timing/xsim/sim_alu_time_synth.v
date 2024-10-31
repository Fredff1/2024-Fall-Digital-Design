// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Thu Oct 31 16:52:39 2024
// Host        : FredMachine running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Courses/CS_Cousrces/2024 Fall Digital
//               Design/Lab_2/Lab_2/Lab_2.sim/sim_1/synth/timing/xsim/sim_alu_time_synth.v}
// Design      : ALU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module ALU
   (A,
    B,
    type,
    result);
  input [3:0]A;
  input [3:0]B;
  input [1:0]type;
  output [7:0]result;

  wire [3:0]A;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire [7:0]result;
  wire [7:0]result_OBUF;
  wire \result_OBUF[1]_inst_i_2_n_0 ;
  wire \result_OBUF[2]_inst_i_2_n_0 ;
  wire \result_OBUF[2]_inst_i_3_n_0 ;
  wire \result_OBUF[2]_inst_i_4_n_0 ;
  wire \result_OBUF[3]_inst_i_2_n_0 ;
  wire \result_OBUF[3]_inst_i_3_n_0 ;
  wire \result_OBUF[3]_inst_i_4_n_0 ;
  wire \result_OBUF[4]_inst_i_2_n_0 ;
  wire \result_OBUF[7]_inst_i_2_n_0 ;
  wire [1:0]type;
  wire [1:0]type_IBUF;

initial begin
 $sdf_annotate("sim_alu_time_synth.sdf",,,,"tool_control");
end
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
  Multiplier multiply_instance
       (.A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .\result[1] (\result_OBUF[1]_inst_i_2_n_0 ),
        .\result[2] (\result_OBUF[2]_inst_i_2_n_0 ),
        .\result[2]_0 (\result_OBUF[2]_inst_i_3_n_0 ),
        .\result[2]_1 (\result_OBUF[2]_inst_i_4_n_0 ),
        .\result[3] (\result_OBUF[3]_inst_i_2_n_0 ),
        .\result[3]_0 (\result_OBUF[3]_inst_i_3_n_0 ),
        .\result[3]_1 (\result_OBUF[3]_inst_i_4_n_0 ),
        .\result[4] (\result_OBUF[7]_inst_i_2_n_0 ),
        .\result[4]_0 (\result_OBUF[4]_inst_i_2_n_0 ),
        .result_OBUF(result_OBUF),
        .type_IBUF(type_IBUF));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[1]_inst_i_2 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .O(\result_OBUF[1]_inst_i_2_n_0 ));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDD4D)) 
    \result_OBUF[2]_inst_i_2 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[0]),
        .O(\result_OBUF[2]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[2]_inst_i_3 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .O(\result_OBUF[2]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \result_OBUF[2]_inst_i_4 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[0]),
        .O(\result_OBUF[2]_inst_i_4_n_0 ));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \result_OBUF[3]_inst_i_2 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[0]),
        .I4(A_IBUF[1]),
        .I5(B_IBUF[1]),
        .O(\result_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[3]_inst_i_3 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .O(\result_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \result_OBUF[3]_inst_i_4 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[0]),
        .I4(A_IBUF[1]),
        .I5(B_IBUF[1]),
        .O(\result_OBUF[3]_inst_i_4_n_0 ));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00E8)) 
    \result_OBUF[4]_inst_i_2 
       (.I0(\result_OBUF[3]_inst_i_4_n_0 ),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[3]),
        .I3(type_IBUF[1]),
        .O(\result_OBUF[4]_inst_i_2_n_0 ));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  OBUF \result_OBUF[7]_inst 
       (.I(result_OBUF[7]),
        .O(result[7]));
  LUT3 #(
    .INIT(8'h2B)) 
    \result_OBUF[7]_inst_i_2 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[3]),
        .I2(\result_OBUF[3]_inst_i_2_n_0 ),
        .O(\result_OBUF[7]_inst_i_2_n_0 ));
  IBUF \type_IBUF[0]_inst 
       (.I(type[0]),
        .O(type_IBUF[0]));
  IBUF \type_IBUF[1]_inst 
       (.I(type[1]),
        .O(type_IBUF[1]));
endmodule

module Multiplier
   (result_OBUF,
    B_IBUF,
    A_IBUF,
    type_IBUF,
    \result[1] ,
    \result[4] ,
    \result[4]_0 ,
    \result[3] ,
    \result[3]_0 ,
    \result[3]_1 ,
    \result[2] ,
    \result[2]_0 ,
    \result[2]_1 );
  output [7:0]result_OBUF;
  input [3:0]B_IBUF;
  input [3:0]A_IBUF;
  input [1:0]type_IBUF;
  input \result[1] ;
  input \result[4] ;
  input \result[4]_0 ;
  input \result[3] ;
  input \result[3]_0 ;
  input \result[3]_1 ;
  input \result[2] ;
  input \result[2]_0 ;
  input \result[2]_1 ;

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
  wire O__1_carry__0_n_2;
  wire O__1_carry__0_n_3;
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
  wire O__1_carry_n_1;
  wire O__1_carry_n_2;
  wire O__1_carry_n_3;
  wire \result[1] ;
  wire \result[2] ;
  wire \result[2]_0 ;
  wire \result[2]_1 ;
  wire \result[3] ;
  wire \result[3]_0 ;
  wire \result[3]_1 ;
  wire \result[4] ;
  wire \result[4]_0 ;
  wire [7:0]result_OBUF;
  wire [1:0]type_IBUF;
  wire [2:2]NLW_O__1_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_O__1_carry__0_O_UNCONNECTED;

  CARRY4 O__1_carry
       (.CI(1'b0),
        .CO({O__1_carry_n_0,O__1_carry_n_1,O__1_carry_n_2,O__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({O__1_carry_i_1_n_0,O__1_carry_i_2_n_0,O__1_carry_i_3_n_0,1'b0}),
        .O(O[3:0]),
        .S({O__1_carry_i_4_n_0,O__1_carry_i_5_n_0,O__1_carry_i_6_n_0,O__1_carry_i_7_n_0}));
  CARRY4 O__1_carry__0
       (.CI(O__1_carry_n_0),
        .CO({O[7],NLW_O__1_carry__0_CO_UNCONNECTED[2],O__1_carry__0_n_2,O__1_carry__0_n_3}),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    O__1_carry_i_9
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[1]),
        .O(O__1_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h88880FF0)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(O[0]),
        .I1(type_IBUF[0]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[0]),
        .I4(type_IBUF[1]),
        .O(result_OBUF[0]));
  LUT6 #(
    .INIT(64'h88888888C3F03CF0)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(O[1]),
        .I1(type_IBUF[0]),
        .I2(\result[1] ),
        .I3(B_IBUF[0]),
        .I4(A_IBUF[0]),
        .I5(type_IBUF[1]),
        .O(result_OBUF[1]));
  LUT6 #(
    .INIT(64'hA0A0A0A0C03FCF30)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(O[2]),
        .I1(\result[2] ),
        .I2(type_IBUF[0]),
        .I3(\result[2]_0 ),
        .I4(\result[2]_1 ),
        .I5(type_IBUF[1]),
        .O(result_OBUF[2]));
  LUT6 #(
    .INIT(64'hA0A0A0A0C03FCF30)) 
    \result_OBUF[3]_inst_i_1 
       (.I0(O[3]),
        .I1(\result[3] ),
        .I2(type_IBUF[0]),
        .I3(\result[3]_0 ),
        .I4(\result[3]_1 ),
        .I5(type_IBUF[1]),
        .O(result_OBUF[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_OBUF[4]_inst_i_1 
       (.I0(O[4]),
        .I1(type_IBUF[1]),
        .I2(\result[4] ),
        .I3(type_IBUF[0]),
        .I4(\result[4]_0 ),
        .O(result_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(type_IBUF[0]),
        .I1(\result[4] ),
        .I2(type_IBUF[1]),
        .I3(O[5]),
        .O(result_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(type_IBUF[0]),
        .I1(\result[4] ),
        .I2(type_IBUF[1]),
        .I3(O[6]),
        .O(result_OBUF[6]));
  LUT4 #(
    .INIT(16'hA808)) 
    \result_OBUF[7]_inst_i_1 
       (.I0(type_IBUF[0]),
        .I1(\result[4] ),
        .I2(type_IBUF[1]),
        .I3(O[7]),
        .O(result_OBUF[7]));
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
