@echo off
chcp 949 >nul 2>&1
cls
echo ========================================
echo Safe Door Website (Tablet Server Start)
echo ========================================
echo.

REM Check HTML file
if not exist "index_standalone.html" (
    echo [Error] index_standalone.html file not found.
    pause
    exit /b 1
)

echo Starting server using PowerShell script...
echo.
echo Note: PC and tablet must be connected to the same Wi-Fi network.
echo.

REM Execute PowerShell script
powershell.exe -ExecutionPolicy Bypass -File "%~dp0start_tablet.ps1"

pause
