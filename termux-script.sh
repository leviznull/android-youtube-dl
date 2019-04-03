#!/bin/bash

#Dump of shell commands

pkg update && apt upgrade

termux-setup-storage

pkg install python

pip install youtube-dl

mkdir /data/data/com.termux/files/home/storage/shared/Youtube

mkdir -p ~/.config/youtube-dl

nano ~/.config/youtube-dl/config
#write to file
--no-mtime
-o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s
-f "best[height<=1080]"

mkdir ~/bin 

cd ~/bin

nano termux-url-opener
#write to file
youtube-dl $1
