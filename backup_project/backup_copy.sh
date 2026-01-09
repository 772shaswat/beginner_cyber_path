#!/bin/bash
# backup_copy.sh - copies each source folder to destination

for src in "${SRC_DERS[@]}"; do
	if [[ -d "$src" ]]; then
		cp -r "$src" "$DEST"
		echo "Backed up: $src -> $DEST"
	else
		echo "Skipped: $src (not a directory)"
	fi
done
