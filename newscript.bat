@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal
	call create_string var "premprakash"
	echo !var!
	echo !var_length!
endlocal
goto :eof