@echo off
setlocal enabledelayedexpansion
:main
setlocal
	call create_string name "Premprakash Yadav"
	call string_center name 16 fill
	echo !fill!
	

endlocal
pause
goto :eof