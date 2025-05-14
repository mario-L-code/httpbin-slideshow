#!/bin/sh

# Curl the REST API 
RESPONSE=$(curl -s https://httpbin.org/json)

# Extract the title
TITLE=$(echo "$RESPONSE" | jq -r '.slideshow.title')

# Echo the title to console
echo "Slideshow title: $TITLE"
