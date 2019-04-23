@echo off
mode con cols=80 lines=8
title -兜儿-
set a=▉&set b=69&set c=%% 
set space= 
:start
set a=%a%▉
set/a b-=2
set/a num+=3
if %num%==12 set/a b-=1
call set space=%%space:~0,%b%%%
if %num% gtr 100 set num=更新完成&&set c=
echo.
echo.
color 1f
echo                        数据更新中,请稍微等待一会......
echo  ┏─────────────────────────────────────┓
echo  │%a%%space%%num%%c%│
echo  ┗─────────────────────────────────────┛
if "%num%" neq "更新完成" cls&goto start
cls

