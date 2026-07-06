#!/bin/bash

echo "EC2 SYSTEM MONITOR"

#CPU Usage
top -bn1 | grep "Cpu(s)"

#Memory Usage
free -h

#Disk Usage
df -h

#Running Services
systemctl list-units --type=service --state=running --no-pager

