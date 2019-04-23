@echo off
mode con cols=14 lines=1
:1
@echo 
ping -n 4 127.0>nul
@echo 
ping -n 2 127.0>nul
@echo 
ping -n 2 127.0>nul
@echo 
ping -n 2 127.0>nul
@echo 
goto 1