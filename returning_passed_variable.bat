@echo off
goto :main
:add_one
setlocal
	echo 	executing ADD_ONE
endlocal & set /a %~1=%~2+1
goto :eof

:main
setlocal
	set /a x=3
	set /a y=6
	call :add_one y %y%
rem Here we have to pass variable string and its value both
	echo value of y is %y%
endlocal
pause
goto :eof