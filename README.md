# Server Performance Monitoring Script


## Project Page URL


https://roadmap.sh/projects/server-stats


---


## Overview


This project is a lightweight Bash script designed to analyze and display basic Linux server performance statistics.  
It provides a real-time snapshot of system health directly in the terminal using standard Linux utilities, without relying on external monitoring tools.


The script is suitable for cloud servers (such as AWS EC2) as well as on-premises Linux systems.


---


## Objective


The objective of this project is to understand and demonstrate Linux system monitoring fundamentals by collecting key performance metrics such as CPU usage, memory consumption, disk utilization, and active processes.


---


## Features


- Displays total CPU usage
- Shows memory usage (used and free with percentages)
- Reports disk usage of the root filesystem
- Lists top 5 processes by CPU usage
- Lists top 5 processes by memory usage
- Displays operating system version
- Shows system uptime
- Displays system load average
- Shows number of logged-in users
- Reports failed login attempts from authentication logs


---


## Requirements


- Linux operating system
- Bash shell
- Standard Linux utilities:
  - `top`
  - `free`
  - `df`
  - `ps`
  - `uptime`
  - `who`


No additional packages or third-party tools are required.


---


## Script Usage


1. Download or clone the repository.
2. Make the script executable:
   ```bash
   chmod +x server-stats.sh

Run the script:

./server-stats.sh

The output will be displayed directly in the terminal.

Sample Output
SERVER PERFORMANCE STATS


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

Learning Linux system administration fundamentals

Entry-level DevOps and Bash scripting practice

Monitoring small cloud instances

Limitations

Provides a real-time snapshot only (no historical data)

No alerting or notification system

Disk monitoring is limited to the root filesystem

Future Improvements

Add threshold-based alerts for CPU, memory, and disk usage

Export output to log files

Schedule execution using cron jobs

Monitor all mounted filesystems

Integrate with monitoring platforms

License

This project is open-source and intended for educational and personal use.

Author

Piyush
Linux | Bash | DevOps Fundamentals
![image alt] https://github.com/piyushprasad8122-creator/server-performance-monitoring/blob/67384946aa581b9b6acf866e5e13a7acbc1b7dcf/server-stats-output.png
