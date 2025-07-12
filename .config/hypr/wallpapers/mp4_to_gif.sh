#!/bin/env bash

set -e
# This script converts a video to a gif using ffmpeg.
# It takes one argument, the path to the video file.

# Check if ffmpeg is installed
if ! command -v ffmpeg &> /dev/null
then
    echo "ffmpeg is not installed. Please install it and try again."
    exit 1
fi

# Check if the input file exists
if [ ! -f "$1" ]
then
    echo "File not found: $1"
    exit 1
fi

# Check if the output file already exists
if [ -f "$1.gif" ]
then
    echo "Output file already exists: $1.gif"
    exit 1
fi

# Convert the video to a gif using ffmpeg
ffmpeg -ss 00:00:00 -t 00:00:05 -i "$1" -vf "fps=20,scale=2880:-1:flags=lanczos,split[s0][s1];[s0]palettegen=stats_mode=diff[p];[s1][p]paletteuse=dither=floyd_steinberg:diff_mode=rectangle" -loop 0 -gifflags -offsetting "$1.gif"
# Check if the gif file was created
if [ ! -f "$1.gif" ]
then
    echo "Error: Failed to create gif file: $1.gif"
    exit 1
fi

gifsicle -O3 --colors=128 "$1.gif" -o "$1.gif"

mv "$1.gif" ./gif/
