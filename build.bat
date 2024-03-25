@rem installer made by dwight dolatre
@rem gh - https://github.com/hashcat26
@rem web - https://hashcat.rf.gd

@echo off && color 07
cd "%~DP0" && prompt $P$_$G$S
title GCCPORT SFX GENERATOR

del .release\workspace.exe

rar a workspace * ^
    -cfg- -c- ^
    -t -r -sfx ^
    -m5 -mt32 -md4096k ^

    -apworkspace ^
    -zconfig.ini ^

    -x.git -x.release ^
    -xbuild.bat -xconfig.ini ^
    -x.git* -x*.md

move workspace.exe .release
