# Local HTML5 Video Player Helper

*NOTE: This was built as a one-off solution for some videos I was watching, and is pretty rough*

Helper script + HTML template for playing back potentially subtitled
local video files, particularly at higher playback speeds.

This is intended to be used in conjunction with the [Video Speed Controller](https://github.com/igrigorik/videospeed) extension.

## TODO

Subtitles won't load over local file paths, so something like http-server is needed to serve the files over a loopback url.

## Motivation:

VLC is great, but at higher playback speeds the audio gets very distorted.
Chrome's built-in HTML5 video player handles this much better, but is pickier
about formats and supported codecs, and can't open the files directly.



