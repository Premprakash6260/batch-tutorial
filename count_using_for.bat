@echo off
setlocal enabledelayedexpansion
cls 
goto :main

:main
setlocal
	for /l %%g in (0,3,100) do (
		echo %%g
	)
endlocal
pause
goto :eof