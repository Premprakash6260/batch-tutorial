@echo off
cls
setlocal
	for %%g in ( text.txt ) do (
		rem set /a length=%%~zg
		echo %%~zg
	)

endlocal