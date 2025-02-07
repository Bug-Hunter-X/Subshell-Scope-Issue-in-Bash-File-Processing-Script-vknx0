#!/bin/bash

# This script attempts to process files in a directory, but contains a subtle bug.

find . -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
  # Incorrectly using the file variable inside a subshell. 
  ( echo "Processing: $file" ; some_command "$file")
  # ... more commands ...
  if [ $? -ne 0 ]; then
    echo "Error processing $file"
  fi
 done