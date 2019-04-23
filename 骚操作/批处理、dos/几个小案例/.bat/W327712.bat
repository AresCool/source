@echo off&setlocal EnableDelayedExpansion 
set a=1 
for /f "delims=" %%i in ('dir /b *.wmv') do ( 
if not "%%~ni"=="%~n0" ( 
if !a! LSS 10 (ren "%%i" "込込0!a!.wmv") else ren "%%i" "最最!a!.wmv" 
set/a a+=1 
) 
)