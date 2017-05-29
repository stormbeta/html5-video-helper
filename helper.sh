#!/usr/bin/env bash

#Helper script to run subtitled MKVs in Chrome's HTML5 video player on macOS
#I would use VLC, but its algorithm for speeding up video is awful at higher speeds

unzip "$1"

EPISODE="$(echo "$1" | sed -r "s/.zip$//")"
NAME="$(find . -name "*${EPISODE}*.mkv" | sed -r 's/.mkv$//')"

#Chrome doesn't like whatever the files have for audio
ffmpeg -i "${NAME}.mkv" -vcodec copy -acodec mp3 "${EPISODE}.mp4"

#Rip out subtitles in a format Chrome understands
ffmpeg -i "${NAME}.mkv" -map 0:s:0 "${EPISODE}.vtt"

sed -r "s/VIDEO_FILE/${EPISODE}.mp4/" template.html | \
  sed -r "s/SUBTITLE_FILE/${EPISODE}.vtt/" > "${EPISODE}.html"

echo 'Run this: open "${EPISODE}.html"'
