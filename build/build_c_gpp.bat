@echo off

REM Set up environment for g++ (assuming MinGW-w64 is installed and in PATH)
REM If MinGW-w64 is not in your PATH, add it here, e.g.:
REM set PATH=%PATH%;C:\mingw-w64\bin

if not exist "..\build" (
    mkdir ..\build
)
if not exist "..\build\gpp_x64" (
    mkdir ..\build\gpp_x64
)
if not exist "..\build\gpp_x86" (
    mkdir ..\build\gpp_x86
)

if "%1" == "x86" (
    if not exist "..\gpp_x86" (
        mkdir ..\gpp_x86
    )
    echo Building x86
    pushd ..\gpp_x86
    REM Compile with g++ and output an executable named program_x86_gpp_c.exe
    g++ -std=c++17 -Wall -g -m32 ..\..\code\draft_c.c -o program_x86_gpp_c.exe
    popd
    echo Build completed for x86
) else if "%1" == "x64" (
    if not exist "..\gpp_x64" (
        mkdir ..\gpp_x64
    )
    echo Building x64
    pushd ..\gpp_x64
    REM Compile with g++ and output an executable named program_x64_gpp_c.exe
    g++ -std=c++17 -Wall -g -m64 ..\..\code\draft_c.c -o program_x64_gpp_c.exe
    popd
    echo Build completed for x64
) else (
    echo Invalid argument. Use "x86" or "x64".
)

echo Build completed.
REM To compile another file (e.g., win32_handmade.cpp), you can uncomment the line below:
REM g++ -std=c++17 -Wall -g ..\code\win32_handmade.cpp -o win32_handmade.exe
REM To compile another file (e.g., win32_handmade.cpp), you can uncomment the line below:
REM g++ -std=c++17 -Wall -g ..\code\win32_handmade.cpp -o win32_handmade.exe