@echo off 
title 深度www.deepin.org出品
color f2
mode con: cols=45 lines=25 

:start 
cls 
echo. 
ECHO    # 更改文件系统属性和隐藏属性批处理 # 
echo. 
ECHO               newstayking编制

echo. 
echo. 
ECHO 请选择要进行的操作，然后按回车键开始!

echo.
echo   加上文件或文件夹系统和隐藏属性…………1 
echo. 
echo   去除文件或文件夹系统和隐藏属性…………2 
echo. 
echo   退出……………………………………………3 

echo. 
@set /p UserSelection=选择 ( 1 , 2 ) 
if %UserSelection% LEQ 3 if %UserSelection% GEQ 1 goto selection 
goto start 

:selection 
@if "%UserSelection%"=="1" set selection=加上
@if "%UserSelection%"=="2" set selection=去除
@if "%UserSelection%"=="3" goto endall 


:name 
cls 
echo. 
ECHO    # 解除文件系统属性和隐藏属性批处理 # 
echo. 
ECHO               newstayking编制
echo. 
echo. 
echo 同目录内所有文件和文件夹%selection%属性………回车键 
echo. 
echo 退出…………………………………………………Q 
echo. 
echo 请输入要%selection%属性的文件全名（包括扩展名），如果不在同目录下请输入完整路径： 
set /p name= 
if "%name%"=="q" goto endall 
if not exist %name% goto none 
if "%UserSelection%"=="1" goto add 
if "%UserSelection%"=="2" goto minus 



:none 
cls 
echo. 
echo. 
echo 找不到%name%文件,请确认文件名或者路径正确 
echo. 
echo. 
pause 
goto name 


:add 
attrib -s -h %name% /d /s
attrib +s +h %name% /d /s
goto end 


:minus 
attrib -s -h * /d /s

:end 
echo. 
echo 继续为其他文件修改属性…………y 
echo. 

@set /p UserSelection2=继续为其他文件修改属性？（ y ，n） 
@if "%UserSelection2%"=="y" goto start 

:endall 
cls 
echo. 
echo. 
echo. 
echo. 

echo 请按任意键退出！ 
pause>nul