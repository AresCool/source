@ echo off
color f0
title 批处理解密工具
set /p a=请输入要解密的批处理文件（请放到当前目录下）：
echo 解密后文件.bat即为解密之后的文件！
pause
type %a%>解密后文件.bat
echo 解密完成！
pause
exit