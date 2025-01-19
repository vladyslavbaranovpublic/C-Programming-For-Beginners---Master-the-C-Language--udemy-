@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64
if not exist "..\build" (
    mkdir ..\build
)
pushd ..\build
cl /EHsc /Zi ..\code\draft.cpp /Fe:program_cpp.exe
popd

REM cl /Zi ..\code\win32_handmade.cpp /link User32.lib gdi32.lib /out:win32_handmade.exe
