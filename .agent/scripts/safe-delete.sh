#!/bin/bash
TARGET=$1

# Config
RECYCLE_BIN=".agent/recycle_bin"
RETENTION_DAYS=30
LOG_FILE=".agent/deletion.log"

# Ensure Recycle Bin exists
mkdir -p "$RECYCLE_BIN"

# --- Function: Auto-Cleanup ---
cleanup_old_files() {
    find "$RECYCLE_BIN" -type f -mtime +$RETENTION_DAYS -delete
    find "$RECYCLE_BIN" -type d -empty -delete
}

# --- Action: Secure Delete ---
if [ -z "$TARGET" ]; then
    # If no target provided, just run cleanup and exit
    cleanup_old_files
    exit 0
fi

if [ -e "$TARGET" ]; then
    TIMESTAMP=$(date +%Y%m%d_%H%M%S)
    BASENAME=$(basename "$TARGET")
    DEST="$RECYCLE_BIN/${BASENAME}_${TIMESTAMP}"
    
    mv "$TARGET" "$DEST"
    echo "$TIMESTAMP | MOVED | $TARGET -> $DEST" >> "$LOG_FILE"
    echo "✅ Securely moved to recycle bin: $DEST"
    
    # Run cleanup after operation
    cleanup_old_files
else
    echo "❌ Error: File not found: $TARGET"
    exit 1
fi
