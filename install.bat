@echo off
setlocal enabledelayedexpansion

REM [32m [0m

echo   [36m    ____  ______   ____           __        ____         
echo      / __ \/_  __/  /  _/___  _____/ /_____ _/ / /__  _____
echo     / / / / / /     / // __ \/ ___/ __/ __ `/ / / _ \/ ___/
echo    / /_/ / / /    _/ // / / (__  ) /_/ /_/ / / /  __/ /    
echo   /_____/ /_/    /___/_/ /_/____/\__/\__,_/_/_/\___/_/     [0m
echo.
echo [33m==============================================================[36m
echo.
echo Dev Tools Installer - Version 1.12
echo Made by NitTwit_   
echo.               
echo [33m==============================================================[36m
echo.

REM Ask the user if they want to install Node.js
set /p "installNodeChoice=Do you want to install Node.js? (y/n): "
if /i "%installNodeChoice%"=="y" (
    echo.

  echo Installing Node.js...
  echo.

winget install OpenJS.NodeJS.LTS
  if %errorlevel% neq 0 (
            echo.
    echo Failed to install Node.js.
    echo.
  ) else (
      REM Display a completion message for .NET Framework installation
              echo.
  echo Node.JS installation completed successfully.
  echo.
  )
) else (
  echo.
)

REM Ask the user if they want to install Git
set /p "installGitChoice=[36mDo you want to install Git? (y/n): "
if /i "%installGitChoice%"=="y" (
  echo [36mInstalling Git...
  echo.
winget install --id Git.Git 
  if %errorlevel% neq 0 (
            echo.
    echo Failed to install Git.
    echo.
  ) else (
    REM Display a completion message for Git installation
            echo.
  echo Git installation completed successfully.
  echo.
  )
) else (
  echo.
)

REM Ask the user if they want to install .NET Framework
set /p "installDotNetChoice=[36mDo you want to install the .NET Framework? (y/n): "
if /i "%installDotNetChoice%"=="y" (
  echo [36mInstalling .NET Framework...
  echo.
winget install Microsoft.DotNet.SDK.6
  if %errorlevel% neq 0 (
            echo.
    echo Failed to install .NET Framework.
    echo.
  ) else (
      REM Display a completion message for .NET Framework installation
              echo.
  echo .NET Framework installation completed successfully.
  echo.
  )
) else (
  echo.
)

REM Ask the user if they wish to install VSCode
set /p "installVSCChoice=[36mDo you want to install Visual Studio Code? (y/n): "
if /i "%installVSCChoice%"=="y" (
    echo [36mInstalling Visual Studio Code...
    echo.
    winget install -e --id Microsoft.VisualStudioCode
    if %errorlevel% neq 0 (
              echo.
        echo Failed to install Visual Studio Code.
        echo.
    ) else (
      REM Display a completion message for .NET Framework installation 
              echo.   
      echo Visual Studio Code installation completed successfully
  )
) else (
    echo.
)

REM Ask the user if they wish to install Docker Desktop
set /p "dockerChoice=[36mDo you want to install Docker Desktop? (y/n): "
if /i "%dockerChoice%"=="y" (
    echo [36mInstalling Docker Desktop...
    echo.
    winget install -e --id Docker.DockerDesktop
    if %errorlevel% neq 0 (
              echo.
        echo Failed to install Docker Desktop.
        echo.
    ) else (
      REM Display a completion message for .NET Framework installation
              echo.
  echo Docker Desktop installation completed successfully.
  echo.
  )
) else (
    echo.
)

echo [33m==============================================================[92m[1m
echo.
echo Press any key to exit... [0m
pause>nul
exit /b 0