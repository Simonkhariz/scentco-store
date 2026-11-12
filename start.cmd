@echo off
rem Starts SCENT.CO on this PC. XAMPP's MySQL must be running first.
cd /d "%~dp0"
if not exist .next\BUILD_ID call npm run build
start "SCENT.CO server" cmd /k npm run api
timeout /t 3 /nobreak >nul
start "" http://scentco.localhost:3101
npm run start
