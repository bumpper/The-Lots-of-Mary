@echo off
echo ========================================
echo Lots-of-Mary - Quick Production Build
echo ========================================
echo.

echo [1/3] Installing dependencies...
call npm install
if errorlevel 1 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)
echo.

echo [2/3] Building application...
call npm run build
if errorlevel 1 (
    echo ERROR: Build failed
    pause
    exit /b 1
)
echo.

echo [3/3] Build complete!
echo.
echo ========================================
echo Build completed successfully!
echo.
echo The executable can be found in:
echo src-tauri\target\release\
echo.
echo Installers can be found in:
echo src-tauri\target\release\bundle\
echo ========================================
echo.
pause
