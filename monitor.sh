#!/bin/bash

clear

echo "############################################################"
echo "#              AWS EC2 MONITORING REPORT                   #"
echo "############################################################"

echo "Date      : $(date)"
echo "Hostname  : $(hostname)"
echo "Kernel    : $(uname -r)"
echo "Uptime    : $(uptime -p)"

echo
echo "------------------------------------------------------------"
echo "CPU USAGE"
echo "------------------------------------------------------------"

top -bn1 | grep "Cpu(s)"

echo
echo "------------------------------------------------------------"
echo "MEMORY USAGE"
echo "------------------------------------------------------------"

free -h

echo
echo "------------------------------------------------------------"
echo "DISK USAGE"
echo "------------------------------------------------------------"

df -h

echo
echo "------------------------------------------------------------"
echo "TOP 5 MEMORY CONSUMING PROCESSES"
echo "------------------------------------------------------------"

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -6

echo
echo "------------------------------------------------------------"
echo "TOP 5 CPU CONSUMING PROCESSES"
echo "------------------------------------------------------------"

ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head -6

echo
echo "------------------------------------------------------------"
echo "RUNNING SERVICES"
echo "------------------------------------------------------------"

systemctl list-units --type=service --state=running --no-pager

echo
echo "############################################################"
echo "#            Monitoring Completed Successfully             #"
echo "############################################################"
