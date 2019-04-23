@echo off 
color 9f
set a=14 
:No1
title=%a%/180   
set /a a+=1
mode con cols=%a% lines=1
ping -n 3 127.0>nul
if %a% lss 180 goto No1 

















