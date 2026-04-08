#!/bin/bash
# Usage: ./romrev.sh <inputfile>

# Check for one argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <inputfile>"
  exit 1
fi

input="$1"

# Check that input file exists
if [ ! -f "$input" ]; then
  echo "Error: File '$input' not found!"
  exit 1
fi

# Define output filename
output="${input}.rev"

# Perform byte-swapping using dd
dd if="$input" of="$output" conv=swab status=progress

# Report result
echo "✅ Output written to: $output"
