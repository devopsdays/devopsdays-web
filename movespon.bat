#!/bin/bash

# Path to the sponsors.txt file
SPONSORS_FILE="sponsors.txt"

# Read the sponsors.txt file line by line
while IFS= read -r line; do
  # Extract the image file name and destination directory from the line
  image_file=$(echo "$line" | grep -oP '(?<=for ).*(?=\. Please)')
  destination_dir=$(echo "$line" | grep -oP '(?<=to ).*(?=/ for)')

  # Construct the source and destination paths
  source_path="assets/$image_file.png"
  destination_path="$destination_dir/$image_file.png"

  # Check if the source file exists
  if [ -f "$source_path" ]; then
    # Create the destination directory if it doesn't exist
    mkdir -p "$destination_dir"

    # Copy the image file to the destination directory
    cp "$source_path" "$destination_path"
    echo "Copied $source_path to $destination_path"
  else
    echo "Source file $source_path does not exist"
  fi
done < "$SPONSORS_FILE"