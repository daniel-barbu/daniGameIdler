@echo off
set path=%~dp0
setlocal EnableDelayedExpansion

set startTime=%time:~0,5%
set /a rep=1
set /a gs=-1
set /p dly=<%path%ids.txt & set /a "dly=!dly:,*=!"
set /p reps=<%path%ids.txt & set /a "reps=!reps:*,=!"

set ids[0]=0
for /F %%i IN (%path%ids.txt) DO (set /a gs+=1 & set ids[!gs!]=%%i)

set /a timeLeft=%gs%*%dly%*%reps%

:rep1
set /a g=1
	:rep2
	call :gameFct !ids[%g%]!
	set /a g+=1
	if !g! LEQ %gs% goto rep2
set /a rep+=1
if !rep! LEQ %reps% goto rep1

start C:\Windows\System32\rundll32.exe Kernel32.dll,Beep
C:\Windows\System32\ping.exe localhost -n 1 -w 500> nul
C:\Windows\System32\taskkill.exe /F /IM rundll32.exe
exit
:: -------- FUNCTIONS --------
:gameFct
	call :secToMin
	title daniGameIdler (%gs%g)(%dly%s), repetition %rep%/%reps%, game %g%/%gs%, time left %minLeft%:%secLeft%
	start %path%SAM.Game.exe %~1
	echo idling game #%~1
	set /a dly+=1
	C:\Windows\System32\ping.exe localhost -n %dly% >nul
	set /a dly-=1
	set /a TimeLeft-=%dly%
	C:\Windows\System32\taskkill.exe /F /IM SAM.Game.exe
	echo.
EXIT /B 0
:secToMin
	set /a minLeft=%timeLeft%/60
	if !minLeft! LSS 10 set minLeft=0%minLeft%
	set /a secLeft="%timeLeft% -%minLeft%*60"
	if !secLeft! LSS 10 set secLeft=0%secLeft%
EXIT /B 0
