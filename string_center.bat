@echo off
set content= 
set /a middle=(%2 - !%1_length!)/2
if %2 lss !%1_length! (
	set %3=!%1!
	goto :eof
)

for /l %%g in ( 0, 1, !middle! ) do (
	set content=!content! 
	if %%g equ !middle! (
		set stringres=!content!!%1!!content!
		goto :end
	)

)
:end
set %3=!stringres!

set stringres=
set content=
set middle=

