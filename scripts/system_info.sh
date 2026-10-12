
#!/usr/bin/env bash

set -euo pipefail

echo "System Information"
echo "------------------"

echo "Operating system: $(uname -s)\n"
echo "Architecture:     $(uname -m)\n"
echo "Hostname:         $(hostname)\n"
echo "Current user:     $(whoami)\n"
echo "Current directory: $(pwd)\n"

echo
echo "Disk Usage:"
df -h /

echo
echo "CPU and Memory Usage:"
top -l 1 | grep -E "CPU usage|PhysMem"

echo
echo "Network Addresses:"
ifconfig | grep -E "inet " || true

echo
echo "Uptime:"
uptime

