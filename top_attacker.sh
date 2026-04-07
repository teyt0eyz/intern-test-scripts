 #!/bin/bash

echo "IP failed TOP 5"
sudo grep "Failed password" "/home/admin/Lab2/syslog_test.log"| awk '{print $11}' | sort| uniq -c  |sort -rn | awk '{print $2}'|head -n 5 | nl
