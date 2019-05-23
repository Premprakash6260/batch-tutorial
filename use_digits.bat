@echo off
cls
setlocal EnableDelayedExpansion


goto :main
:main
setlocal
	call create_string numbers "01323"
	call string_is_digits "!numbers!" result
	echo !result!
endlocal
pause
goto :eof