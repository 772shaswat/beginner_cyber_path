#!/usr/bin/env bash
set -euo pipefail
# backup_sources.sh - defines source directories

SRC_DIRS=(
	"/home/user/Documents"
	"/home/user/cyber_practice/bash_scripts/micro_drill"
)

for path in "${SRC_DIRS[@]}"; do
 	if [[ -d "$path" ]]; then
 		echo "Valid: $path"
 	fi
done
export SRC_DIRS
