@echo off
cd /d "%~dp0"
echo ==========================================
echo       ONLINE VOTING WEB SYSTEM
echo ==========================================
echo.
echo Starting Spring Boot server...
start "Online Voting Server" cmd /k ".\mvnw.cmd spring-boot:run"
echo Waiting for server to start...
timeout /t 10 /nobreak >nul
echo Opening Online Voting Admin Panel...
start "" "http://localhost:8080/admin/login"
echo.
echo Admin panel: http://localhost:8080/admin/login
echo Local demo login: admin / Admin@123
echo Change the demo password before any public deployment.
echo.
pause
