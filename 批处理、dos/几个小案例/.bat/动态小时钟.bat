@ echo off
color 17
setlocal EnableDelayedExpansion
set incr=0
set tag=0
set dec=42
set spac=                                        
set a1=      車      車
set a2=      車 車    車 車
set a3=    車  車  車  車
set a4=    車    車 車    車
set a5=  車      車      車
set a6=  車車車車車車車車車辰辰辰辰辰辰辰辰辰辰 
set a7= 車車                辰辰
set a8=車車  車  %time:~0,8%  辰  辰辰
set a9= 車車                辰辰
set a10=  車車車車車車〞〞〞〞辰辰辰辰辰 
set a11=        ^|^|^|^|^|^|^|
set a12=        ^|^|^|^|^|
set a13=          ^|^|^|
set a14=          ^|  
: initial 
for /l %%i in (1,1,14) do echo !a%%i!
ping/n 2 127.1 >nul 2>nul
set a8=車車  車  %time:~0,8%  辰  辰辰
cls
: loop
set /a incr+=2
if %incr% gtr 40 goto next
set tag=0
call :display
goto loop
:display
if %tag%==1 for /l %%i in (1,1,5) do echo.
for /l %%j in (1,1,14) do echo !spac:~0,%incr%!!a%%j!
ping/n 2 127.1 >nul 2>nul
set a8=車車  車  %time:~0,8%  辰  辰辰
cls
goto :eof
: next
: xunhuan
set /a incr-=2
if %incr% lss 0 set incr=0 & goto initial
set tag=1
call :display
goto xunhuan
: end
