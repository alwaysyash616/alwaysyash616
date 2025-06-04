#!/bin/bash

# Create the target directory if it doesn't exist
mkdir -p logic_builder

# Loop through all regular files in the root directory
for file in *; do
    # Skip if not a regular file
    if [[ -f "$file" ]]; then
        # Add .c extension and move to logic_builder
        mv "$file" "logic_builder/$file.c"
    fi
done

echo "All root files moved to 'logic_builder/' with .c extension."
