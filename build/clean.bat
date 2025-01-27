@echo off
echo Cleaning build directory...

REM Check if the build directory exists
if exist "..\build" (
    if exist "..\build\ut" rmdir /S /Q "..\build\ut" 2>nul
    if exist "..\build\cl_x64" rmdir /S /Q "..\build\cl_x64" 2>nul
    if exist "..\build\cl_x86" rmdir /S /Q "..\build\cl_x86" 2>nul
    if exist "..\build\gpp_x64" rmdir /S /Q "..\build\gpp_x64" 2>nul
    if exist "..\build\gpp_x86" rmdir /S /Q "..\build\gpp_x86" 2>nul
    for /R "..\build" %%f in (*.exe *.o *.pdb *.obj *.ilk) do del /Q "%%f" 2>nul
    for /R "..\code" %%f in (*.pdb *.exe *.obj *.ilk) do del /Q "%%f" 2>nul

    echo Clean completed.
) else (
    echo Build directory does not exist. Nothing to clean.
)

REM del /Q /S ..\build\*.exe 2>nul  (for single location delete)