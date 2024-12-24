#!/bin/sh

if [ "$1" != "test" ]; then
  echo "timesig $(date)" >> /var/log/cron.log
  sleep 54 2>> /var/log/cron.log
fi
pw-cat -p /Time_Signal.ogg --volume 0.01 >> /var/log/cron.log 2>&1
