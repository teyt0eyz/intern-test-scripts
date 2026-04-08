#!/bin/bash

LOG_FILE=/home/admin/Lab2/syslog_test.log
echo "service error TOP 5"
grep "error" "$LOG_FILE" | awk '{print $5}' |cut -d'[' -f1 | sort | uniq -c | sort -rn | awk '{print $2}'|head -n 5 | nl
