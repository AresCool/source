@echo off 
color 7c
set a=58
:No1
title   
set /a a+=1
mode con cols=%a% lines=15
ping -n 1 127.0>nul
@echo 
if %a% lss 60 goto No1 
: X
echo.
echo.
echo             请选择[1\2\3\4\...][回车键确定]  
echo.                               
echo                      1    360网址导航            
echo                      2    百度一下              
echo                      3    百度音乐         
echo                      4    酷我音乐           
echo                      5    一听音乐               
echo                      6    优酷视频             
echo                      7    土豆视频             
echo                      9    退出   
echo.                
set /p answer=
if /i %answer%==1 goto 1
if /i %answer%==2 goto 2
if /i %answer%==3 goto 3
if /i %answer%==4 goto 4
if /i %answer%==5 goto 5
if /i %answer%==6 goto 6
if /i %answer%==7 goto 7
if /i %answer%==9 goto 9
:1
color 0a
start http://hao.360.cn/
@echo 
goto X
:2
color 9a
start http://www.baidu.com/
@echo 
goto X
:3
color 1b
start http://mp3.baidu.com/
@echo 
goto X
:4
color 9b
start http://fang.kuwo.cn/p/
@echo 
goto X
:5
color 2c
start http://www.1ting.com/
@echo 
goto X
:6
color 9c
start http://www.youku.com/
@echo 
goto X
:7
color 3d
start http://www.tudou.com/
@echo 
goto X
:9
color 9d
@echo 
exit









