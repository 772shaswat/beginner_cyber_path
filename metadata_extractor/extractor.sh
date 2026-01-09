#!/bin/bash

# Main entry poiny for a metadata extractor

# Load modules
source utils.sh
source parsers.sh
source output.sh

if [ $# -eq 0 ]; then
	echo "Usage: $0 file1 [file2 ...]"
	exit 1
fi

for file in "$@"; do
	validate_file "$file" || continue
	log "Extracting metadata for $file"
	metadata=$(parse_file "$file")
	save_output "$file" "$metadata"
done
