#!/usr/bin zsh

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bars
echo "---" | tee -a /tmp/polybar-top.log /tmp/polybar-top-internal.log
polybar top 2>&1 | tee -a /tmp/polybar-top.log & disown
polybar top-internal 2>&1 | tee -a /tmp/polybar-top-internal.log & disown

echo "Bars launched..."
