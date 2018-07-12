@echo off 
color 9f
set a=14 
:No1
title=%a%/180                       Window系统防火墙检测到蠕虫病毒：Ｗｏｒｍ＿Ｚａｆｌｅｎ，系统即将将崩溃！！！    
set /a a+=30
mode con cols=%a% lines=1
@echo 
if %a% lss 180 goto No1 

















