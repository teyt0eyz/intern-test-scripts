#!/bin/bash

TODAY=$(date "+%b %e")
LOG_FILE=/home/admin/Lab2/syslog_test.log

count=$( grep "$TODAY" "$LOG_FILE" | grep "error" | wc -l )


echo "Date: $TODAY "
echo "found error : $count"
 

