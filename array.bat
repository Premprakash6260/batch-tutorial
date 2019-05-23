@echo off
cls
setlocal enabledelayedexpansion
goto :main

:main
setlocal
	call create_array grocery "," "apples,bananas,grapes"
	echo !grocery!
	echo !grocery[2]!
	echo !grocery_length!

endlocal
goto :eof