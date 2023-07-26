@rem installer made by dwight dolatre
@rem gh - https://github.com/hashcat26
@rem web - https://hashcat.rf.gd

@echo off && color 07
cd "%~DP0" && prompt $P$_$G$S
title GCC AND SUBL TERMINAL

if exist zip.exe (
    call extract.bat && del extract.bat
)

set windowsPath=%windir%
set systemPath=%windowsPath%\system32
set syswowPath=%windowsPath%\syswow64

set binariesPath=%cd%\binaries
set mingwPath=%binariesPath%\mingw\bin
set sublimePath=%binariesPath%\sublime

set currentPath=%cd%
set inputsPath=%currentPath%\inputs
set outputsPath=%currentPath%\outputs

path %systemPath%;%syswowPath%;
path %path%;%mingwPath%;%sublimePath%;
path %path%;%inputsPath%;%outputsPath%;

start /b cmd /k start /b subl -a .
echo MinGW GCC v.13.1.0
echo Sublime Text b.4143
