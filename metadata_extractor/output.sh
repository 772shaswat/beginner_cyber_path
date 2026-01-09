#!/bin/bash

OUTPUT_DIR="results"
mkdir -p "$OUTPUT_DIR"

save_output() {
  local file="$1"
  local metadata="$2"
  local base=$(basename "$file")
  local out_file="$OUTPUT_DIR/${base}_metadata.txt"

  echo "$metadata" > "$out_file"
  echo "[SAVED] Metadata for $file -> $out_file"
}
