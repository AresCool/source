@echo off
title 正在计算中...
mode con: cols=37 lines=20
::现在的代码是%date:~0,11%%time:~0,8%
set StartTime=2011-03-26 20:30:00
:abc
set EndTime=%date:~0,11%%time:~0,8%
set StartTime=%StartTime:-= %
set StartTime=%StartTime::= %
set EndTime=%EndTime:-= %
set EndTime=%EndTime::= %
call :DateToSecs %StartTime% StartSecs
call :DateToSecs %EndTime% EndSecs
set /a DiffSecs=EndSecs-StartSecs
set DiffSecs=%DiffSecs:-= %
set /a Y=DiffSecs/31536000
set /a D=(DiffSecs%%31536000)/86400
set /a H=(DiffSecs%%86400)/3600
set /a M=(DiffSecs%%3600)/60
set /a S=DiffSecs%%60
set /a abc=Y*365
set /a cba=abc+D
cls
title 地球一小时还有%cba%天...
echo 在地球的一小时里，你知道人类会消耗多少干净的淡水吗？
echo 在地球的一小时里，你知道多少种动物又从地球上消失了？
echo 在地球的一小时里，你知道又有多少公顷的森林消失了吗？
echo 在地球的一小时里，你知道......
echo 请找出这些问题答案
echo 在以后的每一分每一秒
echo 我们共同爱护我们的地球！
echo.
echo 2011-03-26 20:30~21:30
echo.
echo 熄灯，仅需一小时！
echo 环保，不只这一步！
echo.
echo 距离地球一小时还有%cba%天%H%时%M%分%S%秒
timeout -t 1 >nul
goto abc

:DateToSecs %yy% %mm% %dd% %hh% %nn% %ss% secs
setlocal ENABLEEXTENSIONS
set yy=%1&set mm=%2&set dd=%3&set hh=%4&set nn=%5&set ss=%6
if 1%yy% LSS 200 if 1%yy% LSS 170 (set yy=20%yy%) else (set yy=19%yy%)
set /a dd=100%dd%%%100,mm=100%mm%%%100
set /a z=14-mm,z/=12,y=yy+4800-z,m=mm+12*z-3,j=153*m+2
set /a j=j/5+dd+y*365+y/4-y/100+y/400-2472633
if 1%hh% LSS 20 set hh=0%hh%
if {%nn:~2,1%} EQU {p} if "%hh%" NEQ "12" set hh=1%hh%&set/a hh-=88
if {%nn:~2,1%} EQU {a} if "%hh%" EQU "12" set hh=00
if {%nn:~2,1%} GEQ {a} set nn=%nn:~0,2%
set /a hh=100%hh%%%100,nn=100%nn%%%100,ss=100%ss%%%100
set /a j=j*86400+hh*3600+nn*60+ss
endlocal&set %7=%j%&goto :EOF
pause