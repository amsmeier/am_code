:: script for downloading youtube audio via youtube-dl
:: use the --batch-file option to download a list of a links from a text file
:: use the following short video for testing: https://www.youtube.com/watch?v=zGDzdps75ns

@ECHO OFF

set PATH=%PATH%;C:\docs\code\cmd\


::youtube-dl -f "bestaudio" "https://www.youtube.com/watch?v=YuZ1rYHveJA"
::youtube-dl -x -f "bestaudio" --audio-format "mp3" "https://www.youtube.com/watch?v=zGDzdps75ns" 
::youtube-dl -f "bestaudio" "https://www.youtube.com/watch?v=zGDzdps75ns" --output "qqq.mp3"

youtube-dl -x -f "bestaudio" --audio-format "mp3" --batch-file="youtube_link_list.txt"

 PAUSE