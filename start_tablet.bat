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

echo Starting local web server...
echo.

REM Check Python version
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [Error] Python is not installed.
    echo Please install Python or use start_tablet.ps1 instead.
    pause
    exit /b 1
)

REM Get local IP address
echo Checking local network IP address...
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /i "IPv4"') do (
    set ip=%%a
    goto :found_ip
)

:found_ip
set ip=%ip:~1%
if "%ip%"=="" (
    set ip=localhost
)

REM Set port number
set PORT=8000

echo.
echo ========================================
echo Server started successfully!
echo ========================================
echo.
echo Access from tablet using the following address:
echo.
echo   http://%ip%:%PORT%/index_standalone.html
echo.
echo Or test from PC:
echo   http://localhost:%PORT%/index_standalone.html
echo.
echo Press Ctrl+C in this window to stop the server.
echo.
echo ========================================
echo.

REM Open browser on PC automatically
start http://localhost:%PORT%/index_standalone.html

REM Start Python HTTP server (accessible from all network interfaces)
echo Starting Python web server...
echo.
python -m http.server %PORT% --bind 0.0.0.0

pause
