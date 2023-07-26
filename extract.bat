@rem installer made by dwight dolatre
@rem gh - https://github.com/hashcat26
@rem web - https://hashcat.rf.gd

@echo off && color 07
cd "%~DP0" && prompt $P$_$G$S
title GCC AND SUBL TERMINAL

zip x binaries\mingw.7z -obinaries
move binaries\mingw64 binaries\mingw
ping localhost -n 2 > nul && cls

zip x binaries\subl.zip -obinaries\subl
move binaries\subl binaries\sublime
ping localhost -n 2 > nul && cls

del zip.exe
del binaries\mingw.7z
del binaries\subl.zip
