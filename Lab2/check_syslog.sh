#!/bin/bash

logfile="/var/log/syslog"

if [ -f "$logfile" ]; then
	echo "found file"
	count=$(wc -l "$logfile" | awk '{print $1}')
	echo "count = $count"
else
	echo "File not found"
	exit 1
fi
