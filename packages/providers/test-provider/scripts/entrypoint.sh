#!/bin/sh

log_file="/var/log/cron.log"

echo "Starting cron"

crond -f -l 8 &

echo "Tailing the cron log file to $log_file"

tail -f "$log_file"
