#!/bin/bash
pkg update && pkg upgrade
termux-setup-storage
pkg install python
pip install youtube-dl
mkdir /data/data/com.termux/files/home/storage/shared/Youtube &
mkdir -p ~/.config/youtube-dl
cat > ~/.config/youtube-dl/config << EOL
--no-mtime
-o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s
-f "best[height<=1080]"
EOL
mkdir ~/bin 
cat > ~/bin/termux-url-opener << EOL
youtube-dl $1
EOL
