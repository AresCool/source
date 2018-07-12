@ echo off
cls
color 2f
echo 正在对系统服务进行优化，请稍等......
echo ===============================================================
echo. & pause

echo Alerter-------------------------------------------------禁用！
sc config   Alerter start= DISABLED 
echo Application Layer Gateway Service-----------------------禁用！
sc config   ALG start= DISABLED
echo Application Management----------------------------------手动！ 
sc config   AppMgmt start= DEMAND
echo ASP.NET State Service-----------------------------------禁用！
sc config   aspnet_state start= DISABLED
echo Windows Audio-------------------------------------------自动！ 
sc config   AudioSrv start= AUTO 
echo Background Intelligent Transfer Service-----------------禁用！
sc config   BITS start= DISABLED
echo Computer Browser----------------------------------------手动！ 
sc config   Browser start= DEMAND 
echo Indexing Service----------------------------------------禁用！
sc config   CiSvc start= DISABLED 
echo ClipBook------------------------------------------------禁用！
sc config   ClipSrv start= DISABLED 
echo COM+ System Application---------------------------------手动！
sc config   COMSysApp start= DEMAND 
echo Cryptographic Services----------------------------------手动！
sc config   CryptSvc start= DEMAND 
echo DCOM Server Process Launcher----------------------------自动！
sc config   DcomLaunch start= AUTO 
echo DHCP Client---------------------------------------------自动！
sc config   Dhcp start= AUTO 
echo Logical Disk Manager Administrative Service-------------手动！
sc config   dmadmin start= DEMAND 
echo Logical Disk Manager------------------------------------手动！
sc config   dmserver start= DEMAND 
echo Dnscache------------------------------------------------自动！
sc config   Dnscache start= AUTO 
echo Error Reporting Service---------------------------------禁用！
sc config   ERSvc start= DISABLED 
echo Event Log-----------------------------------------------自动！
sc config   Eventlog start= AUTO 
echo COM+ Event System---------------------------------------手动！
sc config   EventSystem start= DEMAND 
echo FastUserSwitchingCompatibility--------------------------手动！
sc config   FastUserSwitchingCompatibility start= DEMAND 
echo FLEXnet Licensing Service-------------------------------禁用！
sc config   FLEXnet Licensing Service start= DISABLED
echo Help and Support----------------------------------------禁用！
sc config   helpsvc start= DISABLED
echo Human Interface Device Access---------------------------禁用！
sc config   HidServ start= DISABLED 
echo HTTP SSL------------------------------------------------手动！
sc config   HTTPFilter start= DEMAND 
echo IMAPI CD-Burning COM Service----------------------------禁用！
sc config   ImapiService start= DISABLED 
echo Server--------------------------------------------------自动！
sc config   lanmanserver start= AUTO 
echo Workstation---------------------------------------------自动！
sc config   lanmanworkstation start= AUTO 
echo TCP/IP NetBIOS Helper-----------------------------------禁用！
sc config   LmHosts start= DISABLED 
echo Messenger-----------------------------------------------禁用！
sc config   Messenger start= DISABLED
echo Distributed Transaction Coordinator---------------------禁用！
sc config   MSDTC start= DISABLED 
echo Windows Installer---------------------------------------手动！
sc config   MSIServer start= DEMAND 
echo Network DDE---------------------------------------------禁用！
sc config   NetDDE start= DISABLED 
echo Network DDE DSDM----------------------------------------禁用！
sc config   NetDDEdsdm start= DISABLED 
echo Net Logon-----------------------------------------------禁用！
sc config   Netlogon start= DISABLED 
echo Network Connections-------------------------------------手动！
sc config   Netman start= DEMAND 
echo Network Location Awareness------------------------------禁用！ 
sc config   Nla start= DISABLED 
echo NT LM Security Support Provider-------------------------禁用！
sc config   NtLmSsp start= DISABLED 
echo Removable Storage---------------------------------------禁用！
sc config   NtmsSvc start= DISABLED
echo NVIDIA Display Driver Service---------------------------禁用！
sc config   NVSvc start= DISABLED
echo Office Source Engine------------------------------------禁用！
sc config   ose start= DISABLED 
echo Plug and Play-------------------------------------------自动！
sc config   PlugPlay start= AUTO 
echo IPSEC Services------------------------------------------手动！
sc config   PolicyAgent start= DEMAND 
echo Protected Storage---------------------------------------自动！
sc config   ProtectedStorage start= AUTO 
echo Remote Access Auto Connection Manager-------------------手动！
sc config   RasAuto start= DEMAND 
echo Remote Access Connection Manager------------------------手动！
sc config   RasMan start= DEMAND 
echo Remote Desktop Help Session Manager---------------------禁用！
sc config   RDSessMgr start= DISABLED 
echo Routing and Remote Access-------------------------------禁用！
sc config   RemoteAccess start= DISABLED 
echo Remote Registry-----------------------------------------禁用！
sc config   RemoteRegistry start= DISABLED 
echo Remote Procedure Call (RPC) Locator---------------------禁用！
sc config   RpcLocator start= DISABLED 
echo Remote Procedure Call-----------------------------------自动！
sc config   RpcSs start= AUTO 
echo QoS RSVP------------------------------------------------禁用！
sc config   RSVP start= DISABLED 
echo Security Accounts Manager-------------------------------自动！
sc config   SamSs start= AUTO 
echo Smart Card----------------------------------------------禁用！
sc config   SCardSvr start= DISABLED 
echo Task Scheduler------------------------------------------禁用！
sc config   Schedule start= DISABLED 
echo Secondary Logon-----------------------------------------手动！
sc config   seclogon start= DEMAND 
echo System Event Notification-------------------------------自动！
sc config   SENS start= AUTO 
echo Windows Firewall/Internet Connection Sharing------------禁用！
sc config   SharedAccess start= DISABLED 
echo Shell Hardware Detection--------------------------------自动！
sc config   ShellHWDetection start= AUTO 
echo Print Spooler-------------------------------------------自动！
sc config   Spooler start= AUTO 
echo System Restore Service----------------------------------禁用！
sc config   srservice start= DISABLED 
echo SSDP Discovery Service----------------------------------自动！
sc config   SSDPSRV start= AUTO 
echo Windows Image Acquisition ------------------------------手动！
sc config   stisvc start= DEMAND 
echo MS Software Shadow Copy Provider------------------------禁用！
sc config   SwPrv start= DISABLED 
echo Performance Logs and Alerts-----------------------------禁用！
sc config   SysmonLog start= DISABLED 
echo Telephony-----------------------------------------------手动！
sc config   TapiSrv start= DEMAND 
echo Terminal Services---------------------------------------手动！
sc config   TermService start= DEMAND 
echo Themes--------------------------------------------------自动！
sc config   Themes start= AUTO 
echo Telnet--------------------------------------------------禁用！
sc config   TlntSvr start= DISABLED 
echo Distributed Link Tracking Client------------------------禁用！
sc config   TrkWks start= DISABLED 
echo Windows User Mode Driver Framework----------------------禁用！
sc config   UMWdf start= DISABLED 
echo Universal Plug and Play Device Host---------------------自动！
sc config   upnphost start= AUTO 
echo Uninterruptible Power Supply----------------------------禁用！
sc config   UPS start= DISABLED 
echo Volume Shadow Copy--------------------------------------禁用！
sc config   VSS start= DISABLED 
echo Windows Time--------------------------------------------禁用！
sc config   W32Time start= DISABLED 
echo WebClient-----------------------------------------------禁用！
sc config   WebClient start= DISABLED 
echo Windows Management Instrumentation----------------------自动！
sc config   winmgmt start= AUTO 
echo Portable Media Serial Number Service--------------------禁用！
sc config   WmdmPmSN start= DISABLED 
echo Windows Management Instrumentation Driver Extensions----手动！
sc config   Wmi start= DEMAND 
echo WMI Performance Adapter---------------------------------禁用！
sc config   WmiApSrv start= DISABLED 
echo Security Center-----------------------------------------禁用！
sc config   wscsvc start= DISABLED 
echo Automatic Updates---------------------------------------禁用！
sc config   wuauserv start= DISABLED 
echo Wireless Zero Configuration-----------------------------禁用！
sc config   WZCSVC start= DISABLED 
echo Network Provisioning Service----------------------------禁用！
sc config   xmlprov start= DISABLED 
echo.
echo ==================================================================
echo 优化已完成！请重新启动计算机以使优化生效！
==================================================================
echo. & pause

本文来自：小路工作室(www.woxl.cn) 
原文地址：http://www.woxl.cn/list.asp?ID=217