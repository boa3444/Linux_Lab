#!/bin/bash

# Create backup directory if it doesn't exist
mkdir -p backup

# Get current timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

# Loop through all .txt files in current directory
for file in *.txt; do
  # Skip if no .txt files found
  [ -e "$file" ] || continue

  # Extract base filename
  base=$(basename "$file" .txt)

  # Copy with timestamp
  cp "$file" "backup/${base}_${timestamp}.txt"
done

echo "Backup completed at $timestamp."

