@echo off 
set 
route=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration 
for /f %%i in (&#39;reg query %route% /f scaling /s&#39;) do ( 
reg add %%i /v Scaling /t reg_dword /d 3 /f 
goto end 
) 
:end 