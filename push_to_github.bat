@echo off
REM AI Credit Scoring - GitHub Upload Script for Windows

echo =================================
echo AI Credit Scoring GitHub Setup
echo =================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo X Git is not installed. Please install Git first:
    echo    Download from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [OK] Git is installed
echo.

set /p github_username="Enter your GitHub username: "
set /p repo_name="Enter your repository name (e.g., ai-credit-scoring): "

echo.
echo Repository URL will be: https://github.com/%github_username%/%repo_name%
set /p confirm="Is this correct? (y/n): "

if /i not "%confirm%"=="y" (
    echo Setup cancelled.
    pause
    exit /b 0
)

echo.
echo [STEP 1/5] Initializing Git repository...
git init

echo.
echo [STEP 2/5] Adding files...
git add .

echo.
echo [STEP 3/5] Creating initial commit...
git commit -m "Initial commit: AI-Powered Credit Scoring System with 15-slide presentation and ML prototype"

echo.
echo [STEP 4/5] Connecting to GitHub...
git remote add origin https://github.com/%github_username%/%repo_name%.git

echo.
echo [STEP 5/5] Pushing to GitHub...
git branch -M main
git push -u origin main

echo.
echo =================================
echo [SUCCESS] Project uploaded!
echo =================================
echo.
echo Your project is now on GitHub!
echo Visit: https://github.com/%github_username%/%repo_name%
echo.
echo To make updates later, use:
echo   git add .
echo   git commit -m "Your message"
echo   git push
echo.
pause
