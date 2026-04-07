#!/bin/bash

logfile=/home/admin/Lab2/syslog_test.log
grep "Failed password" "$logfile" | awk '{print $11}' | sort |uniq -c  > report.txt

awk '$1 > 20 {print "ALERT: " $2 }' report.txt 


