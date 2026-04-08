#!/bin/bash

logfile=/var/log/nginx/access.log
echo "TOP 10 IP use web"
grep "GET" "$logfile" | awk '{print $1}' |sort | uniq -c | sort -rn | head -n 10 | awk '{print $2}' | nl
