@echo off
title GST Pro ERP - GitHub Web Application
cd /d "%~dp0"
echo ========================================================
echo   GST Pro ERP - Multi-Company Billing & Accounting Suite
echo ========================================================
echo.
echo Launching application...

where npx >nul 2>nul
if %ERRORLEVEL% equ 0 (
    start "" http://localhost:5173
    npx -y serve -s . -l 5173
    exit /b
)

where python >nul 2>nul
if %ERRORLEVEL% equ 0 (
    start "" http://localhost:8000
    python -m http.server 8000
    exit /b
)

start "" index.html
