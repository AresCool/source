@echo off
title 非常批处理交流论坛专用-留-言-本-1.0版
color B2
mode con: cols=50 lines=20
:hi
cls
echo.
echo       =========================
echo.
echo.             1.编写留言
echo.
echo              2.查看留言
echo.
echo              3.删除留言
echo.
echo              4.退出程序
echo.
echo       =========================
echo.
SET /P INPUT="   请在这里输入数字并回车："
IF /I "%INPUT%"=="1" ( goto a )
IF /I "%INPUT%"=="2" ( goto b )
IF /I "%INPUT%"=="3" ( goto c )
IF /I "%INPUT%"=="4" ( exit )
:a
cls
echo.
echo  %date% %time%
SET /P ly=请输入留言:
echo %date% %time% 的留言 >>留言本.bat
echo.%ly% >>留言本.bat
start 留言本.bat
pause
goto hi
:b
cls
type 留言本.bat
pause
goto hi
:c
del 留言本.bat
goto hi
