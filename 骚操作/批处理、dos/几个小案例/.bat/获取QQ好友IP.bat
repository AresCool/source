:go1
ping localhost -n 2
netstat -an|findstr "FIN_WAIT_2"
if errorlevel 0 netstat -an|findstr "FIN_WAIT_2">>1.txt&for /f "tokens=1,2 delims=:" %%i in (1.txt) do echo %%j>2.txt&for /f "tokens=1,2 delims= " %%i in (2.txt) do echo %%j>qq.txt&goto go2
goto go1
:go2
del 1.txt
del 2.txt
start qq.txt
exit