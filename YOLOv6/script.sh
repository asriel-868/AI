#!/bin/bash

# Loop through all files in the current directory
for image_file in data/images/*.jpg; do
    # Check if the file is an image file
    if [ -f "$image_file" ]; then
        # Call the Python script with the image file name as an argument
        python tools/infer.py --weights yolov6s.pt --source "$image_file"
    fi
done
