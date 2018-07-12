@echo off

set "RegPath=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"

reg add "%RegPath%" /v Hidden /t reg_dword /d 1 /f >nul

reg add "%RegPath%" /v HideFileExt /t reg_dword /d 0 /f >nul

reg add "%RegPath%" /v ShowSuperHidden /t reg_dword /d 1 /f >nul

echo 运行成功



pause>nul
