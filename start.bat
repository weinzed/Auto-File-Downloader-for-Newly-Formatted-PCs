@echo off
color 9f
title File Downloader for Newly formatter PC's

if not exist c:\windows\system32\curl.exe (
    echo curl not found only win10 supported.
    echo press any key to close window.
    pause > nul
    exit
)

cd /d "%userprofile%\Desktop"
md Downloaded
cd Downloaded

echo Downloading Chrome.
curl -LJOk "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B3C779A74-9C92-24AE-D112-BC96330E16A0%7D%26lang%3Dtr%26browser%3D4%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe"
cls
echo Chrome downloaded.
timeout /t 1 /nobreak > nul
cls

echo Downloading Discord Canary
curl -LJOk "https://discordapp.com/api/download/canary?platform=win"
ren "canary_platform=win" "DiscordCanary.exe"
cls
echo Discord Canary downloaded.
timeout /t 1 /nobreak > nul
cls

echo Downloading WinRAR
curl -LJOk "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-611tr.exe"
cls
echo WinRAR downloaded.
timeout /t 1 /nobreak > nul
cls

echo Downloading NPP
curl -LJOk "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.2.1/npp.8.2.1.Installer.x64.exe"
cls
echo NPP downloaded.
timeout /t 1 /nobreak > nul
cls

goto :glsor

:glsor
cls
echo If you want to download game launchers (Epic Games ve Steam)
echo Press 1
echo If u won't press 2
set choice=
set /p choice=Your choice: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto glkur
if '%choice%'=='2' goto kapan
echo "%choice%" key is wrong. Reasking question...
timeout /t 3 /nobreak > nul
goto :glsor

echo.

:glkur
cls
md GLaunchers
cd GLaunchers

echo Downloading Steam
curl -LJOk "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe"
cls
echo Steam downloaded.
timeout /t 1 /nobreak > nul
cls

echo Downloading Epic Games Launcher
curl -LJOk "https://epicgames-download1.akamaized.net/Builds/UnrealEngineLauncher/Installers/Win32/EpicInstaller-13.3.0.msi?launcherfilename=EpicInstaller-13.3.0.msi"
cls
echo Epic Games Launcher downloaded.
timeout /t 1 /nobreak > nul
cls


:kapan
echo Script successfully finished.
echo You need to run all setup's.
echo Folder will opened in 5 secs.
timeout /t 5 /nobreak > nul
start "" "explorer" %userprofile%\Desktop\INDIRILDI
exit