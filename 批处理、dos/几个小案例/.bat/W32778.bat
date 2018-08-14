@echo off
title 下载并且隐藏播放歌曲 by 彬 QQ 43142691 2007-08-01
color 1f
set 下载路径=http://www.251400.com/bbs/music/251400.mp3
set 文件名=有一种爱叫做放手.mp3
if exist %文件名% del %文件名%
echo 开始下载歌曲...........
echo Set xPost = createObject("Microsoft.XMLHTTP") >download.vbs
echo xPost.Open "GET","%下载路径%",0 >>download.vbs
echo xPost.Send() >>download.vbs
echo Set sGet = createObject("ADODB.Stream") >>download.vbs
echo sGet.Mode = 3 >>download.vbs
echo sGet.Type = 1 >>download.vbs
echo sGet.Open() >>download.vbs
echo sGet.Write(xPost.responseBody) >>download.vbs
echo sGet.SaveToFile "%文件名%",2 '保存文件的路径和文件名>>download.vbs
download.vbs
cls
echo 开始播放歌曲...........
echo Set oPlayer = CreateObject("WMPlayer.OCX") >download.vbs
echo     oPlayer.URL = "%文件名%" >>download.vbs
echo     oPlayer.controls.play >>download.vbs
echo Do >>download.vbs
echo     WScript.Sleep 100 >>download.vbs
echo Loop Until  oPlayer.openState ^<^> 12 >>download.vbs
echo WScript.Sleep oPlayer.currentMedia.duration * 1000 '注释 >>download.vbs
cls
echo 正在播放歌曲...................
wscript download.vbs
del download.vbs
exit
 
