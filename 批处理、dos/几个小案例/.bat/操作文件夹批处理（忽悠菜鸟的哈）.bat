@echo off
title 来者何人，报上名来
color 1a
set times=3
for /F "tokens=* " %%i in (c:\b) do set Pwd=%%i
set abc=%Pwd:~0,11% 
set Pwd="%Pwd:~-3%"
echo 来者何人，报上名来
set /p ming=
if %ming%==金则宇 goto again
if %ming%==金保华 goto again
if %ming%==赵海霞 goto again
echo 名字验证失败时间:%date% %time%>>c:\123.log
echo 错误的名字口令:%ming%>>c:\123.log
echo %ming% ？没听说过，闯入禁地，死！！！ 
timeout -t 1 >nul
shutdown -s -t 10 
timeout -t 5 >nul 
exit
:again
cls
echo %date% %time% %ming% 进入。>>c:\123.log
set /p User=口令！
set User="%User:"=%"
if %User%==%Pwd% goto ok
set /a times=%times%-1
echo %ming% 验证失败时间:%date% %time%>>c:\123.log
echo %ming% 错误的口令:%User%>>c:\123.log
echo %ming% 端口状态信息:>>c:\123.log
netstat -an|findstr "ESTABLISHED" >>c:\123.log
echo. >>c:\123.log
if %times%==0 goto end
echo %ming% ，您输入的口令有误，请重试！您还有%times%次输入的机会！
pause 
cls
goto again
:end
echo %ming% ！三次口令全错，你的操作已被记录！
pause
exit
:ok
set /a abc= 3-%times%+1
echo %ming% 验证密码正确时间:%date% %time%>>c:\123.log
echo %ming% 验证 %abc% 次后密码正确 >>c:\123.log
echo. >>c:\123.log
cls
:zhu
cls
title 主菜单
echo ╭──────╮
echo │1.打开文件夹│
echo │2.删除文件夹│
echo │3.退      出│
echo ╰──────╯
echo.
set /p xuan=请选择：
if %xuan%==1 goto open
if %xuan%==2 goto del
if %xuan%==3 goto bye
echo 无法识别 %xuan% ，请重新输入。
echo %ming% 控制本文件时，本文件%date% %time% 无法识别 %xuan% >>c:\123.log
echo 按任意键返回
pause>nul
goto zhu
:open
start d:\123..\ && echo 打开成功，提示您打开文件，要复制其他地方才可以打开啊！ && echo %ming% %date% %time% 打开文件夹。>>c:\123.log
echo 按任意键返回
pause>nul
goto zhu
:del
set /p del=真的要删除吗（y/n）：
if %del%==y goto y
echo 按任意键返回。
pause>nul
goto ok
:y
echo %ming% %date% %time% 试图删除文件夹>>c:\123.log
set /p d=为了保护文件夹安全验证你的身份：
if %d%==%abc% goto shan
echo %ming% %date% %time% 试图删文件夹，但是不知道密语，他输入的密语是 %d% >>c:\123.log
echo %ming% ！不知道密语还要删除文件，关你电脑
shutdown -s -t 10
pause>nul
exit
:shan
cls
echo 正在删除
echo %ming% %date% %time% 删除了文件夹>>c:\123.log
timeout -t 2 >nul
cls
rd d:\123..\
echo 删除成功
echo 按任意键删除本程序
pause>nul
del %0
exit
:bye
echo %ming% %date% %time% 关闭了程序>>c:\123.log
echo %ming% ，欢迎下次再来使用，再见!
timeout -t 2 >nul
exit























