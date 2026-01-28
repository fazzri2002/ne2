@echo off
setlocal enabledelayedexpansion

:REINPUT
cls
echo ==============================================
echo         CREATE CONFIG.JSON INTERACTIVE
echo ==============================================
echo.
echo [INFO] bisa dikosongkan dengan ENTER jika tidak memiliki emoji.

set /p CROWN=Input Emoji CROWN: 
set /p ARROW=Input Emoji ARROW: 
set /p WL=Input Emoji WL: 
set /p DL=Input Emoji DL: 
set /p BGL=Input Emoji BGL: 
set /p EARTH=Input Emoji EARTH: 
set /p Duit=Input Emoji Duit: 
set /p BOT=Input Emoji BOT: 
set /p Kotak=Input Emoji Kotak: 
set /p Faq=Input Emoji Faq: 
set /p Box=Input Emoji Box: 
set /p StatusBot=Input Emoji StatusBot: 
set /p Clock=Input Emoji Clock: 
set /p Online=Input Emoji Online: 
set /p Offline=Input Emoji Offline: 
set /p Coin=Input Emoji Coin: 
set /p BALANCE=Input Emoji BALANCE: 
set /p Warning=Input Emoji Warning: 
set /p Benar=Input Emoji Benar: 
set /p Salah=Input Emoji Salah: 
set /p Megaphone=Input Emoji Megaphone: 
set /p Loading=Input Emoji Loading: 
set /p EmojiSaweria=Input Emoji EmojiSaweria: 
set /p EmojiTrakteer=Input Emoji EmojiTrakteer: 
set /p EmojiBagiBagi=Input Emoji EmojiBagiBagi: 
set /p imageUrl=Input imageUrl: 
set /p COLOR=Input COLOR: 
set /p Watermark=Input Watermark: 

:: === RECHECK ===
cls
echo ==============================================
echo             RECHECK CONFIG VALUE
echo ==============================================
echo CROWN:         !CROWN!
echo ARROW:         !ARROW!
echo ARROW:         !CLIENTID!
echo WL:            !WL!
echo DL:            !DL!
echo BGL:           !Admin2!
echo EARTH:         !EARTH!
echo Duit:          !Duit!
echo BOT:           !BOT!
echo Kotak:         !Kotak!
echo Faq:           !Faq!
echo Box:           !Box!
echo StatusBot:     !StatusBot!
echo Clock:         !Clock!
echo Online:        !Online!
echo Offline:       !Offline!
echo Coin:          !Coin!
echo BALANCE:       !BALANCE!
echo Warning:       !Warning!
echo Benar:         !Benar!
echo Salah:         !Salah!
echo Megaphone:     !Megaphone!
echo Loading:       !Loading!
echo EmojiSaweria:  !EmojiSaweria!
echo EmojiTrakteer: !EmojiTrakteer!
echo EmojiBagiBagi: !EmojiBagiBagi!
echo imageUrl:      !imageUrl!
echo COLOR:         !COLOR!
echo Watermark:     !Watermark!
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
echo    "CROWN": "!CROWN!",
echo    "ARROW": "!ARROW!",
echo    "WL": "!WL!",
echo    "DL": "!DL!",
echo    "BGL": "!BGL!",
echo    "EARTH": "!EARTH!",
echo    "Duit": "!Duit!",
echo    "BOT": "!BOT!",
echo    "Kotak": "!Kotak!",
echo    "Faq": "!Faq!",
echo    "Box": "!Box!",
echo    "StatusBot": "!StatusBot!",
echo    "Clock": "!Clock!",
echo    "Online": "!Online!",
echo    "Offline": "!Offline!",
echo    "Coin": "!Coin!",
echo    "BALANCE": "!BALANCE!",
echo    "Warning": "!Warning!",
echo    "Benar": "!Benar!",
echo    "Salah": "!Salah!",
echo    "Megaphone": "!Megaphone!",
echo    "Loading": "!Loading!",
echo    "EmojiSaweria": "!EmojiSaweria!",
echo    "EmojiTrakteer": "!EmojiTrakteer!",
echo    "EmojiBagiBagi": "!EmojiBagiBagi!",
echo    "imageUrl": "!imageUrl!",
echo    "COLOR": "!COLOR!",
echo    "Watermark": "!Watermark!"
echo }
) > ./config/configEmoji.json

echo.
echo ==============================================
echo File configEmoji.json berhasil dibuat!
echo ==============================================
pause