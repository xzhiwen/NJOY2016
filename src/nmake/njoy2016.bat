nmake  TARGET="njoy2016_15.exe" 2>&1 | tee.exe %~n0.log
fciv.exe -both njoy2016_15.exe  2>&1 | tee.exe -a %~n0.log
