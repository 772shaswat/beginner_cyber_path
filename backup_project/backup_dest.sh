#!/bin/bash
# backup_dest - creates timestamped backup folder

DEST_BASE="/home/user/Backups"
TIMESTAMP=$(date +%F_%H-%M-%S)
DEST="$DEST_BASE/backup_$TIMESTAMP"

mkdir -p "$DEST"
export DEST TIMESTAMP DEST_BASE
