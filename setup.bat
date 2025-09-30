@echo off
REM Neurosymbolic Math Tutor Setup Script for Windows
REM This script sets up the development environment

echo Neurosymbolic Math Tutor Setup
echo ==============================

REM Check if Docker is installed
docker --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Docker is not installed. Please install Docker Desktop first.
    exit /b 1
)

REM Check if Docker is running
docker info >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Docker is not running. Please start Docker Desktop.
    exit /b 1
)

echo SUCCESS: Docker is available

REM Create data directory if it doesn't exist
if not exist "data" (
    echo INFO: Creating data directory...
    mkdir data
    echo       Add your equation images to the 'data' folder
)

REM Build the Docker image
echo INFO: Building Docker image...
docker build -f Dockerfile.cpu -t math-tutor:latest .

if %errorlevel% equ 0 (
    echo SUCCESS: Docker image built successfully!
    echo.
    echo To run the application:
    echo    docker run --rm -it -p 8888:8888 -v %cd%/data:/app/data math-tutor:latest
    echo.
    echo Then:
    echo    1. Open the Jupyter Lab URL in your browser
    echo    2. Open main.ipynb  
    echo    3. Run the cells to see your neurosymbolic AI in action!
) else (
    echo ERROR: Failed to build Docker image
    exit /b 1
)

pause