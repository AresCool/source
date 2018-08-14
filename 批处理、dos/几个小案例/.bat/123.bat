你的文件属性被恶意修改了。虽然没有病毒了，但是被修改的属性不会自己变回去。，
在桌面新建一个文本文件，打开，把下面的所有文字复制进去，然后点击“文件”-“另存为”，在出来的对话框中，把格式选择为“所有格式”然后名字存成“123.bat”。保存。然后到你保存的位置，双击“123.bat”。会出现一个运行的程序的样子。按照提示来就行。简单的很。
有问题找我。





@echo off     
title ReCover  
color 2f    
   
echo   
echo   
           
:start     
echo 请输入你要恢复隐藏文件夹所在的分区盘符    
set /p rootpath=[一个字母，如 D 盘则输入字母 D ]:     
echo 确认-------------------------------------------    
echo 确定要恢复 %rootpath%:\ 盘下的所有文件夹隐藏属性吗？    
set /p is=[确定请输Y，否则请输N，退出输入Q]：    
if /i "%is%"=="Y" goto restore    
if /i "%is%"=="N" goto start    
if /i "%is%"=="Q" goto end   
goto start    
   
:restore   
echo 恢复-------------------------------------------    
echo 请稍候，正在恢复 %rootpath%:\ 盘下的所有文件夹隐藏属性...    
attrib %rootpath%:\"*" -s -h /s /d    
echo 完毕------------------------------------------- 
echo 恢复完成要继续恢复其它目录下的文件夹吗？    
set /p again=[确定请输Y，否则请输N]：    
if /i "%again%"=="Y" goto start    
if /i "%again%"=="N" goto end   
   
:end   
echo 结束-------------------------------------------    
echo    
pause .& 