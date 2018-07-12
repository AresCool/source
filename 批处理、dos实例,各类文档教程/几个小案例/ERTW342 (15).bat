@echo off
set dd=%date:~8,2%
set mm=%date:~5,2%
set yy=%date:~0,4%
set Tss=%TIME:~6,2%
set Tmm=%TIME:~3,2%
set Thh=%TIME:~0,2%
set Thh=%Thh: =0%
set folder="%yy%.%mm%.%dd%.%Thh%.%Tmm%.%Tss%"
echo.
echo 当前时间为%folder% 
md %folder%
echo.
echo 以%folder%时间为名称的文件夹创建完毕
echo.
echo 按任意键关闭本窗口。by:葫芦兽 QQ:130031300 转帖请保留作者信息 谢谢
pause >nul 2>nul 
exit
md %date%..\
