@echo off
title Vape Injector
color 05
echo                                                  _  _   __   ____  ____
echo                                                 / )( \ / _\ (  _ \(  __)
echo                                                 \ \/ //    \ ) __/ ) _)
echo                                                  \__/ \_/\_/(__)  (____)
echo.
echo.
echo -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

echo.
echo                                           !.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.
echo                                            MAKE SURE YOUR MINECRAFT IS OPENED
echo                                           !.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.
echo.
echo                              IF YOUR GAME CRASHES TRY TO ADD " -noverify " TO JVM ARGUMENTS
echo.
echo.
echo.
echo                                                PRESS ENTER TO CONTINUE
pause >nul
echo.
echo Type "v4" to run Vape V4. 
echo.
echo Type "lite" to run Vape Lite. 
echo.
:main
set /p "op=vape@option ~$ "

if ["%op%"] == ["lite"] goto lite

if ["%op%"] == ["v4"] goto v4

if ["%op%"] == [""] goto main

:v4
color 05
set mypath=%cd%
start /d "%mypath%\resources\server\" server.exe
PING localhost -n 2 >NUL
START "" "%mypath%\vape\v4\patcher.exe" "%mypath%\vape\v4\Vape_V4.exe"
PING localhost -n 2 >NUL
exit

:lite
color 05
set mypath=%cd%
start /d "%mypath%\resources\server\" server.exe
PING localhost -n 2 >NUL
START "" "%mypath%\vape\lite\patcher.exe" "%mypath%\vape\lite\Vape_Lite.exe"
PING localhost -n 2 >NUL
exit



