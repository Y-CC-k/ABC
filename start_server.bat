@echo off
chcp 65001 >nul
title Keyboard Learning Server

cd /d "%~dp0"

echo ========================================
echo  Keyboard Learning - Local Server
echo ========================================
echo.

:: Start Python HTTP server on port 8000
python -m http.server 8000
if errorlevel 1 (
    py -m http.server 8000
)