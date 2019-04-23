@echo off
title 盘符添加背景图
echo ******************************************************************************
echo *                                                  *
echo *              欢迎使用 ☆星云☆ 批处理            *
echo *                                                  *
echo ******************************************************************************
echo.
color 0A
echo 说明:
echo.
echo 本作品完全是由网络上面提供的资料写的
echo.
echo 主要是方便大家使用
echo.
echo 最主要是今天晚上无聊..找点事来干干
echo.
echo 希望大家能够喜欢~
echo.
echo 星云 QQ:251835075
echo.
echo 请按回车键
pause>nul
cls
echo *****************************************************************************
echo *                                                  *
echo *            选 择 添 加 的 方 式                  *
echo *                                                  *
echo *****************************************************************************
echo.
echo.
echo 输入 1 后按回车键, 添加盘符背景图
echo 输入 2 后按回车键, 清除盘符背景图
echo 输入 3 后按回车键, 退出
echo.
@set /p start=请选择 (1、2、3、=退出) 后按回车键: 
if "%start%"=="1" goto 1
if "%start%"=="2" goto 2 
if "%start%"=="3" goto 3 

:1
set /p sky=请选择添加文件夹背景图位子：
set /p cn=设置选择背景图的位子：
echo [ExtShellFolderViews] >%sky%:\desktop.ini
echo {BE098140-A513-11D0-A3A4-00C04FD706EC}={BE098140-A513-11D0-A3A4-00C04FD706EC} >>%sky%:\desktop.ini
echo [{BE098140-A513-11D0-A3A4-00C04FD706EC}] >>%sky%:\desktop.ini
echo Attributes=1 >>%sky%:\desktop.ini
echo IconArea_Image=%cn%.jpg >>%sky%:\desktop.ini
echo [.ShellClassInfo] >>%sky%:\desktop.ini
echo ConfirmFileOp=0 >>%sky%:\desktop.ini
start %sky%:\
attrib %sky%:\desktop.ini +r +s +h
echo 按任意键结束
pause>nul
exit

:2
set /p sky=请输入要删除背景图的位子：
del %sky%:\desktop.ini /f/q/a
echo 已经成功删除
echo 按任意键退出
pause>nul
exit
