@echo off
:: 不能判断空白盘
:: code by electronixtar 2006-12-6
if exist \\?\CdRom0\* (echo 有光盘) else (echo 无光盘)
pause