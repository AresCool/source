@echo off
　　color 0A
　　MODE con: COLS=80 LINES=31
　　for /l %%i in (1,1,20) do echo.
　　echo                         win2000正在启动中,请稍候...
　　echo.
　　echo.
　　set /p a=">=============================================================================="<nul
　　for /l %%i in (1,1,80) do (
　　set /p aa=<nul
　　)
　　for /l %%i in (1,1,80) do (
　　set /p aa=^><nul
　　ping/n 0 127.1 >nul
　　)
本篇文章来源于 黑客基地-全球最大的中文黑客站 原文链接：http://www.hackbase.com/tech/2009-07-23/54148.html