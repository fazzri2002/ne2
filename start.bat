@echo off

if not exist "node_modules" (
    echo node_modules not found. Installing dependencies [Please be patient while installing the driver]
    call npm install
    if errorlevel 1 (
        echo Failed to install dependencies
        pause
        exit /b 1
    )
    echo Dependencies installed successfully [run again please]
)
cls
npm start
pause