@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Nov 07 19:50:05 +0800 2024
REM SW Build 2700185 on Thu Oct 24 18:46:05 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 7a21afac90814eb49a8a03e66f4b4a13 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L secureip --snapshot ALU_tb_func_impl xil_defaultlib.ALU_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto 7a21afac90814eb49a8a03e66f4b4a13 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L secureip --snapshot ALU_tb_func_impl xil_defaultlib.ALU_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0