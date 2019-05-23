@echo off
setlocal EnableDelayedExpansion

::call sort arr_name "delimiter"

:main

	set /a length=!%1_length!-1
	call create_string delimiter %2
	set /a lim=!length!-1

	for /l %%f in ( 0, 1, !lim! ) do (	
		set /a limit=!lim! - %%f

		for /l %%g in ( 0, 1, !limit! ) do (
			set /a next=%%g + 1
			set /a check=%1[!next!]

			if !%1[%%g]! gtr !check! (
				set /a temp=!%1[%%g]!
				set /a %1[%%g]=!check!
				set /a %1[!next!]=!temp!

			)
		)
	)

for /l %%h in ( 0, 1, !length! ) do (
	echo !%1[%%h]!

	if %%h equ 0 (
		set content=!%1[%%h]!
	)else (
		set content=!content!!delimiter!!%1[%%h]!
	)

)

set %1=!content!

echo %1 !%1!

pause

goto :eof