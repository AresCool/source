@ECHO off
cls
color f0
echo.
echo.
ECHO                批处理文件(.bat .cmd)加密工具
echo.
echo.
echo 说明: 在下面输入需要加密的批处理文件名
echo.
echo       若在此文件的同目录下直接输入“文件名.bat”即可
echo.
echo       也可以带路径指定任意BAT
echo.
echo       加密完成后会在同目录下生成“加密成品.bat”文件
echo.
echo.
echo.
echo.
set /p file=请输入需要加密的批处理后(名+后缀)按回车键(Q=退出):
if "%file%"=="q" goto quit
echo %file%|findstr /i "\.bat$">nul && goto go
echo %file%|findstr /i "\.cmd$">nul && goto go
cls
echo ==============
echo 请正确输入!
echo ==============
echo.
echo.
echo 按任意键重新输入......
pause>nul
goto start
:go
if not exist "%file%" goto newly
if exist encrypt.bat copy encrypt.bat encryptbak.bat
echo %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a >"%tmp%\encrypt.tmp"
echo cls>>"%tmp%\encrypt.tmp"
type "%file%">>"%tmp%\encrypt.tmp"
setlocal enabledelayedexpansion
for %%i in ("%tmp%\encrypt.tmp") do (
     echo %%~zi >nul 2>nul
     set size=%%~zi
     set num=!size:~-1!
     set /a mod=!num!%%2
     if !mod! equ 0 (goto even) else (goto odd)
)
:even
copy "%tmp%\encrypt.tmp" 加密成品.bat
del "%tmp%\encrypt.tmp"
cls
echo         ===============================
echo          恭喜, 批处理加密成功!
echo         ===============================
echo.
echo.
echo 按任意键退出......
pause>nul
goto quit
:odd
echo. >>"%tmp%\encrypt.tmp"
copy "%tmp%\encrypt.tmp" 加密成品.bat
del "%tmp%\encrypt.tmp"
cls
echo         ===============================
echo          恭喜, 批处理加密成功!
echo         ===============================
echo.
echo.
echo 按任意键退出......
pause>nul
goto quit
:newly
cls
echo ================================
echo 找不到批处理文件, 请重新输入!
echo ================================
echo.
echo.
echo 按任意键开始......
pause>nul
goto start
:quit
exit