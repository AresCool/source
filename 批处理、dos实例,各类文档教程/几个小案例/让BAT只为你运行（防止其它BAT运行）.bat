@echo off
mode con cols=45 lines=10
echo.
title 加密或解密CMD
echo           [1] 按 1 键进行CMD加密
echo           [2] 按 2 键解CMD解密
echo           [Q] 按其他任意键退出
echo.
SET verybat=
SET /P verybat=      请选择要进行的操作：  
IF /I "%verybat:~0,1%"=="1" GOTO 1
IF /I "%verybat:~0,1%"=="2" GOTO 2
exit
:1
echo @echo off>%SystemRoot%\system32\verybat.bat
echo set /p pass=请输入密码：>>%SystemRoot%\system32\verybat.bat
echo if %%pass%%==jb51 goto ok>>%SystemRoot%\system32\verybat.bat
echo exit>>%SystemRoot%\system32\verybat.bat
echo   : ok>>%SystemRoot%\system32\verybat.bat
reg add "HKLM\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t reg_sz /d %SystemRoot%\system32\verybat.bat /f >nul 2>nul
cls
echo.&echo       感谢使用，已成功加密。
pause >nul
exit
:2
reg delete "HKLM\SOFTWARE\Microsoft\Command Processor" /v AutoRun /f >nul 2>nul
reg add "HKLM\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t reg_sz /f
del /q %SystemRoot%\system32\verybat.bat >nul 2>nul
cls
echo.&echo       感谢使用，已成功解密。
pause >nul
exit