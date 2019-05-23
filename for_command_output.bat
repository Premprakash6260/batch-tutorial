@echo off
cls
goto :main

:main
setlocal
	for /f "delims=\ tokens=1-4" %%g in ('cd') do (
		echo %%g
		echo %%h 
		echo %%i
		echo %%j
	)
endlocal
goto :eof