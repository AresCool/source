@echo off
if not exist move.bat echo 不在同一目录&&goto :eof
copy move.bat %windir%\system32
set key="hkcu\software\microsoft\command processor"
reg add %key% /v autorun /d "doskey move=%%windir%%\system32\move.bat $*"
del %~0

move [/h] [/k] source destination
/h 移动隐藏和系统属性的文件
/k 移动时保持文件原属性
