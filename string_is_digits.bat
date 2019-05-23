@echo off
goto :main

:check
	if !character! equ !goodstuff[%%h]! (
		goto :eof
	)
	if %%h equ !%~2! (
		echo !%~2!
		goto :end
	)
goto :eof

:main
call create_array goodstuff " " "0 1 2 3 4 5 6 7 8 9"
:: shitty batch 
:: we have used 'content' variable in 'create_array' script and in the end it sets 'content' value 
:: to null, so we cannot call 'create_array' after 'create_string content %1'
call create_string content %1

set /a limit=!content_length! - 1
set /a length=!goodstuff_length! - 1
set %2=1
set flag=1


for /l %%g in ( 0, 1, !limit! ) do (
	set character=!content:~%%g,1!
	for /l %%h in ( 0, 1, !length! ) do (
		call :check flag !length!
	)
)

:eof

:end
	set %2=0
:eof



