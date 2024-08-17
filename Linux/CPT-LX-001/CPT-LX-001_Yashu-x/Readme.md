# System Monitor Script

## Overview
This Bash script monitors system resources such as CPU usage, memory usage, and disk usage, and logs the output to a file named `system_monitor.log`. It is designed to be executed automatically every 10 minutes using `cron`.

## Prerequisites
- Linux environment (e.g., local machine, VM, or WSL on Windows).
- Basic knowledge of Linux commands and Bash scripting.

## Getting Started

### 1. Make the Script Executable
Ensure the `system_monitor.sh` script has executable permissions. Navigate to the directory containing the script and run:

```bash
chmod +x system_monitor.sh

#Run the Script Manually
./system_monitor.sh

#Set Up a Cron Job
crontab -e
*/10 * * * * /path/to/your/system_monitor.sh

