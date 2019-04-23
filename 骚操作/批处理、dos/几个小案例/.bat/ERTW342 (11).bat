@title 【阿明哥】网吧管理系统-【阿明哥】QQ：49186865
@echo off
color 3c 
@echo ╔┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉╗
@echo ┋ 【阿 明 哥】 网 吧 管 理 系 统                                           ┋
@echo ┋                                                                          ┋ 
@echo ┋                                                                          ┋
@echo ┋使用前请仔细阅读一下事项:                                                 ┋
@echo ┋                                                                          ┋ 
@echo ┋⒈欢迎光临本网吧，请注意看好自己的随便物品，注意身边卫生！                ┋
@echo ┋⒉有事请叫网管，我们会在第一时间为您解决问题。                            ┋ 
@echo ┋⒊禁止未成年人上网，请不要为陌生人购卡！                                  ┋ 
@echo ┋⒋吸烟者请把烟灰弹入烟灰缸内，谢谢合作！                                  ┋ 
@echo ┋⒌严禁浏览黄色、反动信息一经发现连同信息交与公安机关处理！                ┋ 
@echo ╚┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉╝ 
set/a n=3 set/p pass=请输入密码： 
if {%pass%} equ {} goto cw 
if %pass% equ 49186865 goto stat 
set/a n=n-1 goto cw 
:stat
@cls 
@echo ╔┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉╗ 
@echo ┋ 【阿 明 哥】 网 吧 管 理 系 统                                           ┋ 
@echo.
@echo    1：打开C盘 2:打开D盘 3：打开E盘 4：打开F盘 
@echo. 
@echo    5:打开控制面板 6:计算机管理 7:组策略 8：退出 
@echo ╚┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉╝ 
@set/p k=请输入（1 2 -7 ）： 
if {%k%} equ {} goto stat 
if %k% equ 1 start c: 
if %k% equ 2 start d: 
if %k% equ 3 start e:
if %k% equ 4 start f:
if %k% equ 5 start control 
if %k% equ 6 start compmgmt.msc 
if %k% equ 7 start gpedit.msc 
if %k% equ 8 exit goto stat 
:cw 
cls 
@echo ╔┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉╗ 
@echo ┋ 【阿 明 哥】 网 吧 管 理 系 统                                           ┋ 
@echo ┋                                                                          ┋ 
@echo ┋                                                                          ┋ 
@echo ┋使用前请仔细阅读一下事项:                                                 ┋ 
@echo ┋                                                                          ┋ 
@echo ┋⒈欢迎光临本网吧，请注意看好自己的随便物品，注意身边卫生！                ┋ 
@echo ┋⒉有事请叫网管，我们会在第一时间为您解决问题。                            ┋ 
@echo ┋⒊禁止未成年人上网，请不要为陌生人购卡！                                  ┋ 
@echo ┋⒋吸烟者请把烟灰弹入烟灰缸内，谢谢合作！                                  ┋ 
@echo ┋⒌严禁浏览黄色、反动信息一经发现连同信息交与公安机关处理！                ┋ 
@echo ╚┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉╝ 
set/p pass=密码错误，请重新输入: 
if {%pass%} equ {} goto dl 
if %pass% equ 49186865 goto stat 
set/a n=n-1 
if %n% equ 0 goto end goto cw 
:end echo 对不起，密码错误的次数已超过限制，请按任意键退出！ 
pause>nul exit 
:dl echo 你的操作已经被纪录，请与管理员联系--QQ:49186865 
pause>nul 

    