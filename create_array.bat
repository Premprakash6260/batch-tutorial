@echo off

::create_array grocery "," "apples,bananas,grapes"
goto :main

:set_index 
	call create_string %~1[%~2] "!%~3!"
goto :eof


:main
call create_string delimeter %2
call create_string content %3

set /a offset=0
set /a index=0

for /l %%g in ( 0,1,!content_length! ) do (
	set character=!content:~%%g,1!
	if "!character!" equ "!delimeter!" (
		set /a length=%%g-offset
		call :set_index %1 !index! "content:~!offset!,!length!"
		set /a offset=%%g+1
		set /a index=!index!+1
	)

	call :set_index %1 !index! "content:~!offset!,!content_length!"
	set /a %1_length=!index!+1
	set %1=!content!
)

set offset=
set index=
set character=
set length=
set delimeter=
set content=

goto :eof