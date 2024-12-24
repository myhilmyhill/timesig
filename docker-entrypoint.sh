#!/bin/bash

printenv | grep -v "no_proxy" > /etc/environment
crontab /etc/cron.d/timesig-cron

cron
tail -f /var/log/cron.log
