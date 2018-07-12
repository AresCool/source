@echo off
mode con cols=80 lines=8
title -兜儿-
set a=▉&set b=69&set c=%% 
set space=                                                                      
:start
set a=%a%▉
set/a b-=2
set/a num+=3
if %num%==12 set/a b-=1
call set space=%%space:~0,%b%%%
if %num% gtr 50 set num=更新完成&&set c=
echo.
echo.
color 1f
echo   菜单更新中,请稍微等待一会......
echo  ┏─────────────────────────────────────┓
echo  │%a%%space%%num%%c%│
echo  ┗─────────────────────────────────────┛
ping/n 0.1 127.1>nul
if "%num%" neq "更新完成" cls&goto start
cls
mode con cols=100 lines=30
cls
@echo         菜单列表：             祝：大家愉快开心！每天都有好心情！轻轻松松，快快乐乐过每一天！
@echo                    1=QQ
@echo                    2=音乐
@echo                    3=网页
@echo                    4=迅雷5
@echo                    5=Web迅雷
@echo                    6=系统盘C
@echo                    7=工具盘D
@echo                    8=杂类工具E
@echo                    9=CMD
@echo                    10=注册表
@echo                    11=组策略
@echo                    12=清理右键
@echo                    13=WIN2000删除默认共享
@echo                    14=IE修复
@echo                    15=WINXP删除默认共享
@echo                    16=清除系统垃圾
@echo                    17=百度
@echo                    18=删除右键“新建”菜单项目
@echo                    19=XP服务优化
@echo                    20=XP超强网吧版优化
@echo                    21=XP安全设置补丁
@echo                    22=身份证信息查询
@echo                    23=计算器
@echo                    24=KAV32
@echo                    25=KASMain
@echo                    26=本机游戏
@echo                    27=电影                                
@color 1f
:mm
@set /p kiss=请输入菜单数字并回车进入:
@if {%kiss%}=={1} goto&start C:\"Program Files"\Tencent\QQ\QQ.exe&start r.bat&exit
@if {%kiss%}=={2} goto&start C:\"Program Files"\TTPlayer\TTPlayer.exe&start r.bat&exit
@if {%kiss%}=={3} goto&start C:\"Program Files"\"Internet Explorer"\IEXPLORE.EXE&start r.bat&exit
@if {%kiss%}=={4} goto&C:\"Program Files"\"Thunder Network"\Thunder\ThunderShell.exe&start r.bat&exit
@if {%kiss%}=={5} goto&C:\"Program Files"\"Thunder Network"\WebThunder2\WebThunder.exe&start r.bat&exit
@if {%kiss%}=={6} goto&start c:\&start r.bat&exit
@if {%kiss%}=={7} goto&start d:\&start r.bat&exit
@if {%kiss%}=={8} goto&start e:\&start r.bat&exit
@if {%kiss%}=={9} goto&start %windir%\system32\cmd.exe&start r.bat&exit
@if {%kiss%}=={10} goto&start %windir%\regedit.exe&start r.bat&exit
@if {%kiss%}=={11} goto&start %windir%\system32\gpedit.exe&start r.bat&exit
@if {%kiss%}=={12} goto&start D:\BAk\V5.0合成安装\注册右键.reg&start r.bat&exit
@if {%kiss%}=={13} goto&start D:\BAk\V5.0合成安装\WIN2000删除默认共想.bat&start r.bat&exit   
@if {%kiss%}=={14} goto&start D:\BAk\V5.0合成安装\IE修复.cmd&start r.bat&exit
@if {%kiss%}=={15} goto&start D:\BAk\V5.0合成安装\xp删除所有的默认共享&start r.bat&exit
@if {%kiss%}=={16} goto&start D:\BAk\V5.0合成安装\系统垃圾.bat&start r.bat&exit
@if {%kiss%}=={17} goto&start/min/b IEXPLORE.EXE "www.baidu.com"&start r.bat&exit
@if {%kiss%}=={18} goto&start D:\BAk\V5.0合成安装\删除右键“新建”菜单项目.bat&start r.bat&exit
@if {%kiss%}=={19} goto&start D:\BAk\V5.0合成安装\XP服务优化.bat&start r.bat&exit
@if {%kiss%}=={20} goto&start D:\BAk\V5.0合成安装\多功能系统优化设置.cmd&start r.bat&exit
@if {%kiss%}=={21} goto&start D:\BAk\V5.0合成安装\XP安全设置补丁.cmd&start r.bat&exit
@if {%kiss%}=={22} goto&start D:\BAk\V5.0合成安装\身份证信息查询.cmd&start r.bat&exit
@if {%kiss%}=={23} goto&start %windir%\system32\calc.exe&start r.bat&exit
@if {%kiss%}=={24} goto&start D:\KAV2007\KAV32.EXE&start r.bat&exit
@if {%kiss%}=={25} goto&start D:\KAV2007\KASMain.EXE&start r.bat&exit
@if {%kiss%}=={26} goto&start d:\本机游戏&start r.bat&exit 
@if {%kiss%}=={27} goto&start D:\电影。&start r.bat&exit 
goto mm

:e
pause 
