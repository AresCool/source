@echo on
title 修改系统主题
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "SetVisualStyle" /t reg_sz /d "" /f >nul
::   "SetVisualStyle" 
pause