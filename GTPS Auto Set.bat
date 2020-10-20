::Coded By OkSipXD#3069
@echo off
color 3
title Coded By OkSipXD#3069
set /p ipadd=Your IP Address : 
set /p psport=Your GTPS Port(Default : 17091) : 
goto setfw
echo Processing...
timeout 2 > nul
:setfw
cls
echo Settings Firewall(Please Wait)...!
netsh advfirewall firewall delete rule name="80" protocol=TCP localport=80
cls
netsh advfirewall firewall delete rule name="80" protocol=TCP localport=80
cls
netsh advfirewall firewall delete rule name="%psport%" protocol=UDP localport=%psport%
cls
netsh advfirewall firewall delete rule name="%psport%" protocol=UDP localport=%psport%
cls
netsh advfirewall firewall add rule name="80" dir=in action=allow protocol=TCP localport=80
cls
netsh advfirewall firewall add rule name="80" dir=in action=allow protocol=TCP localport=80
cls
netsh advfirewall firewall add rule name="%psport%" dir=in action=allow protocol=UDP localport=%psport%
cls
netsh advfirewall firewall add rule name="%psport%" dir=in action=allow protocol=UDP localport=%psport%
echo Done!
timeout 2 > nul
goto dwxampp
:dwxampp
echo Processing...!
%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "Invoke-WebRequest https://downloadsapachefriends.global.ssl.fastly.net/7.4.11/xampp-windows-x64-7.4.11-0-VC15-installer.exe?from_af=true -OutFile xampp.exe"
start xampp.exe
echo Dont Click Enter If You Didnt Install Xampp Already...!
pause
goto sdata
:sdata
mkdir growtopia
cd growtopia
echo server^|%ipadd%>>server_data.php
echo port^|%psport%>>server_data.php
echo type^|1>>server_data.php
echo #maint^|Mainetrance message (Not used for now) -- Growtopia Noobs>>server_data.php
echo.>>server_data.php
echo beta_server^|127.0.0.1>>server_data.php
echo beta_port^|17091>>server_data.php
echo>>server_data.php
echo beta_type^|1>>server_data.php
echo meta^|localhost>>server_data.php
echo RTENDMARKERBS1001>>server_data.php
echo Processing...!
timeout 2 > nul
goto xamppsdata
:xamppsdata
cd C:\xampp\htdocs
mkdir growtopia
cd growtopia
echo server^|%ipadd%>>server_data.php
echo port^|%psport%>>server_data.php
echo type^|1>>server_data.php
echo #maint^|Mainetrance message (Not used for now) -- Growtopia Noobs>>server_data.php
echo.>>server_data.php
echo beta_server^|127.0.0.1>>server_data.php
echo beta_port^|17091>>server_data.php
echo>>server_data.php
echo beta_type^|1>>server_data.php
echo meta^|localhost>>server_data.php
echo RTENDMARKERBS1001>>server_data.php
echo Processing...!
timeout 2 > nul
echo Now GTPS Is Ready
timeout 3 > nul
exit