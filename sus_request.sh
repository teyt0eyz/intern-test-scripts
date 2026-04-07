#!/bin/bash

logfile=/var/log/nginx/access2.log

echo "Suspicious Request"
grep -E "wp-login|phpmyadmin|admin" "$logfile" | awk '{print "IP: " $1 " URL: " $7 }'

