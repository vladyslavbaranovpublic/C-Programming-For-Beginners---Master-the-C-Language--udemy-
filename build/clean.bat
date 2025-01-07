@echo off
echo Cleaning build directory...

REM Check if the build directory exists
if exist "..\build" (
    del /Q /S ..\build\*.exe 2>nul
    del /Q /S ..\build\*.o 2>nul
    del /Q /S ..\build\*.pdb 2>nul
    del /Q /S ..\build\*.obj 2>nul
    del /Q /S ..\build\*.ilk 2>nul
    if exist "..\build\ut" del /Q "..\build\ut" 2>nul
    echo Clean completed.
) else (
    echo Build directory does not exist. Nothing to clean.
)

exit /b
