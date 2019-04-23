set /p n=请输入要获取字符的十进制 ASCII 值:
mshta vbscript:clipboardData.SetData("text",chr(%n%))(close)
