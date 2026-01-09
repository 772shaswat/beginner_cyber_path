#!/bin/bash
# backup.sh - master script that sources all modules

source ./backup_sources.sh
source ./backup_dest.sh
source ./backup_copy.sh
source ./backup_log.sh

echo "Backup script completed. Check $DEST and $LOG_FILE for results."
