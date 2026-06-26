@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Installing requirements...
python -m pip install -r requirements.txt
if errorlevel 1 (
    echo.
    echo Failed to install requirements.
    pause
    exit /b 1
)
echo.
echo Starting KotBot Lite in debug mode...
python main.py
pause
