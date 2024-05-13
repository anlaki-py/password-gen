#!/bin/bash

file_path="pass.sh"
destination="/usr/bin/pass"

if [ ! -f "$file_path" ]; then
    echo "Error: '$file_path' does not exist."
    exit 1
fi

if [ ! -x /usr/bin/$destination ]; then
    sudo cp "$file_path" "$destination" && \
    sudo chmod +x "$destination" || { echo "Error copying or setting permissions for '$destination'."; exit 1; }
else
    echo "'$destination' already exists. Overwriting?"
fi

echo "Successfully installed pass"
