Server Performance Monitoring Script
Overview

This project is a lightweight Bash script designed to monitor and analyze basic Linux server performance metrics.
It provides a quick snapshot of system health directly from the terminal without requiring any external monitoring tools.

The script is suitable for cloud servers (such as AWS EC2) and on-prem Linux machines.

Objective

The objective of this project is to understand and demonstrate Linux system monitoring fundamentals by collecting real-time performance data using standard Linux utilities.

Features

Displays total CPU usage

Shows memory usage (used and free with percentages)

Reports disk usage of the root filesystem

Lists top 5 processes by CPU usage

Lists top 5 processes by memory usage

Displays operating system version

Shows system uptime and load average

Displays number of logged-in users

Reports failed login attempts from system logs

Requirements

Linux operating system

Bash shell

Standard Linux commands (top, free, df, ps, uptime, who)

No additional packages or third-party tools are required.

Script Usage

Clone the repository or download the script.

Make the script executable:

chmod +x server-stats.sh

Run the script:

./server-stats.sh

The output will be displayed directly in the terminal.

Sample Output
CPU Usage:
Total CPU Usage: 23.1%


Memory Usage:
Total: 957MB
Used : 394MB (41.17%)
Free : 245MB (25.60%)


Disk Usage:
Total: 8.7G
Used : 4.2G (49%)
Free : 4.5G
Project Structure
server-performance-monitoring/
├── server-stats.sh
└── README.md
Use Cases

Quick health checks for Linux servers

Learning Linux system administration

Entry-level DevOps practice project

Monitoring small cloud instances

Limitations

Provides a real-time snapshot only (no historical data)

Does not include alerting or notifications

Disk usage is limited to the root filesystem

Future Improvements

Add threshold-based alerts

Export output to log files

Schedule execution using cron

Extend disk monitoring to all mounted filesystems

Integrate with monitoring tools

License

This project is open-source and intended for educational and personal use.

Author

Piyush
Linux | Bash | DevOps Fundamentals
