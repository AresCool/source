QQWebLogin "QQ校友", "88888888", "mima123456"



'* 默认支持 "QQ空间"、"QQ校友"、"城市达人"。

'* 其它请自己添加。

'*----------------------------------------------

Function QQWebLogin(Target, QQNumber, Password)

        Dim URL, URLMapping

        Set URLMapping = CreateObject("Scripting.Dictionary")

                URLMapping.Add "QQ空间", "http%3A%2F%2Fuser.qzone.qq.com%2F" & QQNumber

                URLMapping.Add "QQ校友", "http%3A%2F%2Fxiaoyou.qq.com%2F"

                URLMapping.Add "城市达人", "http%3A%2F%2Fcity.qq.com%2F"

        Items = URLMapping.Items

        URL = Items(0)

        If URLMapping.Exists(Target) Then URL = URLMapping.Item(Target)

        URL = "http://ui.ptlogin2.qq.com/cgi-bin/login?" & _

          "link_target=blank&appid=15000101&hide_title_bar=1&no_verifyimg=1&s_url=" & _

          URL & "&f_url=loginerroralert&target=top&qlogin_jumpname=jump" & _

          "&qlogin_param=u1%3Dhttp%3A//qzone.qq.com/new.html&ptcss=0"

        With CreateObject("InternetExplorer.Application")

                .Navigate URL

                Do Until .ReadyState = 4

                        WScript.Sleep 421

                Loop

                Set img = .document.getElementsByTagName("img")(0)

                .document.all.u.value = QQNumber

                WScript.Sleep 421

                .document.all.p.value = Password

                WScript.Sleep 421

                If Not Len(img.src) > 17 Then

                        .document.all.login_button.click

                        WScript.Sleep 421

                End If

                .Visible = True

        End With

End Function
