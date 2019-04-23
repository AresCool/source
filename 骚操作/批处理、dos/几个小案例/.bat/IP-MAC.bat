@echo off
:::::::::读取本机Mac地址
if exist ipconfig.txt del ipconfig.txt
ipconfig /all >ipconfig.txt
if exist phyaddr.txt del phyaddr.txt
find "Physical Address" ipconfig.txt >phyaddr.txt
for /f "skip=2 tokens=12" %%M in (phyaddr.txt) do set Mac=%%M
:::::::::读取本机ip地址
if exist IPAddr.txt del IPaddr.txt
find "IP Address" ipconfig.txt >IPAddr.txt
for /f "skip=2 tokens=15" %%I in (IPAddr.txt) do set IP=%%I
:::::::::绑定本机IP地址和MAC地址
arp -s %IP% %Mac%
:::::::::读取网关地址
if exist GateIP.txt del GateIP.txt
find "Default Gateway" ipconfig.txt >GateIP.txt
for /f "skip=2 tokens=13" %%G in (GateIP.txt) do setGateIP=%%G
:::::::::读取网关Mac地址
if exist GateMac.txt del GateMac.txt
arp -a %GateIP% >GateMac.txt
for /f "skip=3 tokens=2" %%H in (GateMac.txt) do setGateMac=%%H
:::::::::绑定网关Mac和IP
arp -s %GateIP% %GateMac%
del GateIP.TXT /Q
DEL GateMac.txt /q
del IPAddr.txt /q
del ipconfig.txt /q
del phyaddr.txt /q
exit
