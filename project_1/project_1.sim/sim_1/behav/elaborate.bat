@echo off
set xv_path=E:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto c0b52378580b47e1912c3d6810760ffd -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot FloatMultiplier_tb_behav xil_defaultlib.FloatMultiplier_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
