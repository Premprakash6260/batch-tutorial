@echo off
cls
goto :main

:max
setlocal
	echo  	MAX is in execution
	if %x% gtr %y% (
		echo %x% is greater
	)else (
		echo %y% is greater
	)
endlocal
goto :eof

:main
setlocal
	set /p x=Enter a no.
	set /p y=Enter another no.
	call :max
	pause
endlocal
goto :eof