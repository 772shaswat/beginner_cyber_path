#!/bin/bash
# backup_log.sh - logs the backup run

LOG_FILE="$DEST_BASE/backup_log.txt"
echo "$TIMESTAMP -> Backup completed to $DEST" >> "$LOG_FILE"
