@echo off
color 2f
title AutoRun.inf 病毒免疫/清除工具 小头爸爸制作      E-mail: sdytfhzqd@126.com 

:start   
cls
echo.
echo 自动运行(AutoRun.inf)病毒免疫工具
echo.
echo.
echo [1] 对所有磁盘进行免疫
echo [2] 取消所有磁盘的免疫
echo [3] 手动选择磁盘，进行病毒免疫
echo [0] 退出
echo.

set /p choice= 请选择(1/2/3/0):
if "%choice%"=="1" goto menuall
if "%choice%"=="2" goto menudel
if "%choice%"=="3" goto select
if "%choice%"=="0" exit
goto exit

:menuall
cls
echo 正在进行autorun免疫……
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do md %%a:\autorun.inf & md %%a:\autorun.inf\免疫文件夹..\ & attrib +h +r +s +a %%a:\autorun.inf 
pause>nul
goto start

:menudel
cls
echo 解除autorun免疫……
for %%a in (c d e f g h i j k l m n) do rd %%a:\autorun.inf\免疫文件夹..\ & attrib -h -r -s -a %%a:\autorun.inf & rd %%a:\autorun.inf
pause>nul
goto start

:select
cls
:restart
set /p pan= 请选择盘符(C-Z)，对输入的盘符进行免疫,退出按0:
if "%pan%"=="0" exit
md %pan%:\autorun.inf
md %pan%:\autorun.inf\免疫文件夹..\
attrib +s +h +r %pan%:\autorun.inf
echo.
goto restart

:exit
