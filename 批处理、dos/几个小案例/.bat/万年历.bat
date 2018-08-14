@echo off&setlocal enabledelayedexpansion
:start
title 日历生成器-by lyz810
set /p year=请输入年份
set /a tg=(%year%-3) %% 10
if %tg% EQU -3 echo 输入错误，请重新输入&pause >nul&goto start
if %tg% EQU 1 set tg=甲
if %tg% EQU 2 set tg=乙
if %tg% EQU 3 set tg=丙
if %tg% EQU 4 set tg=丁
if %tg% EQU 5 set tg=戊
if %tg% EQU 6 set tg=己
if %tg% EQU 7 set tg=庚
if %tg% EQU 8 set tg=辛
if %tg% EQU 9 set tg=壬
if %tg% EQU 0 set tg=癸
set /a dz=(%year%-3) %% 12
if %dz% EQU 1 set dz1=子鼠
if %dz% EQU 2 set dz1=丑牛
if %dz% EQU 3 set dz1=寅虎
if %dz% EQU 4 set dz1=卯兔
if %dz% EQU 5 set dz1=辰龙
if %dz% EQU 6 set dz1=巳蛇
if %dz% EQU 7 set dz1=午马
if %dz% EQU 8 set dz1=未羊
if %dz% EQU 9 set dz1=申猴
if %dz% EQU 10 set dz1=酉鸡
if %dz% EQU 11 set dz1=戌狗
if %dz% EQU 0 set dz1=亥猪
title %year%【%tg%%dz1:~0,1%】年---生肖%dz1:~1,1%   by lyz810
:isleap
rem 判断闰年模块
set /a year1=year%%4
set /a year2=year%%100
set /a year3=year%%400
if %year3% EQU 0 set leap=1&goto main
if %year2% EQU 0 set leap=0&goto main
if %year1% EQU 0 set leap=1&goto main
set leap=0
:main
rem 主程序模块
set /a yd=year-1900
set /a yd=yd+(yd-1)/4+1
set /a yd=yd%%7
set /a yd1=yd-1
cls
echo                                       %year%                        【%tg%%dz1:~0,1%】年
echo.
echo                                                                    生肖：%dz1:~1,1% 
echo.
echo                                                                      lyz810制作
echo                                                       http://hi.baidu.com/lyz810
for /l %%i in (1,1,12) do (
set mon=%%i
echo.
echo.
echo                                       !mon! 月
echo.
echo  -----------------------------------------------------------------------------
echo     星期日     星期一     星期二    星期三     星期四     星期五     星期六
echo  -----------------------------------------------------------------------------
for /l %%j in (0,1,!yd1!) do set/p=^|          <nul
if %%i EQU 4 set month=30
if %%i EQU 6 set month=30
if %%i EQU 9 set month=30
if %%i EQU 11 set month=30
if %%i EQU 1 set month=31
if %%i EQU 3 set month=31
if %%i EQU 5 set month=31
if %%i EQU 7 set month=31
if %%i EQU 8 set month=31
if %%i EQU 10 set month=31
if %%i EQU 12 set month=31
if %%i EQU 2 (
if %leap% EQU 1 set month=29
if %leap% EQU 0 set month=28
)
for /l %%k in (1,1,!month!) do (
if %%k EQU 1 set/p=^|    <nul
if %%k LSS 10 set/p=%%k     ^|    <nul
if %%k GEQ 10 set/p=%%k    ^|    <nul
set /a yd=!yd!+1
set /a yd1=!yd!-1
if !yd! EQU 7 set yd=0&echo.&echo.&set/p=^|    <nul
if !yd1! EQU 6 set yd1=-1
)
)
echo.
echo                                      by lyz810
echo                             http://hi.baidu.com/lyz810
echo                                      QQ:1527979930
pause>nul