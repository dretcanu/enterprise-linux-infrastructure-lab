#!/bin/bash

echo "========================================="
echo "Enterprise Linux Infrastructure Lab"
echo "System Health Report"
echo "========================================="

echo
echo "Hostname:"
hostname

echo
echo "Current Date:"
date

echo
echo "Uptime:"
uptime

echo
echo "Disk Usage:"
df -h

echo
echo "Memory Usage:"
free -h

echo
echo "CPU Load:"
cat /proc/loadavg

echo
echo "IP Addresses:"
ip -brief addr

echo
echo "Running Services:"
systemctl --type=service --state=running | head -20

echo
echo "========================================="
echo "Report Complete"
echo "========================================="
