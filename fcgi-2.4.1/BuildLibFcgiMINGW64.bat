@echo off
cls

if %HB_PATH%. == . goto MissingHB_PATH
if NOT %HB_COMPILER%. == mingw64. goto InvalidHB_COMPILER

set Fcgi_Harbour_RootPath=R:\fcgi-hb-mingw\hbecho

echo Using -comp=mingw64

del libfcgi.dll

hbmk2 libfcgi.hbp -comp=mingw64 -b
goto End

:MissingHB_PATH
echo Run a HarbourTerminal Batch file first.
goto End

:InvalidHB_COMPILER
echo Run a HarbourTerminalMinGW64 Batch file first.
goto End

:End
