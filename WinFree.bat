title WinFree
@echo off
title Tool10 v1.0
set ubicacion=%cd%
del temp1.ps1
cd config
xcopy temp1.ps1 %ubicacion%
cd ..
echo. >> temp1.ps1
echo $ubicacion="%ubicacion%" >> temp1.ps1
echo. >> temp1.ps1
echo menu >> temp1.ps1
::
del temp2.bat
cd config
xcopy temp2.bat %ubicacion%
cd ..
echo. >> temp2.bat
echo set ubicacion=%ubicacion% >> temp2.bat
echo. >> temp2.bat
echo goto administrador >> temp2.bat
start temp2.bat
exit
