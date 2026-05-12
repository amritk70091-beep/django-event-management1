@echo off
REM Try to find Python installation
set PYTHON_PATH=
set PYTHON_FOUND=0

REM Check common Python installation paths
if exist "C:\Program Files\Python311\python.exe" (
    set "PYTHON_PATH=C:\Program Files\Python311\python.exe"
    set PYTHON_FOUND=1
) else if exist "C:\Program Files\Python310\python.exe" (
    set "PYTHON_PATH=C:\Program Files\Python310\python.exe"
    set PYTHON_FOUND=1
) else if exist "C:\Program Files (x86)\Python311\python.exe" (
    set "PYTHON_PATH=C:\Program Files (x86)\Python311\python.exe"
    set PYTHON_FOUND=1
) else if exist "C:\Program Files (x86)\Python310\python.exe" (
    set "PYTHON_PATH=C:\Program Files (x86)\Python310\python.exe"
    set PYTHON_FOUND=1
) else if exist "%LOCALAPPDATA%\Programs\Python\Python311\python.exe" (
    set "PYTHON_PATH=%LOCALAPPDATA%\Programs\Python\Python311\python.exe"
    set PYTHON_FOUND=1
) else if exist "%LOCALAPPDATA%\Programs\Python\Python310\python.exe" (
    set "PYTHON_PATH=%LOCALAPPDATA%\Programs\Python\Python310\python.exe"
    set PYTHON_FOUND=1
)

if %PYTHON_FOUND%==1 (
    echo Found Python at: %PYTHON_PATH%
    %PYTHON_PATH% %*
) else (
    echo Python not found in common installation paths.
    echo Please install Python from https://www.python.org/
    exit /b 1
)
