#!/bin/bash

# Get the URL from the first argument
url="$1"

# Send a HEAD request to retrieve headers only (faster)
response=$(curl -s -I "$url")

# Extract the Content-Length header using grep
content_length=$(echo "$response" | grep -i Content-Length | awk '{print $2}')

# Check if Content-Length was found
if [[ -z "$content_length" ]]; then
  echo "Content-Length not found in response headers."
  exit 1
fi

# Print the Content-Length
echo "$content_length bytes"
