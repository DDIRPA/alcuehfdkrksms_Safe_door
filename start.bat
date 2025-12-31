@echo off
echo Safe Door 웹사이트를 시작합니다...
echo.

REM 브라우저에서 HTML 파일 열기
if exist "index_standalone.html" (
    echo 브라우저에서 웹사이트를 엽니다...
    start index_standalone.html
    echo.
    echo 웹사이트가 브라우저에서 열렸습니다.
    echo 이 창을 닫으셔도 됩니다.
) else if exist "standalone.html" (
    echo 브라우저에서 웹사이트를 엽니다...
    start standalone.html
    echo.
    echo 웹사이트가 브라우저에서 열렸습니다.
    echo 이 창을 닫으셔도 됩니다.
) else (
    echo [오류] HTML 파일을 찾을 수 없습니다.
    pause
    exit /b 1
)

timeout /t 3 >nul

