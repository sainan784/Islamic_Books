@echo off
echo.
echo ================================================
echo  Islamic Books Library - Deployment Check
echo ================================================
echo.

echo Checking Node.js installation...
node --version
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed or not in PATH
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

echo Checking NPM installation...
npm --version
if %errorlevel% neq 0 (
    echo ERROR: NPM is not available
    pause
    exit /b 1
)

echo.
echo Installing backend dependencies...
npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install backend dependencies
    pause
    exit /b 1
)

echo.
echo Installing client dependencies...
cd client
npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install client dependencies
    pause
    exit /b 1
)

echo.
echo Building React application...
npm run build
if %errorlevel% neq 0 (
    echo ERROR: Failed to build React application
    pause
    exit /b 1
)

cd ..
echo.
echo ================================================
echo  ✅ Build completed successfully!
echo  🚀 Ready for deployment to Render
echo ================================================
echo.
echo Next steps:
echo 1. Push your code to GitHub
echo 2. Connect GitHub repo to Render
echo 3. Add environment variables in Render dashboard
echo 4. Deploy!
echo.
pause