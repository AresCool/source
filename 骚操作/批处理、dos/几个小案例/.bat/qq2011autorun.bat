@echo off 
            title DIY-QQ强制聊天工具
            color 0a 
            echo. 
            echo. 
            echo. 
            echo. 
            echo. 本程序应用于与任意号码聊天，也可以用于骚扰把你加入黑名单的Q友……
            echo. 有空欢迎看看 Www.OrSoon.Com 未来软件园
            echo. 
            echo. 
            echo. 
            echo. 请先打开QQ！！否则本程序无效！！！ 
            echo. 
            echo. 
            echo. 
            pause 
            echo. 
            echo. 
            echo. 
            echo. 
            :a 
            Set /p num=请输入你想要强制聊天的人的QQ号码: 
            If /I "%num%"=="n" Exit 
            start tencent://Message/?Uin=%num% 
            cls 
            echo. 
            echo. 
            echo. 
            echo. 
            echo. 点击任意键选择另一个人。 
            echo. 
            echo. 
            pause 
            echo. 
            echo. 
            echo. 
            echo. 
            Goto a