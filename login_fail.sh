#!/bin/bash

LOG_FILE=/home/admin/Lab2/syslog_test.log
echo "Login failed IP"
sudo grep "Failed password" "$LOG_FILE" | cut -d' ' -f12 | sort |uniq 
