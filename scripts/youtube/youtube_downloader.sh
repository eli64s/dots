#!/bin/bash

# =========================================================================
#  YouTube Batch Downloader: Simplified Edition
#
#  A streamlined approach to YouTube audio extraction
# =========================================================================

# Set the destination directory for MP3 files
OUTPUT_DIR="/Users/k01101011/Assets/media/edm/mp3"

# Display banner
echo "========================================================"
echo "  YOUTUBE BATCH DOWNLOADER: STREAMLINED PROTOCOL   "
echo "========================================================"

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Check if a links file was provided as an argument
if [ $# -eq 1 ] && [ -f "$1" ]; then
    LINKS_FILE="$1"
    echo "📋 Reading links from: $LINKS_FILE"

    # Count total links for progress tracking
    TOTAL_LINKS=$(grep -c "https://" "$LINKS_FILE")
    CURRENT=0
    SUCCESS=0
    FAILED=0

    # Create or clear the failed links file
    > failed_links.txt

    # Process each link in the file
    while IFS= read -r line || [ -n "$line" ]; do
        # Skip empty lines and comments
        if [[ -z "$line" || "$line" =~ ^# ]]; then
            continue
        fi

        # Extract YouTube URL from the line
        youtube_url=$(echo "$line" | grep -o 'https://www.youtube.com/watch?[^[:space:]"&]*')

        if [ -z "$youtube_url" ]; then
            continue
        fi

        # Increment our counter
        CURRENT=$((CURRENT + 1))
        echo "🔄 Processing link $CURRENT/$TOTAL_LINKS"
        echo "📥 Downloading: $youtube_url"

        # Step 1: Download the video
        uvx --isolated pytubefix "$youtube_url"

        # Step 2: Find all MP4 files in the current directory
        # Sort them by modification time (newest first) - macOS compatible
        latest_videos=$(find . -maxdepth 1 -name "*.mp4" -type f -exec stat -f "%m %N" {} \; | sort -nr | head -n 1 | cut -d' ' -f2-)

        if [ -z "$latest_videos" ]; then
            echo "   ❌ No video file found after download."
            echo "$youtube_url" >> failed_links.txt
            FAILED=$((FAILED + 1))
            continue
        fi

        # Get the most recent video file
        video_file="$latest_videos"
        echo "   🎬 Video downloaded: $video_file"

        # Step 3: Convert to MP3
        base_name=$(basename "$video_file" .mp4)
        echo "   🔄 Converting to MP3: $base_name"

        ffmpeg -i "$video_file" -f mp3 -vn "$OUTPUT_DIR/$base_name.mp3"

        if [ $? -eq 0 ]; then
            echo "   ✅ Conversion successful: $base_name.mp3"
            # Remove the original video file
            rm "$video_file"
            SUCCESS=$((SUCCESS + 1))
        else
            echo "   ❌ Conversion failed."
            echo "$youtube_url" >> failed_links.txt
            FAILED=$((FAILED + 1))
        fi

        echo ""
    done < "$LINKS_FILE"

    # Display final statistics
    echo "========================================================"
    echo "🏁 DOWNLOAD AND CONVERSION COMPLETE"
    echo "========================================================"
    echo "📊 Total links processed: $TOTAL_LINKS"
    echo "✅ Successful conversions: $SUCCESS"
    echo "❌ Failed conversions: $FAILED"

    if [ $FAILED -gt 0 ]; then
        echo "⚠️ Failed links have been logged to: failed_links.txt"
    fi

else
    # If no links file provided, create a sample file
    echo "⚠️ No links file provided."
    echo "Creating a template file for you..."

    cat > youtube_links.txt << EOL
# YouTube Links for Batch Download
# Add one URL per line
https://www.youtube.com/watch?v=4HkaYZjzjPc
# Add more links below
EOL

    echo "📝 Template created: youtube_links.txt"
    echo "Please add your YouTube links to this file, then run:"
    echo "  ./$(basename "$0") youtube_links.txt"
fi

echo ""
echo "Your MP3 files are in: $OUTPUT_DIR"
echo "========================================================"
