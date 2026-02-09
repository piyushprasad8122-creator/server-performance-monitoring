#!/bin/bash

# ======================================
# Server Performance Monitoring Script
# ======================================

echo "=============================="
echo "   SERVER PERFORMANCE STATS   "
echo "=============================="
echo

# ---------------- CPU USAGE ----------------
echo "CPU Usage:"
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}')
echo "Total CPU Usage: $CPU_USAGE"
echo

# ---------------- MEMORY USAGE ----------------
echo "Memory Usage:"
MEM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
MEM_USED=$(free -m | awk '/Mem:/ {print $3}')
MEM_FREE=$(free -m | awk '/Mem:/ {print $4}')

MEM_USED_PERC=$(awk "BEGIN {printf \"%.2f%%\", ($MEM_USED/$MEM_TOTAL)*100}")
MEM_FREE_PERC=$(awk "BEGIN {printf \"%.2f%%\", ($MEM_FREE/$MEM_TOTAL)*100}")

echo "Total: ${MEM_TOTAL}MB"
echo "Used : ${MEM_USED}MB ($MEM_USED_PERC)"
echo "Free : ${MEM_FREE}MB ($MEM_FREE_PERC)"
echo

# ---------------- DISK USAGE ----------------
echo "Disk Usage:"
df -h / | awk 'NR==2 {
    print "Total: "$2
    print "Used : "$3" ("$5")"
    print "Free : "$4
}'
echo

# ---------------- TOP CPU PROCESSES ----------------
echo "Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo

# ---------------- TOP MEMORY PROCESSES ----------------
echo "Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo

# ---------------- SYSTEM INFO ----------------
echo "Additional System Info:"
echo "OS Version       : $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '\"')"
echo "Uptime           : $(uptime -p)"
echo "Load Average     : $(uptime | awk -F'load average:' '{print $2}')"
echo "Logged-in Users  : $(who | wc -l)"
echo

# ---------------- FAILED LOGIN ATTEMPTS ----------------
if [ -f /var/log/auth.log ]; then
    echo "Failed Login Attempts:"
    grep "Failed password" /var/log/auth.log | wc -l
elif [ -f /var/log/secure ]; then
    echo "Failed Login Attempts:"
    grep "Failed password" /var/log/secure | wc -l
else
    echo "Failed Login Attempts: Log file not accessible"
fi

echo
echo "=============================="
echo "       END OF REPORT          "
echo "=============================="
