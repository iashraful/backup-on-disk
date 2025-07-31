#!/bin/bash

SOURCE="/data/source"
DEST="/data/destination"

echo "Starting real-time sync from $SOURCE to $DEST..."
mkdir -p "$DEST"

# Wait until destination mount is available
while [ ! -d "$DEST" ]; do
  echo "Waiting for destination SSD to be mounted at $DEST..."
  sleep 5
done

while inotifywait -r -e modify,create,delete,move "$SOURCE"; do
  echo "Change detected. Syncing..."
  rsync -avh --delete --no-owner --no-group --copy-links --no-links --exclude-from="/data/exclude_patterns.txt" "$SOURCE/" "$DEST/"
  echo "Sync done at $(date)"
done