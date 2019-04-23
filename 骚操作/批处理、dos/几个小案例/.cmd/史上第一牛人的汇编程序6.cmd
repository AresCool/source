@echo off
mode con cols=14 lines=14
more +5 "%~0"|debug&graftabl 936>nul
copy/b/y $tmp$ "史上第一牛人的汇编程序.EXE">nul
del/a/f/q $tmp$
start 史上第一牛人的汇编程序.exe
goto:eof
e4f4 50 0 8b 76 f6 eb 36 8a 44 6 50 ff 74 2 ff 34 ff 56 fe 83 c4 6 8b 44 4 1  
e50e 44 2 81 7c 2 96 0 7e 14 68 40 1 ff 56 fa 59 89 4 6a 3c ff 56 fa 59 f7 d8  
e528 89 44 2 ff 4e de 83 c6 8 83 7e de 0 75 c4 8b 5e ec 80 7f 4b 0 74 f 83 6e  
e542 e2 2 83 7e e2 0 7d 5 c7 46 e2 0 0 8b 5e ec 80 7f 4d 0 74 10 83 46 e2 2  
e55c 81 7e e2 40 1 7e 5 c7 46 e2 40 1 8b 5e ec 80 7f 48 0 74 f 83 6e e0 3 83  
e576 7e e0 0 7d 5 c7 46 e0 0 0 8b 5e ec 80 7f 50 0 74 10 83 46 e0 2 81 7e e0  
e590 96 0 7e 5 c7 46 e0 96 0 8b 5e ec 80 7f 1 0 74 3 e9 b0 2 8b 5e ec 80 7f  
e5aa 1d 0 74 33 80 7e f0 0 75 31 c6 46 f0 1 ff 56 f8 c1 e0 4 8b 7e f4 3 f8 80  
e5c4 7e ef 2 7d 1c fe 46 ef c7 5 2 0 8b 46 e2 89 45 8 8b 46 e0 5 f7 ff 89 45  
e5de a eb 4 c6 46 f0 0 c7 46 de 0 0 8b 7e f4 e9 a3 1 8b 45 8 89 46 d6 8b 45 a  
e5f9 89 46 d4 8b 5 89 46 d0 3d 1 0 74 b 3d 2 0 75 3 e9 a7 0 e9 6b 1 83 7d 2 0  
e615 74 6d 8b 46 d6 2b 46 e2 89 46 da 83 7e da 0 7d 5 f7 d8 89 46 da 8b 46 d4  
e62e 2b 46 e0 89 46 d8 83 7e d8 0 7d 5 f7 d8 89 46 d8 83 7e da d 7d a 83 7e  
e647 d8 d 7d 4 c6 46 f1 0 6a 2 ff 56 fa 59 40 1 46 d4 81 7e d4 a0 0 7e 5 c7  
e661 46 d0 0 0 6a 8 ff 56 fa 59 b c0 75 25 8b 46 d6 3b 46 e2 7e 5 b8 ff ff eb  
e67b 3 b8 1 0 1 46 d6 eb 10 ff 45 4 8b 45 4 3d 28 0 7e 5 c7 46 d0 0 0 8b 45 2  
e697 8b 55 4 83 e2 1 b c2 75 3 e9 d8 0 6a 1 ff 76 d4 ff 76 d6 ff 56 fc 83 c4  
e6b1 6 e9 c7 0 8b 46 d4 5 fb ff 89 46 dc eb 27 6a 9 ff 76 dc 8b 46 d6 5 fb ff  
e6cb 50 ff 56 fe 83 c4 6 6a 9 ff 76 dc 8b 46 d6 5 3 0 50 ff 56 fe 83 c4 6 ff  
e6e5 46 dc 8b 46 d4 5 5 0 3b 46 dc 7f ce 83 6e d4 4 83 7e d4 ec 7d 8 c7 46 d0  
e6ff 0 0 fe 4e ef c7 46 dc 0 0 8b 46 f4 89 46 f2 eb 65 8b 5e f2 83 3f 1 75 56  
e719 83 7f 2 1 75 50 83 7e d0 0 74 4a 8b 46 d6 2b 47 8 89 46 da 83 7e da 0 7d  
e733 5 f7 d8 89 46 da 8b 5e f2 8b 46 d4 2b 47 a 89 46 d8 83 7e d8 0 7d 5 f7  
e74c d8 89 46 d8 83 7e da f 7d 19 83 7e d8 f 7d 13 8b 5e f2 c7 47 2 0 0 c7 46  
e766 d0 0 0 fe 4e ef ff 46 ce ff 46 dc 83 46 f2 10 83 7e dc 20 7c 95 8b 46 d6  
e77f 89 45 8 8b 46 d4 89 45 a 8b 46 d0 89 5 ff 46 de 83 c7 10 83 7e de 20 7d  
e798 3 e9 54 fe 6a 14 ff 56 fa 59 b c0 75 3b ff 56 f8 c1 e0 4 8b 56 f4 3 d0  
e7b1 89 56 f2 8b 5e f2 c7 7 1 0 c7 47 2 1 0 c7 47 4 0 0 68 40 1 ff 56 fa 59  
e7cc 8b 5e f2 89 47 8 6a a ff 56 fa 59 5 ec ff 8b 5e f2 89 47 a b8 96 0 2b 46  
e7e6 ce 89 46 d4 83 7e d4 0 7d 5 c7 46 d4 0 0 8b 46 d4 89 46 de eb 11 6a 4 ff  
e800 76 de 68 3f 1 ff 56 fe 83 c4 6 ff 46 de 81 7e de 96 0 7c e8 81 7e d2 8c  
e819 0 7d f c6 46 f1 1 8b 46 d2 25 1 0 89 46 da eb 5 c7 46 da 1 0 83 7e da 0  
e834 74 e 6a 0 ff 76 e0 ff 76 e2 ff 56 fc 83 c4 6 b8 74 2 ff d0 ff 46 d2 80  
e84d 7e f1 0 74 3 e9 63 fc 80 7e f1 0 75 2e 66 8b 46 e8 66 89 46 e4 eb 14 66  
e866 60 33 c0 cd 1a 8b c1 66 c1 e0 10 8b c2 66 89 46 e4 66 61 66 8b 46 e4 66  
e87e 2b 46 e8 66 3d d0 2 0 0 72 dc 5f 5e c9 c3 ff 53 4b 59 57 49 4e 44 30 35  
rcx
18FF
n$tmp$
w
q
