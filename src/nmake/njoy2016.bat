nmake TARGET="%~n0.exe" 2>&1 | tee.exe %~n0.log
fciv.exe -both %~n0.exe 2>&1 | tee.exe -a %~n0.log
