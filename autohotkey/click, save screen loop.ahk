#persistent
SetTimer, shootscreen, 1500

shootscreen:
	Send #{PrintScreen}
	Sleep, 1000
	Click
Esc::exitApp