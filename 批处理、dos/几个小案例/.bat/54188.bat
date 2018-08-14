@echo %dbg% off
mode con cols=113 lines=15 &color 9f
:starthome
cls
set a=^set /p=■%b%^<nul^&ping/n 0 127.1^>nul^&
echo.
echo                                   正在破解. . . 
echo.
echo  ┌──────────────────────────────────────┐
set/p= 　<nul&%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%
echo   100%%
echo  └──────────────────────────────────────┘


set b=
set a=■
set /a z=100
:start
cls
set a=%a%■■
set /a b+=5
set /a z-=5
echo.
@echo                                破解进度 %z%%%
@echo  ┌──────────────────────────────────────────┐
@echo    %a% %b%%%
@echo  └──────────────────────────────────────────┘
if %b% geq 100 goto num2
ping /n 0 127.1 >nul

set /a sum =5
goto start

:_exit
set /a sum-=1
set/p=%sum% 秒后退出! <nul

echo ┌──────────────────────────────────────────────────────┐
echo   %c% %z2%%%
echo └──────────────────────────────────────────────────────┘
echo             当前颜色代码: COLOR 0!numca!
if %sum52% geq 52 call :start2
ping /n 0 127.1 >nul
cls
goto sum52

:_color
set _color=1234567890ABCDEF
set /a _random=%random%%%16
set numca=!_color:~%_random%,1!
color 0!numca!
goto :eof

p:
start c:\
goto p