# =====================================
# Autor: wrrulos
# WinFree es una herramienta para activar cualquier version de Windows10 totalmente gratis y seguro!
# Version: 1.0
# Github: https://github.com/wrrulos/winfree
#
# Discord: Rulo#9224
# Instagram: @wrrulos
# Twitter: @wrrulos
#
# =====================================
# WFYCO - Waiting for you come out
#
# Discord: discord.gg/HtCHzDV
# Instagram: @wfycoteam
# Twitter: @wfycoteam
#
# =====================================

mode con cols=115 lines=20
$clavew10="."

# menu 1

function menu {

    Set-Location $ubicacion
    Clear-Host
    Write-Host ""
    color1 | color2 | l1
    color3 | color4 | l2
    color5 | color6 | l3
    color7 | color8 
    color9 | color10 | p1 | p2
    color11 | color12
    color13 | color14 | p3
    color15 | color16
    Write-Host ""
    color17 | color18
    color19 | color20
    color21 | color22
    color23 | color24
    color25 | color26
    color27 | color28
    color29 | color30
    color31 | color32
    Write-Host ""
    Start-Sleep 4
    versionwin10
}

# menu w10

function versionwin10 {
    
    Clear-Host
    Write-Host ""
    p4 | p2
    Write-Host ""
    Write-Host ""
    n1 | p2p2 | home | n7 | p2p2 | enterprise
    n2 | p2p2 | homen | n8 | p2p2 | enterprisen
    n3 | p2p2 | homesl | n9 | p2p2 | education
    n4 | p2p2 | homecs | n10 | p2p2 | educationn
    n5 | p2p2 | pro | n11 | p2p2 | enterprise2015ltsb
    n6 | p2p2 | pron | n12 | p2p2 | enterprise2015ltsbn
    Write-Host ""
    n0 | p5 | p2
    Write-Host ""

    do{
        Write-Host ""
        $opcionesw10 = Read-Host "   WinFree >> " 
        switch ($opcionesw10)
        {
            '0' {

                winver
                versionwin10
 
             }
            '1' {

               $clavew10="TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
               activarw10

            } 
            '2' {

               $clavew10="3KHY7-WNT83-DGQKR-F7HPR-844BM"
               activarw10

            }
            '3' {

                $clavew10="7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH"
                activarw10
 
             }
             '4' {

                $clavew10="PVMJN-6DFY6-9CCP6-7BKTT-D3WVR"
                activarw10
 
             }
             '5' {

                $clavew10="W269N-WFGWX-YVC9B-4J6C9-T83GX"
                activarw10
             }
             '6' {

                $clavew10="MH37W-N47XK-V7XM9-C7227-GCQG9"
                activarw10
 
             }
             '7' {

                $clavew10="NPPR9-FWDCX-D2C8J-H872K-2YT43"
                activarw10
 
             }
             '8' {

                $clavew10="DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
                activarw10
 
             }
             '9' {

                $clavew10="NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
                activarw10
 
             }
             '10' {

                $clavew10="2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
                activarw10
 
             }
             '11' {

                $clavew10="WNMTR-4C88C-JK8YV-HQ7T2-76DF9"
                activarw10
 
             }
             '12' {

                $clavew10="2F77B-TNFGY-69QQF-B8YKP-D69TJ"
                activarw10
 
             } default {
                Set-Location mensajes
                Start-Process error0.vbs
                Set-Location $ubicacion
                versionwin10
            }
        }

    } until ($opcionesw10 -eq '99')
    
}


# activar w10

function activarw10 {
    
    mode con cols=42 lines=19
    Clear-Host 
    Write-Host ""
    color1 | color2p2 
    color3 | color4p2
    color5 | color6p2 
    color7 | color8 
    color9 | color10p2 
    color11 | color12
    color13 | color14p2 
    color15 | color16
    Write-Host ""
    color17 | color18
    color19 | color20
    color21 | color22
    color23 | color24
    color25 | color26
    color27 | color28
    color29 | color30
    color31 | color32
    Set-Location .\mensajes
    Start-Process .\w10-1.vbs
    Set-Location ..
    Start-Sleep 5
    slmgr /ipk $clavew10 
    Start-Sleep 6
    slmgr /skms kms.digiboy.ir
    Start-Sleep 6
    slmgr /ato
    Start-Sleep 6
    Set-Location .\mensajes
    Start-Process .\w10-2.vbs
    Set-Location ..
    Remove-Item .\temp1.ps1
    Remove-Item .\temp2.bat
    exit

    
}

# colores

function n0 {
    
    Write-Host "          0." -NoNewline -ForegroundColor Green
    
}
function n1 { 

    Write-Host "          1.  " -ForegroundColor Green -NoNewline 
}

function n2 { 

    Write-Host "          2.  " -ForegroundColor Green -NoNewline 
}

function n3 { 

    Write-Host "          3.  " -ForegroundColor Green -NoNewline 
}

function n4 { 

    Write-Host "          4.  " -ForegroundColor Green -NoNewline 
}

function n5 { 

    Write-Host "          5.  " -ForegroundColor Green -NoNewline 
}

function n6 { 

    Write-Host "          6.  " -ForegroundColor Green -NoNewline 
}

function n7 { 

    Write-Host "          7.  " -ForegroundColor Green -NoNewline 
}

function n8 { 

    Write-Host "          8.  " -ForegroundColor Green -NoNewline 
}

function n9 { 

    Write-Host "    9.  " -ForegroundColor Green -NoNewline 
}

function n10 { 

    Write-Host "   10.  " -ForegroundColor Green -NoNewline 
}

function n11 { 

    Write-Host "           11.  " -ForegroundColor Green -NoNewline 
}

function n12 { 

    Write-Host "          12.  " -ForegroundColor Green -NoNewline 
}

function p1 {

    Write-Host "                Activa cualquier version de " -NoNewline
}

function p2 {

    Write-Host "Windows 10" -ForegroundColor Cyan 
}

function p2p2 {

    Write-Host "Windows 10" -ForegroundColor Cyan -NoNewLine
}

function p3 {

    Write-Host "                          Hecho por wrrulos " 
}

function p4 {

    Write-Host " Selecciona tu version de " -NoNewLine
}

function p5 {
    
    Write-Host " Ver version de " -NoNewline
    
}

function home {

    Write-Host " Home            " -ForegroundColor Yellow -NoNewline
}
function homen {

    Write-Host " Home N          " -ForegroundColor Yellow -NoNewline
}

function homesl {

    Write-Host " Home Single Language  " -ForegroundColor Yellow -NoNewline
}

function homecs {

    Write-Host " Home Country Specific  " -ForegroundColor Yellow -NoNewline
}
function pro {

    Write-Host " Professional   " -ForegroundColor Yellow -NoNewline
}
function pron {

    Write-Host " Professional N  " -ForegroundColor Yellow -NoNewline
}
function enterprise {

    Write-Host " Enterprise" -ForegroundColor Yellow
}
function enterprisen {

    Write-Host " Enterprise N" -ForegroundColor Yellow
}
function education {

    Write-Host " Education" -ForegroundColor Yellow
}
function educationn {

    Write-Host " Education N" -ForegroundColor Yellow
}
 
function enterprise2015ltsb {

    Write-Host " Enterprise 2015 LTSB" -ForegroundColor Yellow
}

function enterprise2015ltsbn {

    Write-Host " Enterprise 2015 LTSB N" -ForegroundColor Yellow
}


function l1 {

    Write-Host "                   _ _ _ _ _  _ ____ ____ ____ ____ " -ForegroundColor Cyan
}

function l2 {

    Write-Host "                   | | | | |\ | |___ |__/ |___ |___ " -ForegroundColor Cyan
} 

function l3 {

    Write-Host "                  |_|_| | | \| |    |  \ |___ |___ " -ForegroundColor Cyan
} 


function color1 {
    
    Write-Host " (((((((((((((((((((." -ForegroundColor Red -NoNewline
    
}

function color2 {
    
    Write-Host " *((((((((((((((((((" -ForegroundColor Green -NoNewLine
    
}

function color2p2 {
    
    Write-Host " *((((((((((((((((((" -ForegroundColor Green 
    
}

function color3 {
    
    Write-Host " (((((((((((((((((((." -ForegroundColor Red -NoNewline
    
}

function color4 {
    
    Write-Host " *((((((((((((((((((" -ForegroundColor Green -NoNewLine
    
}

function color4p2 {
    
    Write-Host " *((((((((((((((((((" -ForegroundColor Green
    
}

function color5 {
    
    Write-Host " (((((((((((((((((((." -ForegroundColor Red -NoNewline
    
}

function color6 {
    
    Write-Host " *(((((((((((((((((( " -ForegroundColor Green -NoNewLine
    
}

function color6p2 {
    
    Write-Host " *(((((((((((((((((( " -ForegroundColor Green 
    
}

function color7 {
    
    Write-Host " (((((((((((((((((((." -ForegroundColor Red -NoNewline
    
}

function color8 {
    
    Write-Host " *((((((((((((((((((" -ForegroundColor Green 
    
}

function color9 {
    
    Write-Host " (((((((((((((((((((." -ForegroundColor Red -NoNewline
    
}

function color10 {
    
    Write-Host " *((((((((((((((((((" -ForegroundColor Green -NoNewline
    
}

function color10p2 {
    
    Write-Host " *((((((((((((((((((" -ForegroundColor Green 
    
}

function color11 {
    
    Write-Host " (((((((((((((((((((." -ForegroundColor Red -NoNewline
    
}

function color12 {
    
    Write-Host " *((((((((((((((((((" -ForegroundColor Green
    
}

function color13 {
    
    Write-Host " (((((((((((((((((((." -ForegroundColor Red -NoNewline
    
}

function color14 {
    
    Write-Host " *((((((((((((((((((" -ForegroundColor Green -NoNewline
    
}

function color14p2 {
    
    Write-Host " *((((((((((((((((((" -ForegroundColor Green 
    
}

function color15 {
    
    Write-Host " (((((((((((((((((((." -ForegroundColor Red -NoNewline
    
}

function color16 {
    
    Write-Host " *((((((((((((((((((" -ForegroundColor Green
    
}

function color17 {

    Write-Host " ///////////////////." -ForegroundColor Cyan -NoNewline

}

function color18 {

    Write-Host " ,//////////////////" -ForegroundColor Yellow 
}

function color19 {

    Write-Host " ///////////////////." -ForegroundColor Cyan -NoNewline

}

function color20 {

    Write-Host " ,//////////////////" -ForegroundColor Yellow 
}

function color21 {

    Write-Host " ///////////////////." -ForegroundColor Cyan -NoNewline

}

function color22 {

    Write-Host " ,//////////////////" -ForegroundColor Yellow 
}

function color23 {

    Write-Host " ///////////////////." -ForegroundColor Cyan -NoNewline

}

function color24 {

    Write-Host " ,//////////////////" -ForegroundColor Yellow 
}

function color25 {

    Write-Host " ///////////////////." -ForegroundColor Cyan -NoNewline

}

function color26 {

    Write-Host " ,//////////////////" -ForegroundColor Yellow 
}

function color27 {

    Write-Host " ///////////////////." -ForegroundColor Cyan -NoNewline

}

function color28 {

    Write-Host " ,//////////////////" -ForegroundColor Yellow 
}

function color29 {

    Write-Host " ///////////////////." -ForegroundColor Cyan -NoNewline

}

function color30 {

    Write-Host " ,//////////////////" -ForegroundColor Yellow 
}

function color31 {

    Write-Host " ///////////////////." -ForegroundColor Cyan -NoNewline

}

function color32 {

    Write-Host " ,//////////////////" -ForegroundColor Yellow 
}
