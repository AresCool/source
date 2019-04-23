@echo off
title 五子棋之兵临城下 作者：英雄 E-mail：bizhuang0917@126.com
setlocal enabledelayedexpansion
mode con cols=40 lines=5
color 2f
echo.
set /p slt1=    您确定要向英雄家族挑战吗？(y/n)
cls
if /i not "%slt1%"=="y" goto def
:whofirst
echo.

echo             1、挑战者先手
echo             2、英雄家族先手
set /p slt2=
if not "%slt2%" equ "1" if not "%slt2%" equ "2" cls&echo             请正确输入！！&pause&cls&goto whofirst
cls
mode con cols=45 lines=10
:people
echo                 请选择人物
echo.
echo            级别越高思考时间越长
echo.
echo 1、宠物                      棋力--9级以下
echo 2、小师妹 宝宝               棋力--9~7级
echo 3、三师兄 猛虎               棋力--6~4级
echo 4、二师兄 飞龙               棋力--3~1级
echo 5、大师兄 英雄               棋力--9段
set /p slt3=
cls
if %slt3%==5 echo 对不起，英雄请产假回家照顾老婆了，请谅解~~。&pause&cls&goto people
if not "%slt3%" equ "1" if not "%slt3%" equ "2" if not "%slt3%" equ "3" if not "%slt3%" equ "4" (
cls
echo            请输入正确的人物代号！
pause
cls
goto people
)
::::::::::::::::::::::::::::::::::::::::::::::::
::以下定义一些变量，包括图形界面中的元素
::::::::::::::::::::::::::::::::::::::::::::::::
:def
set 纵轴=B C D E F G H I J K L M N
for %%i in (a %纵轴% o) do (
    set /a bridge+=1
    set ctoi%%i=!bridge!
)
set bridge=
for %%i in (a %纵轴% o) do (
    set /a bridge+=1
    set itoc!bridge!=%%i
)
:start
for %%i in (a %纵轴% o) do (
    for /l %%j in (1,1,15) do (
    set my%%i%%j=*
    )
)
set A1=┏
set A15=┓
set O1=┗
set O15=┛
for /l %%i in (2,1,14) do set a%%i=┳
for /l %%i in (2,1,14) do set o%%i=┻
for %%i in (%纵轴%) do set %%i1=┣&set %%i15=┫
for %%i in (%纵轴%) do (
    for /l %%j in (2,1,14) do (
    set %%i%%j=╋
    )
)
set round=1
set preinput=
mode con cols=61 lines=40
:::::::::::::::::::::::::::::::::::::::::::::::
::以下为交替落子模块
:::::::::::::::::::::::::::::::::::::::::::::::
call:graph
:play
:blackinput
if %round% geq 100 goto nowin
if /i "%slt1%"=="y" if "%slt2%"=="2" call:ai ● b&goto whiteinput
set /p input=第%round%手，请黑方输入
if /i "%input%"=="restart" goto start
if "!my%input%!"=="*" (
set %input%=●
set my%input%=b
set /a round+=1
) else (
echo 输入有误，请重新输入！
goto blackinput)
call:graph
call:judge %input%
:whiteinput
if %round% geq 100 goto nowin
if /i "%slt1%"=="y" if "%slt2%"=="1" call:ai ○ w&goto play
set /p input=第%round%手，请白方输入
if /i "%input%"=="restart" goto start
if "!my%input%!"=="*" (
set %input%=○
set my%input%=w
set /a round+=1
) else (
echo 输入有误，请重新输入！
goto whiteinput)
call:graph
call:judge %input%

goto play

:::::::::::::::::::::::::::::::::::::::::::::::
::以下为判断胜负模块
:::::::::::::::::::::::::::::::::::::::::::::::
:judge
set tmp=%1
set var1=!tmp:~0,1!
set var2=!tmp:~1!
set /a flag1=ctoi%var1%-1+var2
set /a flag2=var2-ctoi%var1%+1
rem 下面定义四个判断要用到的指标，分别代表横纵斜四个方向的落子情况
set judgeheng=
set judgezong=
set judgeyszx=
set judgezsyx=
rem 下面定义上述变量的具体值

rem 横向
    for /l %%j in (1,1,15) do (
    set judgeheng=!judgeheng!!my%var1%%%j!
    )
rem 纵向
    for %%j in (a %纵轴% o) do (
    set judgezong=!judgezong!!my%%j%var2%!
    )
rem 从右上到左下
    for %%i in (a %纵轴% o) do (
        call set judgeyszx=!judgeyszx!%%my%%i!flag1!%%
        set /a flag1-=1
    )
rem 从左上到右下
    for %%i in (a %纵轴% o) do (
        call set judgezsyx=!judgezsyx!%%my%%i!flag2!%%
        set /a flag2+=1
    )
rem 将上述四个指标串起来并进行判断
set judge=!judgeheng!*!judgezong!*!judgeyszx!*!judgezsyx!

    (echo !judge!|find "bbbbb">nul)&&goto blackwin
    (echo !judge!|find "wwwww">nul)&&goto whitewin
set score=
goto :eof
:::::::::::::::::::::::::::::::::::::::::::::::
::以下胜负已分
:::::::::::::::::::::::::::::::::::::::::::::::
:blackwin
set %input%=★
call :graph
echo 黑第%round%手胜！
pause
goto start

:whitewin
set %input%=☆
call :graph
echo 白第%round%手胜！
pause
goto start

:nowin
echo 百手和棋！
pause
goto start
:::::::::::::::::::::::::::::::::::::::::::::::
::以下为绘图过程
:::::::::::::::::::::::::::::::::::::::::::::::
:graph
cls
echo                    输入RESTART重新开局
set /p = <nul
for /l %%i in (1,1,8) do set /p=%%i   <nul
for /l %%i in (9,1,15) do set /p=%%i <nul
::echo.
for %%i in (A %纵轴%) do (
    set /p =%%i<nul
    for /l %%j in (1,1,14) do (
    set /p =!%%i%%j!━<nul
    )
    echo !%%i15!
    for /l %%j in (1,1,15) do (
    set /p = ┃ <nul
    )
    echo.
)
set /p =O<nul
for /l %%i in (1,1,14) do set /p =!O%%i!━<nul
echo !O15!
echo 输入时先字母后数字。如H8。
goto :eof
::::::::::::::::::::::::::::::::::::::::::::::: 
::以下是电脑下棋思路 
::::::::::::::::::::::::::::::::::::::::::::::: 
:ai
if %round% equ 1 set input=h8&goto ainext
set aitmp=%input%
set aivar1=%aitmp:~0,1%
set aivar2=%aitmp:~1%

:loop
set /a aiflag1=ctoi%aivar1%+%random%%%3-%random%%%3
set aiflag2=!itoc%aiflag1%!

set /a aivar=aivar2+%random%%%3-%random%%%3

if "!my%aiflag2%%aivar%!"=="*" (
set input=%aiflag2%%aivar%
)else goto loop

set /a aic1=ctoi%aivar1%+1
set /a aic2=ctoi%aivar1%-1
set aic1=!itoc%aic1%!
set aic2=!itoc%aic2%!
set /a aii1=aivar2+1
set /a aii2=aivar2-1
set aistr=bw
set air=!aistr:%2=!

call :analyse %aivar1%%aii1% %air%
call :analyse %aivar1%%aii2% %air%
call :analyse %aic1%%aivar2% %air%
call :analyse %aic2%%aivar2% %air%
call :analyse %aic1%%aii1% %air%
call :analyse %aic1%%aii2% %air%
call :analyse %aic2%%aii1% %air%
call :analyse %aic2%%aii2% %air%

if not defined preinput goto ainext
set aitmp=%preinput%
set aivar1=!aitmp:~0,1!
set aivar2=!aitmp:~1!
set /a aic1=ctoi%aivar1%+1
set /a aic2=ctoi%aivar1%-1
set aic1=!itoc%aic1%!
set aic2=!itoc%aic2%!
set /a aii1=aivar2+1
set /a aii2=aivar2-1
call :analyse %aivar1%%aii1% %2
call :analyse %aivar1%%aii2% %2
call :analyse %aic1%%aivar2% %2
call :analyse %aic2%%aivar2% %2
call :analyse %aic1%%aii1% %2
call :analyse %aic1%%aii2% %2
call :analyse %aic2%%aii1% %2
call :analyse %aic2%%aii2% %2

:ainext
set %input%=%1
set my%input%=%2
set /a round+=1
set preinput=%input%
call:graph
call:judge %input%
goto :eof
:::::::::::::::::::::::::::::::::::::::::::
::分析评价模块
:::::::::::::::::::::::::::::::::::::::::::
:analyse
if not "!my%1!"=="*" goto :eof
set Atmp=%1
set Avar1=!Atmp:~0,1!
set Avar2=!Atmp:~1!
set /a Aflag1=ctoi%Avar1%-1+Avar2
set /a Aflag2=Avar2-ctoi%Avar1%+1

set judgeheng=
set judgezong=
set judgeyszx=
set judgezsyx=
    for /l %%j in (1,1,15) do (
    set judgeheng=!judgeheng!!my%Avar1%%%j!
    )
    for %%j in (a %纵轴% o) do (
    set judgezong=!judgezong!!my%%j%Avar2%!
    )
    for %%i in (a %纵轴% o) do (
        call set judgeyszx=!judgeyszx!%%my%%i!Aflag1!%%
        set /a Aflag1-=1
    )
    for %%i in (a %纵轴% o) do (
        call set judgezsyx=!judgezsyx!%%my%%i!Aflag2!%%
        set /a Aflag2+=1
    )
set judge=!judgeheng!*!judgezong!*!judgeyszx!*!judgezsyx!
set Astr=%2

    (echo !judge!|find "%Astr%">nul)&&(if "%score%" leq "1" set score=1&set input=%1)
    if "%slt3%" geq "2" (echo !judge!|find "%Astr%%Astr%">nul)&&(if "%score%" leq "2" set score=2&set input=%1)
    if "%slt3%" geq "3" (echo !judge!|find "%Astr%%Astr%%Astr%">nul)&&(if "%score%" leq "3" set score=3&set input=%1)
    if "%slt3%" equ "4" (echo !judge!|find "%Astr%%Astr%%Astr%%Astr%">nul)&&(if "%score%" leq "4" set score=4&set input=%1)

goto :eof


