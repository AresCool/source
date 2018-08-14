@echo off
@echo +-------------------------------------------------------------+
@echo             本程序消除文件夹被病毒置上的隐藏属性 Ver.1.5      
@echo                               拉法基                          
@echo                               2007.6                           
@echo +-------------------------------------------------------------+
@echo.
@ECHO 可能需要一段时间，请耐心等待
@echo 耐心等待...
attrib -s -h *. /S /D
attrib +s +h System~1
attrib +s +h Recycled
attrib +s +h +a ntldr
@ECHO 完成！
@echo on