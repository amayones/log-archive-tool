# !/bin/bash

# check if user provided arguments
if [ -z "$1" ]; then
    echo "Usage: $0 archives"
    exit 1
fi

LOG_DIR="$1"
ARCHIVE_DIR="./archives"
LOGS_DIR="./logs"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="log_archive_${TIMESTAMP}.tar.gz"
LOG_FILE="$LOGS_DIR/archive.log"

# check if log directory is valid
if [ ! -d "$LOG_DIR" ]; then
    echo "Invalid log directory: $LOG_DIR"
    exit 1
fi

# create archive and logs folders if they don't exist
mkdir -p "$ARCHIVE_DIR"
mkdir -p "$LOGS_DIR"

# compress logs (exclude existing tar.gz files)
tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" -C "$LOG_DIR" --exclude='*.tar.gz' .

# check compression result
if [ $? -eq 0 ]; then
    echo "Logs successfully archived to: $ARCHIVE_DIR/$ARCHIVE_NAME"
    echo "[$(date)] Archived $LOG_DIR to $ARCHIVE_NAME" >> "$LOG_FILE"
else 
    echo "Failed to archive logs."
    exit 1
fi