@echo off
chcp 949 >nul 2>&1
cls
echo ========================================
echo Safe Door - 빠른 링크 생성 도구
echo ========================================
echo.

if exist "quick_access.html" (
    echo Quick Access 페이지를 엽니다...
    start quick_access.html
    echo.
    echo Quick Access 페이지가 브라우저에서 열렸습니다!
    echo.
    echo 사용 방법:
    echo 1. PC에서 "태블릿_실행.bat" 실행하여 서버 시작
    echo 2. 서버 창에 표시된 IP 주소 복사
    echo 3. Quick Access 페이지에 IP 주소 붙여넣기
    echo 4. "Generate Link" 버튼 클릭
    echo 5. 생성된 링크를 태블릿에서 사용
    echo.
) else (
    echo [오류] quick_access.html 파일을 찾을 수 없습니다.
    pause
    exit /b 1
)

timeout /t 5 >nul

