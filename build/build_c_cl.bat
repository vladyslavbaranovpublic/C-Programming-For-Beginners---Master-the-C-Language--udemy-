@echo off
REM Set up environment for x64 compilation
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64
if not exist "..\build\cl_x64" (
    mkdir ..\build\cl_x64
)
pushd ..\build\cl_x64
cl /EHsc /Zi /favor:INTEL64 ..\..\code\draft_c.c /Fe:program_c_cl_x64.exe
popd

REM Set up environment for x86 compilation
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x86
if not exist "..\build\cl_x86" (
    mkdir ..\build\cl_x86
)
pushd ..\build\cl_x86
cl /EHsc /Zi /favor:blend ..\..\code\draft_c.c /Fe:program_c_cl_x86.exe
popd

echo Build completed.
REM Use cl /EHsc /Zi /favor:blend for 32-bit compilation blend
REM Use cl /EHsc /Zi /favor:INTEL64 for 64-bit compilation
REM cl /Zi ..\code\win32_handmade.cpp /link User32.lib gdi32.lib /out:win32_handmade.exe
