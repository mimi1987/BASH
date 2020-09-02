#!/bin/bash

# Using youtube-dl to download the audiofile from youtube.
# Using ffmpeg to convert the file.

echo "Youtube URL: "
read url

echo "Music file extension e.g. 'mp3': "
read file_extension

youtube-dl -f bestaudio $url 

song_title=$(youtube-dl -e $url)
song=$(ls | grep -i "$song_title")

echo "# Song_title: $song_title"
echo "# song: $song"

ffmpeg -i "$song" "${song_title}.$file_extension" && rm "$song"




