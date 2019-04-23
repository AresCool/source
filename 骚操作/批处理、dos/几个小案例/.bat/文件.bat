@echo off
setlocal enabledelayedexpansion

set/p file_yput=请输入源文件路径:
set/p file_mput=请输入目标路径:
cd /d "!file_yput!"
for /d %%q in (*) do  (
md  "!file_mput!\%%q" & xcopy "%%q" "!file_mput!\%%q" /y >nul 2>nul & echo 文件夹"%%q"复制成功
 copy "!file_yput!\*.*"  "!file_mput!" /y )
pause


