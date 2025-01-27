@echo off
REM Set up environment for x86 compilation
REM call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x86
REM RUN THE ABOVE IN CMD MANUALLY AS IT WILL START GIVING ISSUES IF YOU KEEP CALLING THROUGH BUILD CMD

pushd ..\build
cl /EHsc /Zi /favor:blend ..\code\draft_c.c /Fe:draft.exe
popd

echo Build completed.

