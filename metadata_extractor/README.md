# Metadata Extractor (Bash)

## Overview
Modular Bash tool to extract metadata from images, PDFs, and text files. Designed for OSINT, file analysis, and automation.

## Structure
- `extractor.sh`: Main entry point
- `utils.sh`: Validation and logging
- `parsers.sh`: File-type specific metadata extractors
- `output.sh`: Saves results to `results/`
- `demo_files`: Holds sample files

## Usage
./extractor.sh demo_files/sample.jpg demo_files/notes.txt
