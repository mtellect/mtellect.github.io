#!/bin/bash

# Find all video files in the assets directory
# Use -print0 and read -d '' to handle filenames with spaces correctly
# Use < /dev/null for ffmpeg to prevent it from consuming stdin
find assets -type f \( -name "*.mp4" -o -name "*.MP4" -o -name "*.mov" \) -print0 | while read -d '' -r file; do
    echo "Processing $file..."
    
    # Get filename without extension
    filename="${file%.*}"
    extension="${file##*.}"
    
    # Temporary output file
    output="${filename}_temp.mp4"
    
    # Shrink using ffmpeg
    # Redirect stdin from /dev/null to prevent ffmpeg from eating the 'find' output
    ffmpeg -i "$file" -vcodec libx264 -crf 28 -preset faster -vf "scale='min(720,iw)':-2" -y "$output" < /dev/null
    
    # Check if ffmpeg succeeded
    if [ $? -eq 0 ]; then
        # Replace original with shrunk mp4
        mv "$output" "${filename}.mp4"
        
        # If original was not .mp4, remove it
        if [ "$extension" != "mp4" ] && [ "$extension" != "MP4" ]; then
            rm "$file"
        fi
        echo "Successfully shrunk $file"
    else
        echo "Failed to shrink $file"
        rm -f "$output"
    fi
done
