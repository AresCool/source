@echo off
mode con: cols=80 lines=25
if exist "%tmp%\win.reg" del /a /f "%tmp%\win.reg"
:index
title                            
color 27
cls 
echo                            By:吾孝德  QQ:5697943
echo                      ╭─────────────────╮
echo                      │                                  │
echo    ╭────────┤   ∧ ∧萌萌陀的生日礼物 ∧ ∧    ├────────╮
echo    │                │     O                     O      │                │
echo    │                ╰─────────────────╯                │
echo    │                                                                      │
echo    │   萌萌陀，生日快乐啊``  要记得吃饭哦``呵呵``                         │                    
echo    │                                                                      │
echo    │   ★感情进度                                                         │                   
echo    │                                                                      │
echo    │   ★优化系统                                                         │                   
echo    │                                                                      │
echo    │   ★强制QQ聊天工具                                                   │                       
echo    │                                                 生日快乐！           │
echo    │ ☆ 操作选项 ☆                                                       │
echo    │                                                                      │
echo    │    1.感情进度  2.优化系统  3.强制QQ聊天工具  4.退出                  │
echo    ╰───────────────────────────────────╯
echo.
set start=
set /p start=    输入(1 2 3 4 )后按回车键:
if "%start%"=="1" goto YH
if "%start%"=="2" goto AQ
if "%start%"=="3" goto QW
if "%start%"=="4" goto :eof
if /i "%start%"=="q" goto :eof
goto index
:YH
@echo off

set a=▉&set b=69&set c=%% 
set space=                                                                      
:start
set a=%a%▉
set/a b-=2
set/a num+=3
if %num%==12 set/a b-=1
call set space=%%space:~0,%b%%%
if %num% gtr 100 set num=溢出&&set c=
echo.
echo.
color fc
echo                                   飞鱼  萌萌陀
echo                                     ↓  ↓
echo                     ┏━━┓我      ●╭○╮   我┏━━┓
echo                     ┃天长┃愛  ★ /█∨█\ ★ 想┃永远┃
echo                     ┃地久┃你      ∏  ∏     你┃拥有┃
echo                     ┗━━┛． 萌萌陀，生日快乐！┗━━┛   By：吾孝德
echo   感情进度条......
echo  ┏─────────────────────────────────────┓
echo  │%a%%space%%num%%c%│
echo  ┗─────────────────────────────────────┛
ping/n 2 127.1>nul
if "%num%" neq "溢出" cls&goto start
for /l %%a in (1,1,10) do color cf&ping/n 1 127.1>nul&color fc&ping/n 1 127.1>nul
Goto index 

:: 系统优化______________________________________________________________________
:AQ
title 系统优化                    By:吾孝德  QQ:5697943
color 1A
cls
echo                      ╭─────────────────╮
echo                      │                                  │
echo    ╭────────┤       系    统    优    化       ├────────╮
echo    │                │                                  │                │
echo    │                ╰─────────────────╯                │
echo    │    萌萌陀，你只要选择下面的做法``就能让你使用的电脑速度大大提高      │
echo    │                                                                      │
echo    │    很简单的把``                                                      │

 
