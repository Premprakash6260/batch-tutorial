@echo off

setlocal enabledelayedexpansion
goto :main

:main
setlocal 
	for /f  "tokens=1,2,3,4 delims= " %%g in ( count.bat ) do (
		echo %%g
	)
endlocal
goto :eof
