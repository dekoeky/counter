#!/bin/sh

# Cleanup on SIGTERM
trap 'echo "Stopping..."; exit 0' TERM

# Validate and set default values
[ -z "$delay" ] || [ "$delay" -le 0 ] && delay=1
[ -z "$increment" ] || [ "$increment" -eq 0 ] && increment=1
[ -z "$start" ] && start=0

counter=$start
while true; do
  echo "Counter: $counter"
  sleep "$delay"
  counter=$((counter + increment))
done
