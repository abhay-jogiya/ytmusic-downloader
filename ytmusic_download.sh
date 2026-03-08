#!/bin/bash

# check if a url was provided
if [ -z "$1" ]; then
    echo "usage: ./download_ytmusic.sh <playlist_url>"
    exit 1
fi

url=$1

echo "starting download for playlist: $url"

# download, extract audio as mp3, add metadata and thumbnail
# changed: removed "%(playlist_index)02d - " from the output line below
yt-dlp -x --audio-format mp3 --audio-quality 0 \
       -o "%(title)s.%(ext)s" \
       --embed-thumbnail --add-metadata \
       "$url"

echo "download complete!"
