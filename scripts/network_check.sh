#!/bin/bash

echo "=========== NETWORK HEALTH ============="
echo
echo "Hostname:"
hostname

echo
echo "Interfaces:"
ip -brief addr

echo
echo "Routing:"
ip route

echo
echo "Listening Ports:"
ss -tuln

echo
echo "Firewall:"
ufw status

echo
echo "========================================"
