@echo off

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /d 0 /t REG_DWORD /f 

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /d 0 /t REG_DWORD /f 

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetIcon" /d 0 /t REG_DWORD /f 

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\nonenum" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /d 0 /t REG_DWORD /f 

cmd /c taskkill /f /im explorer.exe&&explorer.exe
