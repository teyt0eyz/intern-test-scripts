 #!/bin/bash


hours=$(grep "Failed password" /var/log/auth.log | cut -d'-' -f3 | cut -d'T' -f2 | cut -d':' -f1|uniq -c |sort -rn | awk '{print $2}' | head -n 1)
echo "Most failed hours: $hours"

