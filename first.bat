@echo off
setlocal enabledelayedexpansion

:REINPUT
cls
echo ==============================================
echo         CREATE CONFIG.JSON INTERACTIVE
echo ==============================================

:: === WAJIB ISI ===
:ASK_TOKEN
set /p TOKEN=Input TOKEN: 
if "!TOKEN!"=="" (
    echo [ERROR] TOKEN is required!
    goto ASK_TOKEN
)

:ASK_MONGO
set /p MongoURL=Input MongoURL: 
if "!MongoURL!"=="" (
    echo [ERROR] MongoURL is required!
    goto ASK_MONGO
)

:ASK_CLIENTID
set /p CLIENTID=Input CLIENTID: 
if "!CLIENTID!"=="" (
    echo [ERROR] CLIENTID is required!
    goto ASK_CLIENTID
)

:ASK_OWNER
set /p Owner=Input Owner ID: 
if "!Owner!"=="" (
    echo [ERROR] Owner ID is required!
    goto ASK_OWNER
)

:ASK_CHDON
set /p ChannelDonationLog=Input ChannelDonationLog: 
if "!ChannelDonationLog!"=="" (
    echo [ERROR] ChannelDonationLog is required!
    goto ASK_CHDON
)

:: === OPSIONAL ===
cls
echo ==============================================
echo         CREATE CONFIG.JSON INTERACTIVE
echo ==============================================
echo.
echo [INFO] Admin dan channel lainnya bisa dikosongkan dengan ENTER.

set /p Admin1=Input Admin 1 (Optional): 
set /p Admin2=Input Admin 2 (Optional): 
set /p ChannelTrakteerLog=Input ChannelTrakteerLog (Optional): 
set /p ChannelSaweriaLog=Input ChannelSaweriaLog (Optional): 
set /p ChannelBagiBagi=Input ChannelBagiBagi (Optional): 
set /p AutoStockChannel=Input AutoStockChannel (Optional): 

:: === RECHECK ===
cls
echo ==============================================
echo             RECHECK CONFIG VALUE
echo ==============================================
echo TOKEN:                !TOKEN!
echo MongoURL:             !MongoURL!
echo CLIENTID:             !CLIENTID!
echo Owner ID:             !Owner!
echo Admin 1:              !Admin1!
echo Admin 2:              !Admin2!
echo ChannelDonationLog:   !ChannelDonationLog!
echo ChannelTrakteerLog:   !ChannelTrakteerLog!
echo ChannelSaweriaLog:    !ChannelSaweriaLog!
echo ChannelBagiBagi:      !ChannelBagiBagi!
echo AutoStockChannel:     !AutoStockChannel!
echo ==============================================
echo Apakah sudah benar? Ketik [YES] untuk konfirmasi.
set /p CONFIRM=Input [YES/no]: 

if /I "!CONFIRM!"=="YES" (
    goto MAKEFILE
) else (
    echo Ulangi pengisian...
    pause
    goto REINPUT
)

:: === BUAT FILE ===
:MAKEFILE
(
echo {
echo     "TOKEN": "!TOKEN!",
echo     "MongoURL": "!MongoURL!",
echo     "CLIENTID": "!CLIENTID!",
echo     "Owner": "!Owner!",
echo     "Admin": ["!Admin1!", "!Admin2!"],
echo     "ChannelDonationLog": "!ChannelDonationLog!",
echo     "ChannelTrakteerLog": "!ChannelTrakteerLog!",
echo     "ChannelSaweriaLog": "!ChannelSaweriaLog!",
echo     "ChannelBagiBagi": "!ChannelBagiBagi!",
echo     "AutoStockChannel": "!AutoStockChannel!"
echo }
) > ./config/config.json

echo.
echo ==============================================
echo File config.json berhasil dibuat!
echo ==============================================
pause