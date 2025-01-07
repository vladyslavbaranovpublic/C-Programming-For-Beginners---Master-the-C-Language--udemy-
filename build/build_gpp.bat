@echo off

REM Set up environment for g++ (assuming MinGW is installed and in PATH)
REM If MinGW is not in your PATH, add it here, e.g.:
REM set PATH=%PATH%;C:\MinGW\bin

if not exist "..\build" (
    mkdir ..\build
)
pushd ..\build

REM Compile with g++ and output an executable named program.exe
g++ -std=c++17 -Wall -g ..\code\draft.cpp -o program.exe

popd

REM To compile another file (e.g., win32_handmade.cpp), you can uncomment the line below:
REM g++ -std=c++17 -Wall -g ..\code\win32_handmade.cpp -o win32_handmade.exe
