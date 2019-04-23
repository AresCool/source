@echo off
<"%~f0" more +8 >sy.hta
start sy.hta
mode con cols=14 lines=3
color 8d
echo 谢谢使用，再见！
ping 0 /n 2 >nul
del sy.hta >nul

<html>
<head>

<HTA:Application
ID="oHTA"
ApplicationName="TroDropper"
Scroll="No"
Caption="Yes"
SingleInstance="No"
MaximizeButton="No"
MinimizeButton="Yes"
ShowInTaskBar="Yes"
WindowState="Normal"
>

<Script language="vbscript">
Dim e
Dim PI
Dim YN
Dim mIndex
Dim His(9)
YN=0
e=2.71828182845905
PI=3.14159265358979

Sub Window_Onload()
Self.ResizeTo 285,355
Self.MoveTo 300,200
Reveal()
End Sub

Sub CL()
textfield_input.value=""
End Sub

Sub MeInfo()
MsgBox "网名：" & Chr(13) & Chr(13) & "HYCS" & Chr(13) & Chr(13) & "QQ：845557997",64,"我是谁？"
End Sub

Sub MyUp()
mIndex=mIndex-1
If mIndex<0 Then
mIndex=0
Else
textfield_input.value=His(mIndex)
End If
End Sub

Sub MyDown()
mIndex=mIndex+1
If mIndex>9 Then
mIndex=9
Else
textfield_input.value=His(mIndex)
End If
End Sub

Sub Reveal()
Submit_Time.value=Time()
MyTime=SetTimeOut("Reveal()",1000)
End Sub

Sub MyButton(str)
If YN Then textfield_input.value=""
textfield_input.value=textfield_input.value & Str
YN=0
End Sub

Sub Equ()
On Error Resume Next
YN=1
mIndex=9
tAns="Err"
tAns=CStr(EVal(textfield_input.value))
textfield_Ans.Value=tAns

If Not tAns="Err" Then Ans=CDbl(tAns)

For i=0 To 8
His(i)=His(i+1)
Next
His(9)=textfield_input.value
End Sub

Function ArcSin(num)
If num=1 Then
ArcSin=PI/2
Else
If num=-1 Then
ArcSin=-PI/2
Else
ArcSin=Atn(num/Sqr(-num*num+1))
End If
End If
End Function

Function ArcCos(num)
If num=1 Then
ArcCos=0
Else
If num=-1 Then
ArcCos=PI
Else
ArcCos=Atn(-num/Sqr(-num*num+1))+2*Atn(1)
End If
End If
End Function

Function ArcTan(num)
ArcTan=Atn(num)
End Function

Function ln(num)
ln=Log(num)
End Function

Function HpySin(num)
HpySin=(e^num-e^(-num))/2
End Function

Function HpyCos(num)
HpyCos=(e^num+e^(-num))/2
End Function

Function HpyTan(num)
HpyTan=HpySin(num)/HpyCos(num)
End Function
</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>老虎机</title>
<style type="text/css">
<!--
body,td,th {
font-family: 宋体;
font-size: medium;
color: #FFFF00;
}
body {
margin-left: 0px;
margin-top: 0px;
margin-right: 0px;
margin-bottom: 0px;
background-color: #000000;
}
.CInText {
font-family: Arial, Helvetica, sans-serif;
font-size: x-small;
font-style: normal;
line-height: normal;
font-weight: normal;
font-variant: normal;
text-transform: none;
color: #00FF00;
background-color: #000000;
text-align: right;
display: run-in;
white-space: normal;
letter-spacing: normal;
vertical-align: middle;
word-spacing: normal;
}
.COutText {
font-family: Arial, Helvetica, sans-serif;
font-size: medium;
font-style: normal;
line-height: normal;
font-weight: normal;
font-variant: normal;
text-transform: none;
color: #000000;
background-color: #00FFFF;
letter-spacing: normal;
text-align: right;
vertical-align: middle;
word-spacing: normal;
white-space: normal;
display: inline;
}
-->
</style>
</head>

<body
OnDragStart="Window.Event.ReturnValue=False"
OnConTextMenu="Window.Event.ReturnValue=False"
OnSelectStart="Window.Event.ReturnValue=False"
>

<table width="200" border="12" align="center" cellspacing="4">
<tr>
    <td colspan="5" align="center" valign="middle" nowrap bordercolor="#F0F0F0"><input name="textfield_input" type="text" class="CInText" id="textfield_input" size="30" maxlength="100"></td>
</tr>
<tr>
    <td colspan="5" align="center" valign="middle" nowrap bordercolor="#F0F0F0"><input name="textfield_Ans" type="text" class="COutText" id="textfield_Ans" size="22" maxlength="22"></td>
</tr>
<tr>
    <td colspan="3" align="center" valign="middle" nowrap><input name="Submit_Time" type="button" id="Submit_Time" onClick="MeInfo()" value="00:00:00">
    <input name="Submit_e" type="submit" id="Submit_e" onClick="MyButton(&quot;e&quot;)" value="e">      
    <input name="Submit_pi" type="submit" id="Submit_pi" onClick="MyButton(&quot;PI&quot;)" value="π"></td>
    <td align="center" valign="middle" nowrap><input name="Submit_up" type="submit" id="Submit_up" onClick="MyUp()" value=" ↑ "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_down" type="submit" id="Submit_down" onClick="MyDown()" value=" ↓ "></td>
</tr>
<tr>
    <td align="center" valign="middle" nowrap><input name="Submit_sin" type="submit" id="Submit_sin" onClick="MyButton(&quot;Sin(&quot;)"")" value="Sin"Sin(></td>
    <td align="center" valign="middle" nowrap><input name="Submit_cos" type="submit" id="Submit_cos" onClick="MyButton(&quot;Cos(&quot;)" value="Cos"></td>
    <td align="center" valign="middle" nowrap><input name="Submit_tan" type="submit" id="Submit_tan" onClick="MyButton(&quot;Tan(&quot;)" value="Tan"></td>
    <td align="center" valign="middle" nowrap><input name="Submit_arc" type="submit" id="Submit_arc" onClick="MyButton(&quot;Arc&quot;)" value="Arc"></td>
    <td align="center" valign="middle" nowrap><input name="Submit_hpy" type="submit" id="Submit_hpy" onClick="MyButton(&quot;Hpy&quot;)" value="Hpy"></td>
</tr>
<tr>
    <td align="center" valign="middle" nowrap><input name="Submit_ln" type="submit" id="Submit_ln" onClick="MyButton(&quot;ln(&quot;)" value="ln "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_zhi" type="submit" id="Submit_zhi" onClick="MyButton(&quot;^&quot;)" value=" ^ "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_sqrt" type="submit" id="Submit_sqrt" onClick="MyButton(&quot;Sqr(&quot;)" value="√ "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_zk" type="submit" id="Submit_zk" onClick="MyButton(&quot;(&quot;)" value=" ( "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_yk" type="submit" id="Submit_yk" onClick="MyButton(&quot;)&quot;)" value=" ) "></td>
</tr>
<tr>
    <td align="center" valign="middle" nowrap><input name="Submit_7" type="submit" id="Submit_7" onClick="MyButton(&quot;7&quot;)" value=" 7 "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_8" type="submit" id="Submit_8" onClick="MyButton(&quot;8&quot;)" value=" 8 "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_9" type="submit" id="Submit_9" onClick="MyButton(&quot;9&quot;)" value=" 9 "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_chu" type="submit" id="Submit_chu" onClick="MyButton(&quot;/&quot;)" value=" ÷ "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_clear" type="submit" id="Submit_clear" onClick="CL()" value=" CL "></td>
</tr>
<tr>
    <td align="center" valign="middle" nowrap><input name="Submit_4" type="submit" id="Submit_4" onClick="MyButton(&quot;4&quot;)" value=" 4 "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_5" type="submit" id="Submit_5" onClick="MyButton(&quot;5&quot;)" value=" 5 "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_6" type="submit" id="Submit_6" onClick="MyButton(&quot;6&quot;)" value=" 6 "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_cheng" type="submit" id="Submit_cheng" onClick="MyButton(&quot;*&quot;)" value=" × "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_off" type="submit" id="Submit_off" onClick="MyButton(&quot;Ans&quot;)" value=" Ans"></td>
</tr>
<tr>
    <td align="center" valign="middle" nowrap><input name="Submit_1" type="submit" id="Submit_1" onClick="MyButton(&quot;1&quot;)" value=" 1 "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_2" type="submit" id="Submit_2" onClick="MyButton(&quot;2&quot;)" value=" 2 "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_3" type="submit" id="Submit_3" onClick="MyButton(&quot;3&quot;)" value=" 3 "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_jian" type="submit" id="Submit_jian" onClick="MyButton(&quot;-&quot;)" value=" － "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_rnd" type="submit" id="Submit_rnd" onClick="MyButton(&quot;Rnd()&quot;)" value=" RND"></td>
</tr>
<tr>
    <td align="center" valign="middle" nowrap><input name="Submit_0" type="submit" id="Submit_0" onClick="MyButton(&quot;0&quot;)" value=" 0 "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_fu" type="submit" id="Submit_fu" onClick="MyButton(&quot;-&quot;)" value="(-)"></td>
    <td align="center" valign="middle" nowrap><input name="Submit_point" type="submit" id="Submit_point" onClick="MyButton(&quot;.&quot;)" value=" . "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_jia" type="submit" id="Submit_jia" onClick="MyButton(&quot;+&quot;)" value=" ＋ "></td>
    <td align="center" valign="middle" nowrap><input name="Submit_equ" type="submit" id="Submit_equ" onClick="Equ()" value=" ＝ "></td>
</tr>
</table>
</body>
</html>


