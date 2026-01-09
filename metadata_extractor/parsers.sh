#!/bin/bash

parse_file() {
  local file="$1"
  local type=$(file --mime-type -b "$file")

  case "$type" in
    image/jpeg|image/png)
      exiftool "$file"
      ;;
    application/pdf)
      pdfinfo "$file" 2>/dev/null || strings "$file" | head -n 20
      ;;
    text/plain)
 	 echo "Preview (first 5 lines):"
  	head -n 5 "$file"
  	echo "Searching for metadata tags:"
  	grep -E 'Author:|Created:|Date:|Version:' "$file"
  	echo "Word/line count:"
 	 wc -l -w "$file"
 	 ;;
    *)
      echo "No specific parser for $type, showing basic info:"
      file "$file"
      ;;
  esac
}
