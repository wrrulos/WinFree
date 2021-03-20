::
:: ######################################
:: ##           WinFree v0.2           ## 
:: ##   ¡ Activa Windows gratis !      ##
:: ##           @wrrulos               ##
:: ######################################
::

@echo off
title WinFree 0.2
mode 100,20
set kms=kms.digiboy.ir

:: Verifica que el script este en modo administrador

net session >nul

if %errorlevel% == 0 goto VersionWindows
else (
    color 0c
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
    echo       `ooooooooooooo+ -oooooooooooooooooo`         WinFree necesita permisos de administrador
    echo       `ooooooooooooo+ :oooooooooooooooooo`       
    echo       `ooooooooooooo+ -oooooooooooooooooo`       
    echo       `ooooooooooooo+ -oooooooooooooooooo`       
    echo       `ooooooooooooo+ -oooooooooooooooooo`       
    echo        -::://+++oooo+ -oooooooooooooooooo`       
    echo                  ```. `-:://+++oooooooooo`       
    echo                                 ``..--::  
    echo.
    pause >nul
    exit
)


:VersionWindows

:: Detecta la version de Windows

echo  __        ___       _____                
echo  \ \      / (_)_ __ l  ___l __ ___  ___ 
echo   \ \ /\ / /l l '_ \l l_ l '__/ _ \/ _ \ 
echo    \ V  V / l l l l l  _ll l l  __/  __/
echo     \_/\_/  l_l_l l_l_l  l_l  \___l\___l 
echo.
echo.
echo  [#] Detectando version de Windows...
echo.
timeout 2 >nul

::ver | find "6.0." >nul && goto WinVista 
::ver | find "6.1." >nul && goto Win7
::ver | find "6.2." >nul && goto Win8
::ver | find "6.3." >nul && goto Win81
ver | find "10.0." >nul && goto Win10 

color 0c
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
echo       `ooooooooooooo+ -oooooooooooooooooo`   WinFree actualmente solo es compatible con Windows 10
echo       `ooooooooooooo+ :oooooooooooooooooo`       
echo       `ooooooooooooo+ -oooooooooooooooooo`       
echo       `ooooooooooooo+ -oooooooooooooooooo`       
echo       `ooooooooooooo+ -oooooooooooooooooo`       
echo        -::://+++oooo+ -oooooooooooooooooo`       
echo                  ```. `-:://+++oooooooooo`       
echo                                 ``..--::  
echo.
pause >nul
exit    


:Win10
:: Detecta la version de Windows 10 y lo guarda en la variable VWin

for /f "tokens=3 delims= " %%i in ('reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "EditionID"') do set VWin=%%i

echo.
echo  [#] Activando Windows...
echo.

if "%VWin%" == "Core" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "CoreN" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "CoreCountrySpecific" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "CoreSingleLanguage" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "Professional" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "ProfessionalN" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "Enterprise" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "EnterpriseN" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "Education" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "EducationN" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "EnterpriseS" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9 >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "EnterpriseSN" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "ServerDatacenter" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk CB7KF-BWN84-R7R2Y-793K2-8XDDG >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "ServerStandard" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "ServerEssentials" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk JCKRF-N37P4-C2D82-9YXRT-4M63B >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "EnterpriseG" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "EnterpriseGN" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "ProfessionalEducation" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "ProfessionalEducation" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk YVWGF-BXNMC-HTQYQ-CPQ99-66QFC >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "ProfessionalWorkstation" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "ProfessionalWorkstations" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)

if "%VWin%" == "ProfessionalWorkstationsN" (

    cscript //Nologo %windir%\system32\slmgr.vbs /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /skms %kms% >nul
    cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
    goto Activado
    pause >nul

)


:Activado
cls
color 2
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
echo       `ooooooooooooo+ -oooooooooooooooooo`          WinFree activo windows correctamente
echo       `ooooooooooooo+ :oooooooooooooooooo`       
echo       `ooooooooooooo+ -oooooooooooooooooo`       
echo       `ooooooooooooo+ -oooooooooooooooooo`       
echo       `ooooooooooooo+ -oooooooooooooooooo`       
echo        -::://+++oooo+ -oooooooooooooooooo`       
echo                  ```. `-:://+++oooooooooo`       
echo                                 ``..--::  
echo.
pause >nul
exit

