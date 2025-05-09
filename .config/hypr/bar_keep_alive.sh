#!/bin/bash
while true; do
  pid=$(pidof ashell)
  if [ -z "$pid" ]; then
    echo restarting...
    ~/.config/hypr/ashell
  fi
  sleep(3)
done

