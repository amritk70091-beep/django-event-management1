@echo off
echo Starting Django Event Management Server...
echo.

REM Change to the project directory
cd /d "%~dp0"

REM Run the Django server using portable Python
python-portable\python.exe run_django.py

pause
