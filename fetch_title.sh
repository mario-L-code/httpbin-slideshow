#!/bin/bash

# Curl the REST API 
RESPONSE=$(curl -s https://httpbin.org/json)

# Extract the title
TITLE=$(echo "$RESPONSE" | jq -r '.slideshow.title')

echo "Slideshow title: $TITLE"
