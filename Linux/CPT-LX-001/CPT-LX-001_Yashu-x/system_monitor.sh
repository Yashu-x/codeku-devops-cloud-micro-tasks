#!/bin/bash

# Log file location
LOG_FILE="system_monitor.log"

# Timestamp for log entries
TIME=$(date +"%Y-%m-%d %H:%M:%S")

# Capture CPU usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}')

# Capture Memory usage
MEMORY_USAGE=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')

# Capture Disk usage
DISK_USAGE=$(df -h | awk '$NF=="/"{printf "%s", $5}')

# Log the information to the log file
echo "[$TIME] CPU Usage: $CPU_USAGE, Memory Usage: $MEMORY_USAGE, Disk Usage: $DISK_USAGE" >> $LOG_FILE
