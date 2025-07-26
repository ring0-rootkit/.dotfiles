#!/bin/sh

id=$(pidof gammastep)
if [ $id ]; then
  echo '{"text": " ", "tooltip": "Blue light filter is up and running"}'
else
  echo '{"text": " ", "tooltip": "Blue light filter is down"}'
fi
