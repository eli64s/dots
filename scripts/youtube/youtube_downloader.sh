#!/usr/bin/env bash
# =========================================================================
#  YOUTUBE BATCH DOWNLOADER (pytubefix edition, macOS‑friendly + debug)
# =========================================================================

set -euo pipefail
IFS=$'\n\t'

# ——— Configuration —————————————————————————————————————————————————————
OUTPUT_DIR="$HOME/Assets/media/edm/mp3"
LOG_FILE="download.log"
FAILED_FILE="failed_links.txt"
# toggle overwrite of existing MP3s:
OVERWRITE="no"
# ————————————————————————————————————————————————————————————————————

mkdir -p "$OUTPUT_DIR"
> "$LOG_FILE"
> "$FAILED_FILE"

if [[ $# -ne 1 ]]; then
  echo "Usage: $(basename "$0") path/to/links.txt"
  exit 1
fi

LINKS_FILE="$1"
if [[ ! -f "$LINKS_FILE" ]]; then
  echo "Error: file not found – $LINKS_FILE"
  exit 1
fi

# Count only real URLs
TOTAL=$(grep -E -c '^\s*https?://' "$LINKS_FILE" || true)
(( TOTAL == 0 )) && { echo "⚠️  No URLs found in $LINKS_FILE"; exit 0; }

echo "📋 Reading links from: $LINKS_FILE"
echo "    Found $TOTAL URL(s)" | tee -a "$LOG_FILE"

COUNT=0
SUCCESS=0
FAIL=0

# Read the file, stripping CRs and logging each line for debug
while IFS= read -r raw_line || [[ -n "$raw_line" ]]; do
  # strip Windows CR
  line="${raw_line%%$'\r'}"
  echo "DEBUG ─ raw line: <$line>" >> "$LOG_FILE"

  # trim whitespace
  url="${line#"${line%%[![:space:]]*}"}"
  url="${url%"${url##*[![:space:]]}"}"

  # skip blank/comment lines
  if [[ -z "$url" || "$url" == \#* || ! "$url" =~ ^https?:// ]]; then
    echo "DEBUG ─ skipping: <$url>" >> "$LOG_FILE"
    continue
  fi

  (( COUNT++ ))
  echo "🔄 [$COUNT/$TOTAL] $url" | tee -a "$LOG_FILE"

  # 1️⃣ Download video via pytubefix
  if uvx --isolated pytubefix "$url" >>"$LOG_FILE" 2>&1; then
    # Find the newest .mp4 (macOS-friendly)
    video_file=$(find . -maxdepth 1 -type f -iname '*.mp4' \
                 -exec stat -f "%m %N" {} \; \
               | sort -nr \
               | head -n1 \
               | cut -d' ' -f2-)
    if [[ -z "$video_file" ]]; then
      echo "   ❌ No .mp4 found after download!" | tee -a "$LOG_FILE"
      echo "$url" >> "$FAILED_FILE"
      (( FAIL++ ))
      continue
    fi
    echo "   🎬 Downloaded: $video_file" | tee -a "$LOG_FILE"
  else
    echo "   ❌ Download failed" | tee -a "$LOG_FILE"
    echo "$url" >> "$FAILED_FILE"
    (( FAIL++ ))
    continue
  fi

  # 2️⃣ Convert to MP3
  base="$(basename "$video_file" .mp4)"
  target="$OUTPUT_DIR/$base.mp3"

  if [[ -f "$target" && "$OVERWRITE" != "yes" ]]; then
    echo "   ⚠️  $base.mp3 exists, skipping conversion." | tee -a "$LOG_FILE"
    (( SUCCESS++ ))
  else
    echo "   🔄 Converting to MP3: $base" | tee -a "$LOG_FILE"
    if ffmpeg -i "$video_file" -vn -f mp3 "$target" >>"$LOG_FILE" 2>&1; then
      echo "   ✅ Converted: $base.mp3" | tee -a "$LOG_FILE"
      (( SUCCESS++ ))
    else
      echo "   ❌ Conversion failed" | tee -a "$LOG_FILE"
      echo "$url" >> "$FAILED_FILE"
      (( FAIL++ ))
      # skip rm so you can inspect the broken video
      continue
    fi
  fi

  # 3️⃣ Cleanup
  rm -f "$video_file"

done < <(cat "$LINKS_FILE")

# ────────────────────────────────────────────────────────────────────────────
echo
echo "========================================================"
echo "🏁 COMPLETE"
echo "  Processed : $TOTAL"
echo "  Success   : $SUCCESS"
echo "  Failed    : $FAIL"
(( FAIL > 0 )) && echo "⚠️  See failed links: $FAILED_FILE"
echo
echo "Your MP3s are in: $OUTPUT_DIR"
echo "========================================================"
