## How to Use the YouTube Batch Downloader

1. **Save the script** to a file (e.g., `youtube_downloader.sh`)
2. **Make it executable**:
   ```bash
   chmod +x youtube_downloader.sh
   ```
3. **Create a text file** with your YouTube links (one per line)
4. **Run the script** with the links file as an argument:
   ```bash
   ./youtube_downloader.sh youtube_links.txt
   ```

If you run the script without providing a links file, it will create a template file for you to fill out.

## Key Features

- Processes YouTube links in batch
- Uses `uvx --isolated pytubefix` for downloading
- Converts videos to MP3 using `ffmpeg`
- Automatically organizes files in your Assets/media/edm directory
- Tracks progress and provides detailed statistics
- Logs any failed downloads for retry

---
