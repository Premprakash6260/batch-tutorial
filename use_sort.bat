@echo off
setlocal EnableDelayedExpansion

:main
setlocal
	call create_array numbers "," "2,6,3,10,100,33.13,34,77,42,4"
	call sort_array numbers ","

endlocal
pause
goto :eof