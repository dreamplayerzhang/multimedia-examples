@echo off

set WARNINGS=-WX -W2 -wd4101 -wd4201 -wd4100 -wd4189 /Wv:18
set CommonCompilerFlags=-MT -nologo -Gm- -GR- -EHa- -Od -Oi %WARNINGS% -DHANDMADE_INTERNAL=1 -DHANDMADE_SLOW=1 -DHANDMADE_WIN32=1 -FC /Zi -Fmwin32_handmade.map
set CommonLinkerFlags= -opt:ref user32.lib gdi32.lib winmm.lib

IF NOT EXIST ..\build mkdir ..\build
pushd ..\build

REM 64-bit build
cl %CommonCompilerFlags% ..\code\win32_handmade.cpp /link %CommonLinkerFlags%
popd
