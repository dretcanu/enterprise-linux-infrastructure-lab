# Configuration Guide

## Purpose

This document describes the configuration performed during the
Enterprise Linux Infrastructure Lab.

## Hostnames

  VM       Hostname
  -------- -----------
  Server   lnx-srv01
  Client   lnx-cl01

## Network Configuration

### LNX-SRV01

-   NAT Adapter (DHCP)
-   Internal Adapter: `192.168.100.10/24`

### LNX-CL01

-   NAT Adapter (DHCP)
-   Internal Adapter: `192.168.100.20/24`

## Services Configured

### SSH

-   OpenSSH Server installed
-   Remote administration tested from the client
-   Windows host access configured using VirtualBox NAT port forwarding

### Samba

-   Shared folder created
-   Samba user configured
-   Client access validated

### NFS

-   Export configured in `/etc/exports`
-   Client mount validated

### Apache

-   Apache2 installed
-   Custom landing page created
-   Tested locally and from the client

### UFW

Allowed services:

-   OpenSSH
-   Apache
-   Samba
-   Internal EnterpriseLab network

## Automation

Scripts created:

-   `system_health.sh`
-   `backup_configs.sh`
-   `network_check.sh`

Cron jobs:

-   Daily system health report
-   Daily configuration backup

## Monitoring

Commands used include:

-   `uptime`
-   `free -h`
-   `df -h`
-   `htop`
-   `ss -tulnp`
-   `journalctl`

## Validation

All major services were tested successfully between the server and
client virtual machines.
