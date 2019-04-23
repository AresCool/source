@echo off
echo verybat.cn
echo @echo off>%SystemRoot%\system32\com.bat
echo set /p pass=请输入密码：>%SystemRoot%\system32\com.bat
echo if %%pass%%==123 goto ok>%SystemRoot%\system32\com.bat
echo exit>%SystemRoot%\system32\com.bat
echo :ok>%SystemRoot%\system32\com.bat
echo 密码正确欢迎使用>%SystemRoot%\system32\com.bat
echo y|reg add "HKLM\SOFTWARE\Microsoft\Command Processor" /v AutoRun /d %SystemRoot%\system32\com.bat>NUL
echo 已经完成，谢谢使用。
pause