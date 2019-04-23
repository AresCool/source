@echo off
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects2" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamsMRU" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Desktop" /f
reg delete "HKCU\Software\Microsoft\Internet Explorer\Explorer Bars\{32683183-48a0-441b-a342-7c2a440a9478}" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoToolbarsOnTaskbar" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoSetTaskbar" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoCloseDragDropBands" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoMovingBands" /f
regsvr32 stobject.dll /s
regsvr32 webcheck.dll /i /s
taskkill /f /im explorer.exe&&explorer.exe
