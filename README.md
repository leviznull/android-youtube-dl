# YouTube Download
One-click downloading of YouTube videos straight from the YouTube app.

## Downloading Termux:
Download the [Termux](https://play.google.com/store/apps/details?id=com.termux) terminal emulator from the Play Store.

## Setting up Termux:
#### 1. Run update and upgrade
```bash
pkg update && apt upgrade
```
#### 2. Give termux access to your phone's filesystem via ~/storage/shared
```bash
termux-setup-storage
```
#### 3. Install python
```bash
pkg install python
```
#### 4. Install youtube-dl
```bash
pip install youtube-dl
```
#### 5. Create a folder to store your downloaded videos
```bash
mkdir /data/data/com.termux/files/home/storage/shared/Youtube
```
#### 6. Create a folder to store config file
```bash
mkdir -p ~/.config/youtube-dl
```
#### 7. Create youtube-dl config
```bash
nano ~/.config/youtube-dl/config
```
#### 8. Add the following to the config file
The Volume-Down key emulates Ctrl in termux
 
Save it with "Volume-Down" + O, then close nano with "Volume-Down" + X
```bash
--no-mtime
-o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s
-f "best[height<=1080]"
```
*The height value limits video quality, change to 240-360-480-720-1080, etc. to suit your needs or bandwidth restrictions.*
#### 9. Create "termux-url-opener" in ~/bin to enable one-click download via the "Share" menu in the youtube app
```bash
mkdir ~/bin
cd ~/bin
```
#### 10. Open the file with
```bash
nano termux-url-opener
```
#### 11. Add the following to the file
Save it with "Volume-Down" + O, then close nano with "Volume-Down" + X
```bash
youtube-dl $1
```
## All Done:
To download a YouTube video from within the YouTube app, click the "Share" link under the video, and choose "Termux". 
 
The download will start and will be available in the "YouTube" folder in the root of your internal storage.
 
If Termux keeps running you can close it by simply typing ```exit``` and pressing enter afterwards.
