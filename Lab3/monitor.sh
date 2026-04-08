#!/bin/bash

LOG_FILE="/tmp/auth_test.log"
REPORT_FILE="/tmp/report.log"
BLACKLIST_FILE="/home/admin/Lab3/ip_blacklist.txt"

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
#2
if [ -z "$1" ]; then
    echo "Usage: ./monitor.sh <threshold>"
    exit 1
fi

THRESHOLD=$1

echo "================================"
echo "      BABY SOC - MONITORING     "
echo "================================"
#1
if [ ! -f "$LOG_FILE" ]; then
    echo "[ERROR] Log file not found!❌"
    exit 1
fi

#3
get_failed_count(){

    count_failed=$(grep -i "Failed password" "$LOG_FILE" | wc -l) 
    echo "Failed Attempts: $count_failed"
}

get_failed_count

#4
get_top_attackers(){
    top_attackers=$(grep -i "Failed password" "$LOG_FILE" | awk '{print $11}'|sort | uniq -c | sort -rn  | head -n 3)
    echo "🥷  TOP Attackers:"
    echo "$top_attackers"
}

get_top_attackers

#5
check_blacklist(){

echo "🔍  Checking blacklist..."
    while read -r ip; do
        if [ -z "$ip" ]; then
            continue
        fi

        if grep -q "$ip" "$LOG_FILE" ; then
            echo "🚫  Blacklist IP detected: $ip"
        fi

    done  < "$BLACKLIST_FILE"
}

check_blacklist

#6
if [ "$count_failed" -gt "$THRESHOLD" ]; then
    echo -e "⚠️ \e[31m ALERT: Brute force detected!\e[0m"
else
    echo "✅  Status: Normal"
fi


#7
write_report(){
     echo "[$TIMESTAMP] Failed: $count_failed " >> "$REPORT_FILE"    
}

write_report

#10
echo "---------------------------------"
echo "  LOG TODAY [$(date '+%b %-d')]  "

log_today=$(grep "$(date '+%b  %-d')" "$LOG_FILE" | awk '{print $11}' |sort | uniq )
echo -e "\e[33m$log_today\e[0m"

