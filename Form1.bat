@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

rem Login section with Width 45, Height 15
mode con: cols=45 lines=15

:: Set title and initial color
title Login

:loginPrompt
mshta "javascript:alert('New Update Available. Visit https://darkforcefreefire.github.io/darkforcefreefire/');close();" 
cls
echo.
echo [94m    ╭───────────────────────────────────╮
echo [94m    │       DARK FORCE Chams V4.33      │
echo [94m    │                                   │
echo [94m    │      [96mPlease login to continue [94m    │
echo [94m    ╰───────────────────────────────────╯
echo.
set /p username=[95m    Username: [0m
echo.
set /p password=[95m    Password: [0m

:: Block all users by default
start mshta "javascript:alert('All user accounts were banned.');close();"
exit /b


:successfulLogin
title Welcome !loggedInUser!
cls
echo.
echo [94m    ╭───────────────────────────────────╮
echo [94m    │     DARK FORCE Chams V4.33        │
echo [94m    │                                   │
echo [92m    │    ===========================    │
echo [92m    │	   Welcome !loggedInUser!	│
echo [92m    │    ===========================    │
echo [94m    ╰───────────────────────────────────╯
echo.
Control Login.00

:: Proceed to the menu after successful login
goto menu


:menu
title DARK CHAMS V 4.32
cls
color 0F
mode con: cols=120 lines=38

echo.
echo	 ───────────────────────────────╮
echo	    ₰ Hey, !loggedInUser!	│
echo	 ───────────────────────────────╯
echo.
echo.

echo [96m   ╭───────────────────╮      ╭────────────╮     ╭───────────────────╮        ╭───────────╮
echo [96m   │  Inject Menu      │      │   Press    │     │  Eject Menu       │        │   Press   │
echo [96m   ╰───────────────────╯      ╰────────────╯     ╰───────────────────╯        ╰───────────╯
echo.
echo.
echo [94m   [1] Inject Chams Menu	[KEYBOARD:1]       [5] Remove Chams         	[KEYBOARD:5]
echo [94m   [2] Inject Chams 3D     	[KEYBOARD:2]       [6] Remove Chams 3D      	[KEYBOARD:6]
echo [94m   [3] Inject Chams Blue   	[KEYBOARD:3]       [7] Remove Chams Blue    	[KEYBOARD:7]
echo [94m   [4] Inject Chams Blue Box 	[KEYBOARD:4]       [8] Remove Chams Blue Box 	[KEYBOARD:8]
echo.
echo [93m    ╭───────────────────────────────────────╮       ╭──────────────────────────────────────╮
echo [93m    │    Press 1, 2, 3, 4 to inject Chams   │       │    Press 5, 6, 7, 8 to remove Chams  │
echo [93m    ╰───────────────────────────────────────╯       ╰──────────────────────────────────────╯

echo [93m    ╭───────────────────────────────────────╮       ╭──────────────────────────────────────╮
echo [93m    │  To Install runtimes    Type 'AIORT'  │       │   To Install DirectX    Type 'DX12'  │
echo [93m    ╰───────────────────────────────────────╯       ╰──────────────────────────────────────╯
echo.

echo [91;1m  WARNING! Removing injections - Ejections may crash your emulator
echo.
echo [91;1m  NOTE: Please use BlueStacks Nought 32-bit emulator
echo.
echo [92m    ╭────────────────────────────────────────────────╮
echo [92m    │      ▸ DARK FORCE  Chams Panel V 4.33          │
echo [92m    ╰────────────────────────────────────────────────╯
echo [92m    │ [93m      Design and programming by [97mWALKER UI [92m     │
echo [92m    │       [93m Credits: [97mREGz.WALKER, ᴰᴬᴿᴷ xCRȺZY [92m      │
echo [92m    ╰────────────────────────────────────────────────╯

echo [0m

set /p choice="Enter your choice: "

REM Handling user choices
if "%choice%"=="1" (
    title Pakaya MAX!
    echo.
    echo Console:
    echo.
    Injector.exe --process-name HD-Player.exe --inject "123456.00"
    Control Application.00
    pause
    goto menu
) else if "%choice%"=="2" (
    title Chams 3D
    echo.
    echo Console:
    echo.
    Injector.exe --process-name HD-Player.exe --inject "9549651.00"
    Control Application.00
    pause
    goto menu
) else if "%choice%"=="3" (
    echo.
    title Chams Blue
    echo Console:
    echo.
    Injector.exe --process-name HD-Player.exe --inject "651615.00"
    Control Application.00
    pause
    goto menu
) else if "%choice%"=="4" (
    echo.
    title Chams BlueBox
    echo Console:
    echo.
    Injector.exe --process-name HD-Player.exe --inject "4898965.00"
    Control Application.00
    pause
    goto menu
) else if "%choice%"=="5" (
    echo.
    title Buhahahaaaaaaaaaaa...
    echo Console:
    echo.
    Injector.exe --process-name HD-Player.exe --eject "123456.00"
    Control Eject.00
    pause
    goto menu
) else if "%choice%"=="6" (
    echo.
    title Buhahahaaaaaaaaaaa...
    echo Console:
    echo.
    Injector.exe --process-name HD-Player.exe --eject "9549651.00"
    Control Eject.00
    pause
    goto menu
) else if "%choice%"=="7" (
    echo.
    title Buhahahaaaaaaaaaaa...
    echo Console:
    Injector.exe --process-name HD-Player.exe --eject "651615.00"
    Control Eject.00
    pause
    goto menu
) else if "%choice%"=="8" (
    echo.
    title Buhahahaaaaaaaaaaa...
    echo Console:
    echo.
    Injector.exe --process-name HD-Player.exe --eject "4898965.00"
    Control Eject.00
    pause
    goto menu
) else if "%choice%"=="AIORT" (
    echo.
    echo Console:
    Runtimes.bat
    pause
    goto menu
) else if "%choice%"=="DX12" (
    echo.
    echo Console:
    DirectX12.bat
    pause
    goto menu
) else (
    echo Invalid choice. Please enter a number from 1 to 8 or a valid command.
    pause
    goto menu
)

:: End the script
color 07
pause
exit
