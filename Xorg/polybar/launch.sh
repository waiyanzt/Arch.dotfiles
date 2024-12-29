#!/usr/bin/env bash
# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Get the name of the active monitor
MONITOR=$(xrandr --query | grep " connected" | cut -d" " -fi)

# Launch Polybar, using default config location ~/.config/polybar/config.ini
MONITOR=$MONITOR polybar bar1 2>&1 | tee -a /tmp/polybar.log &
disown

echo "Polybar launched..."
