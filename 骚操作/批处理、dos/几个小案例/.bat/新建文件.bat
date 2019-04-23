@echo off
if not exist 备份 MD 备份
CD 备份
for /L %%i IN (1,1,31) do md %%i