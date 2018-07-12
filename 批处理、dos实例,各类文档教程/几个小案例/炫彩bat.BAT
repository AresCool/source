@echo off
:begin
set /a a=%random%/3450&set /a b=%random%/3450
:1
set /a c=%random%/ 900
if %c% leq 13 goto 1
:2
set /a d=%random%/1092
if %d% leq 1 goto 2
color %a%%b%&mode con cols=%c% lines=%d%&ping/n 1 127.0>nul&cls>nul
echo.
echo.
echo.         完美追求
echo.
echo       舞懈可击……&goto begin

