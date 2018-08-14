@echo off
1:
mshta "vbscript:CreateObject("Shell.Application").ToggleDesktop&window.close"
mshta "javascript:new ActiveXObject('WMPlayer.OCX').cdromCollection.Item(0).Eject();window.close();"
CreateObject("Shell.Application").ToggleDesktop
goto 1


