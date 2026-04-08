#!/bin/bash
# Usage: ./romcom.sh file1 file2

# Exit if fewer than 2 arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <file1> <file2>"
  exit 1
fi

file1="$1"
file2="$2"

# Ensure both files exist
if [ ! -f "$file1" ]; then
  echo "Error: '$file1' not found!"
  exit 1
fi

if [ ! -f "$file2" ]; then
  echo "Error: '$file2' not found!"
  exit 1
fi

# Determine output path
dir=$(dirname "$file1")
base1=$(basename "$file1")
base2=$(basename "$file2")
output="$dir/${base1}+${base2}.bin"

# Run the interleaving Python code
python3 - <<EOF
a = open("$file1", "rb").read()
b = open("$file2", "rb").read()
out = bytes([x for p in zip(a, b) for x in p] + list(a[len(b):]) + list(b[len(a):]))
open("$output", "wb").write(out)
EOF

echo "✅ Combined file written to: $output"