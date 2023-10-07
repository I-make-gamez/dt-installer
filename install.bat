@echo off
setlocal enabledelayedexpansion

echo       ____  ______   ____           __        ____         
echo      / __ \/_  __/  /  _/___  _____/ /_____ _/ / /__  _____
echo     / / / / / /     / // __ \/ ___/ __/ __ `/ / / _ \/ ___/
echo    / /_/ / / /    _/ // / / (__  ) /_/ /_/ / / /  __/ /    
echo   /_____/ /_/    /___/_/ /_/____/\__/\__,_/_/_/\___/_/     
echo.
echo ==============================================================
echo.
echo Dev Tools Installer - Version 1.1
echo Made by NitTwit_   
echo.               
echo ==============================================================
echo.

REM Ask the user if they want to install Node.js
set /p "installNodeChoice=Do you want to install Node.js? (y/n): "
if /i "%installNodeChoice%"=="y" (
    echo.

  echo Installing Node.js...
  echo.

winget install OpenJS.NodeJS.LTS
  if %errorlevel% neq 0 (
    echo Failed to install Node.js.
    echo.
    exit /b 1
  )

  REM Display a completion message for Node.js installation
  echo Node.js installation completed successfully.
  echo.
) else (
  echo.
)

REM Ask the user if they want to install Git
set /p "installGitChoice=Do you want to install Git? (y/n): "
if /i "%installGitChoice%"=="y" (
  echo Installing Git...
  echo.
  winget install --exact --id Git.Git
  if %errorlevel% neq 0 (
    echo Failed to install Git.
    echo.
    exit /b 1
  )

  REM Display a completion message for Git installation
  echo Git installation completed successfully.
  echo.
) else (
  echo.
)

REM Ask the user if they want to install .NET Framework
set /p "installDotNetChoice=Do you want to install the .NET Framework? (y/n): "
if /i "%installDotNetChoice%"=="y" (
  echo Installing .NET Framework...
  echo.
winget install Microsoft.DotNet.SDK.6
  if %errorlevel% neq 0 (
    echo Failed to install .NET Framework.
    echo.
    exit /b 1
  )

  REM Display a completion message for .NET Framework installation
  echo .NET Framework installation completed successfully.
  echo.
) else (
  echo.
)

REM Ask the user if they wish to install VSCode
set /p "installVSCChoice=Do you want to install Visual Studio Code? (y/n): "
if /i "%installVSCChoice%"=="y" (
    echo Installing Visual Studio Code...
    echo.
    winget install -e --id Microsoft.VisualStudioCode
    if %errorlevel% neq 0 (
        echo Failed to install Visual Studio Code.
        echo.
        exit /b 1
    )

    REM Display a completeion message for VSCode installation
    echo Visual Studio Code installation completed successfully
    echo.
) else (
    echo.
)

REM Ask the user if they wish to install Docker Desktop
set /p "dockerChoice=Do you want to install Docker Desktop? (y/n): "
if /i "%dockerChoice%"=="y" (
    echo Installing Docker Desktop...
    echo.
    winget install -e --id Docker.DockerDesktop
    if %errorlevel% neq 0 (
        echo Failed to install Docker Desktop.
        echo.
        exit /b 1
    )

    REM Display a completion message for VSCode installation
    echo Docker Desktop installation completed successfully
    echo.
) else (
    echo.
)

echo Press any key to exit...
pause>nul
exit /b 0

