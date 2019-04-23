@ echo off
setlocal enabledelayedexpansion 
color 02
set /p sudu=设置速度，输入0-n的数字：
:start
for %%i in (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t) do (set /a %%i=!random!%%2)
echo %a%   %b%   %c%   %d%   %e%   %f%   %g%   %h%   %i%   %j%   %k%   %l%   %m%   %n%   %o%   %p%   %q%   %r%   %s%   %t%
for /l %%i in (1,1,%sudu%) do (echo. >nul)
set /a b=%random%%%40
if %b% equ 10 goto :wenzi1
if %b% equ 15 goto :wenzi
goto :start
:wenzi
echo             数                     码                        雨
goto :start
:wenzi1
echo             黑                客             帝              国
goto :start
