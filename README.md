# Shell Scripting with AWS EC2, Bash & Git

## Objective

This project demonstrates EC2 monitoring using Bash scripting, Git version control, logging, and automation using Cron.

## Features

- CPU Usage Monitoring
- Memory Usage Monitoring
- Disk Usage Monitoring
- Running Services
- Top CPU Processes
- Top Memory Processes
- Log Generation
- Cron Automation

## Requirements

- Ubuntu EC2 Instance
- Git
- Bash

## Run

```bash
chmod +x monitor.sh
./monitor.sh
```

## Save Logs

```bash
./monitor.sh >> monitor_logs.txt
```

## Schedule

```bash
crontab -e
```

Example

```cron
0 9 * * * /home/ubuntu/shell-assignment/monitor.sh >> /home/ubuntu/shell-assignment/monitor_logs.txt
```

## Git Commands

```bash
git add .
git commit -m "Update"
git push origin main
```
