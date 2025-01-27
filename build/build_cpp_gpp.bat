@echo off

REM Set up environment for g++ (assuming MinGW is installed and in PATH)
REM If MinGW is not in your PATH, add it here, e.g.:
REM set PATH=%PATH%;C:\MinGW\bin

if not exist "..\build" (
    mkdir ..\build
)
if not exist "..\build\gpp_x64" (
    mkdir ..\build\gpp_x64
)
if not exist "..\build\gpp_x86" (
    mkdir ..\build\gpp_x86
)
pushd ..\build

REM Compile with g++ and output an executable named program.exe
g++ -std=c++17 -Wall -g ..\code\draft_cpp.cpp -o program_gpp_cpp.exe
popd

echo Build completed.
REM To compile another file (e.g., win32_handmade.cpp), you can uncomment the line below:
REM g++ -std=c++17 -Wall -g ..\code\win32_handmade.cpp -o win32_handmade.exe
