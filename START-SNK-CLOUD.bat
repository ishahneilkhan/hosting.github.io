@echo off
chcp 65001 >nul
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed.
  echo Install the LTS version from https://nodejs.org/ then run this file again.
  pause
  exit /b 1
)
set /p SNK_ADMIN_PASSWORD=Set a private admin password (do not leave blank): 
if "%SNK_ADMIN_PASSWORD%"=="" set SNK_ADMIN_PASSWORD=change-this-password
node server.js
pause
