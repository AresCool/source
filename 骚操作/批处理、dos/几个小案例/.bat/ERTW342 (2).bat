@echo off
rem eth           // 设置网卡名称，如"本地连接"
set eth="本地连接"
rem ip            // 设置IP地址
set ip=10.11.12.163
rem gw            // 设置网关
set gw=10.11.255.254
rem netmasks     //设置子网掩码
set netmasks=255.255.0.0
rem dns1         //设置主DNS
set dns1=202.96.75.68
rem dns2         //设置辅DNS
set dns2=202.96.64.68 
echo 正在将本机IP更改到：%ip%
netsh interface ip set address "%eth%" static %ip% %netmasks% %gw% default
echo 正在添加本机主DNS：%dns1%
netsh interface ip set dns "%eth%" static %dns1%
echo 正在添加本机副DNS：%dns2%
netsh interface ip add dns "%eth%" %dns2%
echo ---------------------------------
echo   IP更改完毕,哇哈哈哈哈...
echo ---------------------------------
pause
close












