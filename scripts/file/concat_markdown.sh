#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Configuration ---
# The name of the final output file.
OUTPUT_FILE="concatenated_output.txt"

# Get the list of subdirectories from the command-line arguments.
SUBDIRS=("$@")

# --- Validation ---
# Check if at least one subdirectory was provided.
if [ ${#SUBDIRS[@]} -eq 0 ]; then
  echo "❌ Error: Please provide at least one subdirectory."
  echo "Usage: $0 <subdir1> <subdir2> ..."
  exit 1
fi

# --- Main Logic ---
# Clear or create the output file to start fresh.
> "$OUTPUT_FILE"

echo "Searching for .md files in: ${SUBDIRS[*]}"
echo "Concatenating into '$OUTPUT_FILE'..."

# Find all files ending in .md within the provided subdirectories,
# sort them for consistent order, and then process each one.
# The `while read` loop is robust and handles filenames with spaces.
find "${SUBDIRS[@]}" -type f -name "*.md" | sort | while IFS= read -r file; do
  echo "  -> Adding $file"

  # Append a separator header to the output file
  echo -e "\n\n================================================================================\nFILE: $file\n================================================================================\n" >> "$OUTPUT_FILE"

  # Append the content of the markdown file to the output file
  cat "$file" >> "$OUTPUT_FILE"
done

echo ""
echo "✅ Success! All files have been concatenated into '$OUTPUT_FILE'."
