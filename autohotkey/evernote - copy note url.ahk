; shortcut 1: create a hyperlink to the URL of an evernote note, with text set to the (highlighted) note name
; 	start by highlighting the short version of the evernote note name (i.e. 'skipper ea 2022')

; shortcut 2: copy note URL [just the text, not a hyperlink]




^q:: ; shortcut 1: create a hyperlink to the URL of an evernote note, with text set to the (highlighted) note name

Clipboard := "" ; clear clipboard
Send ^c ; copy selected note name
Clipwait ; wait until there's something on the clipboard
Send {tab} ; go to note body
Send {enter} ; push down any text that may be on first line of note body
Sleep 200 ; wait for Enter command to complete
Send {up} ; go to first line
Send ^v ; paste intended text of hyperlink
Send ^+i ; open note info
Sleep 200 ; wait for note info to open... may need to lengthen when evernote is running slower
Send +{tab 6} ; go to 'URL' field in note info... backwards tab 6 times
Clipboard := "" ; clear clipboard
Send ^c ; copy URL
Clipwait ; wait until there's something on the clipboard
Send {esc} ; quit note info
Sleep 700 ; wait for note info to close... may need to lengthen when evernote is running slower
Send +{tab} ; go to note title
Send {tab} ; go to note body
Sleep 100
Send +{down} ; highlight intended hyperlink text
Send +{left} ; make sure highlight only covers 1 line, or hyperlink creation can get messed up
Send ^k ; make hyperlink
Sleep 500 ; wait for hyperlink box to open
Send ^v ; paste URL into hyperlink
Sleep 50 ;
Send  {enter} ; finalize hyperlink
; Sleep 1000 ; 
Send +{up} ; highlight link
Send ^x ; cut link
Clipwait ; wait until there's something on the clipboard
Send {del}

Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



^+q:: ; shortcut 2: copy note URL [just the text, not a hyperlink]

Send ^+i ; open note info
Sleep 200 ; wait for not info to open... may need to lengthen when evernote is running slower
Send +{tab 6} ; go to 'URL' field in note info... backwards tab 6 times
Clipboard := "" ; clear clipboard
Send ^c ; copy URL
Clipwait ; wait until there's somethign on the clipboard
Send {esc} ; quit note info

Return