@echo off
setlocal EnableDelayedExpansion

:main 
setlocal

	call create_array name " " "10 29 22 50 33"
	echo hello
	echo !name!
	echo .
	set /a name[2]=99
	for /l %%g in (0,1,!name_length!) do (
			echo !name[%%g]!
	)
		
	

endlocal
pause
goto :eof