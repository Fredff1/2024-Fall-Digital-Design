@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Thu Oct 10 15:57:27 +0800 2024
REM SW Build 2700185 on Thu Oct 24 18:46:05 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim decoder_3_8_tb_behav -key {Behavioral:sim_1:Functional:decoder_3_8_tb} -tclbatch decoder_3_8_tb.tcl -log simulate.log"
call xsim  decoder_3_8_tb_behav -key {Behavioral:sim_1:Functional:decoder_3_8_tb} -tclbatch decoder_3_8_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
