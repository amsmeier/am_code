; shortcut to copy text highlighted in google chrome while removing line breaks
; start by highlighting the text to be copied




^d:: ; 

Clipboard := "" ; clear clipboard
Send ^c ; copy selected note name
Clipwait ; wait until there's something on the clipboard
Send !d ; go to address bar
Send ^v ; copy into address bar
Clipboard := "" ; clear clipboard so we can check that subsequent text is successfully copied
Send ^a ; select copied text
Send ^c ; copy selected text
Clipwait ; wait until there's something on the clipboard
Send {esc 3} ; remove copied text from address bar and move cursor from address bar back to webpage

Return

