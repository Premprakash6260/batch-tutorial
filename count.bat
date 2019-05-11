@echo off
cls
setlocal enabledelayedexpansion
goto :main

:main
setlocal
	set /a count=0
	:loop
	if !count! leq 100 (
		echo !count!
		set /a count=!count! + 1
		goto :loop
	)
pause
endlocal
goto :eof
