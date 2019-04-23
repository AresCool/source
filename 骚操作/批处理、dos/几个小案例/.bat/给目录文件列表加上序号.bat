:: 给当前目录文件列表的每行加上序号
@echo off
setlocal enabledelayedexpansion
set count=0
for %%i in (*) do (
   set /a count += 1
   echo !count! %%i
)
pause>nul 
