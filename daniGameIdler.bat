@echo off
set path=%~dp0
setlocal EnableDelayedExpansion

set startTime=%time:~0,5%
set /a reps=1
set /p dly=<%path%ids.txt & set /a "dly=!dly:,*=!"
set /p repsMax=<%path%ids.txt & set /a "repsMax=!repsMax:*,=!"
set /a gs=-1

set ids[0]=0
for /F %%i IN (%path%ids.txt) DO (set /a gs+=1 & set ids[!gs!]=%%i)

:rep1
set /a nr=1
	:rep2
	call :fct !ids[%nr%]!
	set /a nr+=1
	if !nr! LEQ %gs% goto rep2
set /a reps+=1
if !reps! LEQ %repsMax% goto rep1

exit
:: -------- FUNCTIONS --------
:fct
title daniGameIdler.exe (%gs%g)(%dly%d), starting time: %startTime%, repetition: %reps%/%repsMax%  (%nr%/%gs%)
start %path%SAM.Game.exe %~1
echo. & echo idling game #%~1
C:\Windows\System32\ping.exe localhost -n %dly% >NUL
C:\Windows\System32\taskkill.exe /IM SAM.Game.exe
EXIT /B 0
