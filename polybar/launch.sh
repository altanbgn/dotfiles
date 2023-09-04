#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

#function startPolybar() {
  # Launch bar1 and bar2
#  echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#  polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
#  polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

#  echo "Bars launched..."
#}

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
  done

else
  polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
fi

