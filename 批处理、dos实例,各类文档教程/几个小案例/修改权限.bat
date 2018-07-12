@echo off
title 修改文件权限
color 0e
@echo off
@echo "  ------------------------------"                             
@echo "              .---.            |"
@echo "             (_,/\ \           |"
@echo "            (`a a(  )          |"
@echo "            ) \=  ) (          |"
@echo "           (.--' '--.)         |"
@echo "           / (_\_/_) \         |"
@echo "          | / \   / \ |        |"
@echo "           \\ / . \ //         |"
@echo "            \/\___/\/          |"
@echo "            |  \_/  |          |"
@echo "             \  /  /           |"
@echo "              \/  /            |"
@echo "               ( (             |"
@echo "               |\ \            |"
@echo "               | \ \           |"
@echo "              /_Y/_Y           |"
:start
@echo 请选择相应的操作
choice /c ab /m "a:修改权限，b:退出"
if %errorlevel% EQU 1 goto aa
if %errorlevel% EQU 2  exit


:aa
@echo "    <----请输入文件的完整路径 ---->"
set /p file=

echo   "<----请选择要修改的权限 ----->"

@echo ↓      ↓      ↓     ↓  

choice /C abcd /m "a:读取，b:写入，c:更改，d:完全控制"




if %errorlevel% EQU 4   goto d


if %errorlevel%  EQU 3   goto c

if %errorlevel% EQU 2   goto b


if %errorlevel% EQU 1   goto a






:a
cacls %file% /T /C /G  everyone:R

goto start

:b
cacls %file% /T  /C /G everyone:W

goto start

:c
cacls %file% /T  /C /G everyone:C

goto start

:d
cacls %file% /T  /C  /G everyone:F

goto start

