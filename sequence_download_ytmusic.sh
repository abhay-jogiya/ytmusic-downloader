#!/bin/bash

# Check if a URL was provided
if [ -z "$1" ]; then
    echo "Usage: ./download_ytmusic.sh <playlist_or_video_url>"
    exit 1
fi

URL=$1

echo "Starting download from: $URL"


yt-dlp -f "ba" \
       -x --audio-format mp3 \
       --audio-quality 0 \
       --embed-metadata \
       --embed-thumbnail \
       --ignore-errors \
       --sleep-interval 5 \
       -o "%(playlist_index)03d - %(title)s.%(ext)s" \
       "$URL"

echo "Download process complete!"
