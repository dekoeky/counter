#!/bin/bash

# Function to handle cleanup on SIGTERM
cleanup() {
    echo "Stopping counter script..."
    exit 0
}

# Register cleanup function to handle SIGTERM
trap 'cleanup' SIGTERM

# Guard parameters
if [[ ! delay -gt 0 ]]; then
    delay=1
fi

if [[ increment -eq 0 ]]; then
    increment=1
fi

if [[ ! -n "$start" ]]; then
    start=0
fi

# Main loop
counter=$start
while true; do
    echo "Counter: $counter"
    sleep $delay
    counter=$((counter + increment))
done
