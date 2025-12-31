@echo off
chcp 949 >nul 2>&1
cls
echo ========================================
echo Safe Door - Quick Access Link Creator
echo ========================================
echo.

if exist "quick_access.html" (
    echo Opening Quick Access page...
    start quick_access.html
    echo.
    echo Quick Access page opened in your browser!
    echo.
    echo Instructions:
    echo 1. Run "태블릿_실행.bat" on PC to start server
    echo 2. Copy the IP address shown in server window
    echo 3. Paste IP address in Quick Access page
    echo 4. Click "Generate Link"
    echo 5. Use the generated link on your tablet
    echo.
) else (
    echo [Error] quick_access.html file not found.
    pause
    exit /b 1
)

timeout /t 5 >nul

