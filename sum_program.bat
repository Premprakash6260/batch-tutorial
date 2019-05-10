@echo off
cls
goto :main
:sum
setlocal
	echo	sum is executing
endlocal & set /a add=%x%+%y%
goto :eof

:main
setlocal
	set /p x=Enter first no
	set /p y=Enter second no
	call :sum
	echo Value of x + y is %add%
endlocal
pause
goto :eof
