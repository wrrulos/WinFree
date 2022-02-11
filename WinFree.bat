:: WinFree v1.0 By @wrrulos

@echo off
title WinFree v1.0
mode 100,20
set kms=kms.digiboy.ir
net session >nul

if %errorlevel% == 0 goto Detect
color 0c
call :Banner "         WinFree needs administrator permissions"
pause >nul
exit

:Banner
echo.
echo                                 `..---::/        
echo                  ``.. .:://++oooooooooooo`       
echo       `-::///++ooooo+ -oooooooooooooooooo`       __        ___       _____                
echo       `ooooooooooooo+ -oooooooooooooooooo`       \ \      / (_)_ __ l  ___l __ ___  ___ 
echo       `ooooooooooooo+ -oooooooooooooooooo`        \ \ /\ / /l l '_ \l l_ l '__/ _ \/ _ \ 
echo       `ooooooooooooo+ -oooooooooooooooooo`         \ V  V / l l l l l  _ll l l  __/  __/
echo       `ooooooooooooo+ -oooooooooooooooooo`          \_/\_/  l_l_l l_l_l  l_l  \___l\___l 
echo       `ooooooooooooo+ -ooooooooooooo+++++        
echo       `-------------. `---...............                     
echo       `ooooooooooooo+ -oooooooooooooooooo`%~1
echo       `ooooooooooooo+ :oooooooooooooooooo`       
echo       `ooooooooooooo+ -oooooooooooooooooo`       
echo       `ooooooooooooo+ -oooooooooooooooooo`       
echo       `ooooooooooooo+ -oooooooooooooooooo`       
echo        -::://+++oooo+ -oooooooooooooooooo`       
echo                  ```. `-:://+++oooooooooo`       
echo                                 ``..--::  
echo.
exit /B

:Banner2
echo  __        ___       _____                
echo  \ \      / (_)_ __ l  ___l __ ___  ___ 
echo   \ \ /\ / /l l '_ \l l_ l '__/ _ \/ _ \ 
echo    \ V  V / l l l l l  _ll l l  __/  __/
echo     \_/\_/  l_l_l l_l_l  l_l  \___l\___l 
echo.
echo.
echo  [#] %~1
echo.
exit /B

:Detect
for /f "tokens=3 delims= " %%i in ('reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "EditionID"') do set VWin=%%i
call :Banner2 "Detecting version of Windows.."
timeout 2 >nul 2>&1
ver | find "10.0." >nul && goto Win10 

:Win10
if "%VWin%" == "Core" call :Activate "TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
if "%VWin%" == "CoreN" call :Activate "3KHY7-WNT83-DGQKR-F7HPR-844BM"
if "%VWin%" == "CoreCountrySpecific" call :Activate "PVMJN-6DFY6-9CCP6-7BKTT-D3WVR"
if "%VWin%" == "CoreSingleLanguage" call :Activate "7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH"
if "%VWin%" == "Professional" call :Activate "W269N-WFGWX-YVC9B-4J6C9-T83GX"
if "%VWin%" == "ProfessionalN" call :Activate "MH37W-N47XK-V7XM9-C7227-GCQG9"
if "%VWin%" == "Enterprise" call :Activate "NPPR9-FWDCX-D2C8J-H872K-2YT43"
if "%VWin%" == "EnterpriseN" call :Activate "DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
if "%VWin%" == "Education" call :Activate "NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
if "%VWin%" == "EducationN" call :Activate "2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
if "%VWin%" == "EnterpriseS" call :Activate "WNMTR-4C88C-JK8YV-HQ7T2-76DF9"
if "%VWin%" == "EnterpriseSN" call :Activate "2F77B-TNFGY-69QQF-B8YKP-D69TJ"
if "%VWin%" == "ServerDatacenter" call :Activate "CB7KF-BWN84-R7R2Y-793K2-8XDDG"
if "%VWin%" == "ServerStandard" call :Activate "WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"
if "%VWin%" == "ServerEssentials" call :Activate "JCKRF-N37P4-C2D82-9YXRT-4M63B"
if "%VWin%" == "EnterpriseG" call :Activate "YYVX9-NTFWV-6MDM3-9PT4T-4M68B"
if "%VWin%" == "EnterpriseGN" call :Activate "44RPN-FTY23-9VTTB-MP9BX-T84FV"
if "%VWin%" == "ProfessionalEducation" call :Activate "6TP4R-GNPTD-KYYHQ-7B7DP-J447Y"
if "%VWin%" == "ProfessionalWorkstation" call :Activate "NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
if "%VWin%" == "ProfessionalWorkstations" call :Activate "NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
if "%VWin%" == "ProfessionalWorkstationsN" call :Activate "9FNHH-K3HBT-3W4TD-6383H-6XYWF"

:Activate
echo  [#] Activating Windows..
cscript //Nologo %windir%\system32\slmgr.vbs /ipk %~1 >nul
cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
color 2
call :Banner "          WinFree activated windows correctly"
pause >nul
exit