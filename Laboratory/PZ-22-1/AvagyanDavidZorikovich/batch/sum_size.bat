@echo off
setlocal enabledelayedexpansion

set "directory=C:\Users\David\Laboratory"
set "totalSize=0"

REM Jump to the specified directory
cd /d "%directory%" || exit /b

REM Counting the volume of files
for /r %%f in (*) do (
     set "file=%%~f"
     set /a "size=%%~zf"
     set /a "totalSize+=size"
)

REM Output of the total volume of files
echo Total size of files: %totalSize% bytes

pause