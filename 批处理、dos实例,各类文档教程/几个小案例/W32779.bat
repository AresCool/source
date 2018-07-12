@echo off
title 歌曲批量下载\试听 ** 歌词批量下载  by:Ye - *
::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
::变量配置::::::::::::::::::::::::::::::
::歌曲格式%x%的设置如下,只可设置一种
::0 mp3;1 rm;2 wma;3 asf;4 ram;5 mid;6 flash;7 mpg;8 avi;9 mpeg;10 rmvb;11 ra
set "x=2"
::获取下载地址的个数%down_n%,这样当第一个下载地址失效时还是可以在别的地址下载的
set "down_n=2"
::歌曲歌词同时下载0 ;只下载歌词1
set "q+c=0"
::歌曲试听0 ;歌曲不试听1(当遇到试听+下载的时候先试听然后再开始下载)
set "t=1"
::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cls
if %t%*==0* if not exist mplayer.exe (
      echo 缺少文件mplayer.exe
      echo 请到http://www1.mplayerhq.hu/MPlayer/releases/win32/MPlayer-mingw32-1.0pre8.zip
      echo 或http://yx127.com/mplayer.exe下载,大小7.65M
      pause>nul&goto :eof)

::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cls
::设置文件关联
Assoc .lrc=lrc
Ftype lrc=C:\WINDOWS\system32\notepad.exe %1
::测试配置::::::::::::::::::::::::::::::
echo %~p0|find /i "Rar$">nul &&(echo 请把本程序解压到文件夹下使用&pause>nul&goto :eof)
if not exist wget.exe (echo 缺少文件wget.exe&pause>nul&goto :eof)
if not exist sed.exe (echo 缺少文件sed.exe&pause>nul&goto :eof)
if not exist music.txt (
      echo 缺少文件music.txt,请手动写入
      echo.
      echo -----music.txt格式如下-------------------
      echo 天冷就回来
      echo 不得不爱
      echo ......
      echo -----------------------------------------
      pause>nul&goto :eof
                        )
echo %x%|findstr "[0-9]">nul||call :xxxx
if not %x%==0 if %x:~0,1%==0 call :xxxx
if 11 lss %x% call :xxxx
echo %q+c%|findstr "[0-9]">nul||call :xxxx
if not %q+c%==0 if %q+c:~0,1%==0 call :xxxx
if 1 lss %q+c% call :xxxx
echo %t%|findstr "[0-9]">nul||call :xxxx
if not %t%==0 if %t:~0,1%==0 call :xxxx
if 1 lss %t% call :xxxx
ping -n 1 mp3.baidu.com>nul||(echo 请先检查网络,ping不通http://mp3.baidu.com&pause>nul&goto :eof)
findstr . music.txt>nul||(echo music.txt中没有任何歌曲&pause>nul&goto :eof)
::根据%x%自动设置歌曲格式%n_%
::0 mp3;1 rm;2 wma;3 asf;4 ram;5 mid;6 flash;7 mpg;8 avi;9 mpeg;10 rmvb;11 ra
if %x%==0 set x_=mp3
if %x%==1 set x_=rm
if %x%==2 set x_=wma
if %x%==3 set x_=asf
if %x%==4 set x_=ram
if %x%==5 set x_=mid
if %x%==6 set x_=flash
if %x%==7 set x_=mpg
if %x%==8 set x_=avi
if %x%==9 set x_=mpeg
if %x%==10 set x_=rmvb
if %x%==11 set x_=ra
goto test_ok
:xxxx
echo 变量配置错误&pause>nul&goto :eof
::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:test_ok
cd.>xxxx.txt
::开始下载::::::::::::::::::::::::::::::
cls
echo ---------------------------------------------------------- 
echo 任意键开始下载下列歌曲,继续添加请打开music.txt添加
echo ---------------------------------------------------------- 
more<music.txt
echo ---------------------------------------------------------- 
for /f "tokens=*" %%? in ('sed "s/ //g" music.txt') do call :start "%%?"
del /q/f temp_.txt&del /q/f index.txt
cls
findstr . xxxx.txt>nul||(del /q/f xxxx.txt&echo 所有歌曲下载完毕&pause>nul&goto :eof)
echo 下面几个歌曲没有下载到&type xxxx.txt&del /q/f xxxx.txt&pause>nul&goto :eof

:start
cls
set "p1=http://mp3.baidu.com/m?f=ms^&tn=baidump3^&ct=134217728^&lf=^&rn=^&word="
set "p2=^&lm="
set "n=%~1"
::url_a是直接baidu搜索歌曲的页面
set "url_a=%p1%%n%%p2%%x%"
call :wget.bat "%url_a%" index.txt
find "抱歉，没有找到与" index.txt>nul &&(echo 抱歉,没有找到于"%n%"相关的MP3内容&>>xxxx.txt echo %n%&ping -n 1 127.1>nul&goto :eof)

:下载歌词
if not exist %n%.lrc (
for /f "tokens=2 delims=★" %%? in ('sed -n "/<td width=10px valign=top>1<\/td>/{n;n;n;n;n;n;n;p;}" index.txt ^|sed "s/\x22/★/g"') do (call :wget.bat "%%?" temp_.txt)
  sed -n "/<div class=\x22pad10L\x22>/{n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;p;}" temp_.txt |sed  "s/<font style=color:#e10900>//g" |sed "s/<\/font>//g" |sed "s/<br>/,/g">>%n%.lrc
  echo 歌曲%n%.%x_%的歌词下载完毕
                     ) else (echo 歌曲%n%.%x_%的歌词已经存在)
ping -n 1 127.1>nul

if "%q+c%"=="1" (if "%t%"=="1" goto end_2)
:下载歌曲
::url_b?是有歌曲下载地址的页面
for /l %%~ in (1,1,%down_n%) do (
     if exist %n%.%x_% goto end_2
     for /f "tokens=2 delims=★" %%? in ('sed -n "/<td width=10px valign=top>%%~<\/td>/{n;n;p;}" index.txt ^|sed "s/\x22/★/g"') do (
      set "url_b%%~=%%?"
      call :wget.bat "%%?" temp_.txt
                     )
for /f "tokens=6 delims=★" %%! in ('sed -n "/请点击此链接/{n;p;}" temp_.txt ^|sed "s/\x22/★/g"') do (
           if %t%*==0* call :mplayer.bat "%%!"
           if %q+c%*==1* goto end_2
           echo 正在下载歌曲%n%.%x_%......
           ::重复尝试3次,不安静下载(显示下载进度,要想安静下载加上-q参数)
           wget --output-document=%n%.%x_% --tries=3 -q "%%!"
           echo 歌曲%n%.%x_%下载完毕
                                                                                                       )
                                 )
:end_2
ping -n 1 127.1>nul

goto :eof

::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
::call *.bat::::::::::::::::::::::::::::::
:wget.bat
cd.>%2
wget --output-document=%2 -q "%~1"
goto :eof

:mplayer.bat
cls
title mplayer→→%~1
echo.
echo ------播放控制-----------------------------------------------------------------
echo                  ← or →         倒退 or 快进 10 seconds
echo                  ↑ or ↓         倒退 or 快进 1  minute
echo              pgdown or pgup       倒退 or 快进 10 minutes
echo                   p or 空格       暂停/播放 (pause movie^)
echo            q or ESC or 回车       结束/下一曲 (stop playing and quit program^)
echo                   9 or 0          增加/减少音量
echo                   [ or ]          增加/减少播放速度
echo --------------------------------------------------------------------------------
echo.
echo ------歌词----------------------------------------------------------------------
type %n%.lrc
echo --------------------------------------------------------------------------------
mplayer "%~1">nul
goto :eof
