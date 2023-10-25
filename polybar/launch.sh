#!/bin/bash

# Kill polybar processes
killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar main &
polybar secondly &

echo "Polybar started successfully..."
