; shortcut to turn bluetooth on then off




#b:: ; 

Send #a	; open quick settings
Sleep 1000 ; wait for quick settings to open
Send {right} ; go to bluetooth toggle button
Send {Enter} ; bluetooth off
Sleep 300
Send {Enter} ; bluetooth on

Return

