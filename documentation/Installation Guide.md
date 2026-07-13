# Installation Guide

## Enterprise Linux Infrastructure Lab

This guide describes how to recreate the lab environment used in this
project.

## Software

-   Oracle VirtualBox 7.x
-   Ubuntu Server 24.04 LTS (Server ISO)
-   Windows 10/11 Host

## Virtual Machines

### LNX-SRV01

-   2 vCPUs
-   4 GB RAM
-   40 GB VDI
-   Adapter 1: NAT
-   Adapter 2: Internal Network (EnterpriseLab)

### LNX-CL01

-   2 vCPUs
-   2 GB RAM
-   25 GB VDI
-   Adapter 1: NAT
-   Adapter 2: Internal Network (EnterpriseLab)

## Server Installation

1.  Install Ubuntu Server 24.04 LTS.

2.  Install OpenSSH Server during setup.

3.  Create the administrative user.

4.  Update packages:

    ``` bash
    sudo apt update && sudo apt upgrade -y
    ```

## Client Installation

Repeat the Ubuntu Server installation for LNX-CL01.

## Network Configuration

Configure static IP addresses using Netplan.

  Host        Address
  ----------- -------------------
  LNX-SRV01   192.168.100.10/24
  LNX-CL01    192.168.100.20/24

## Services Installed

-   OpenSSH Server
-   Samba
-   NFS Kernel Server
-   Apache2
-   UFW

## Verification

Confirm: - SSH connectivity - Samba access - NFS mount - Apache web
page - Firewall rules - Cron jobs - Backup script - Health reports

## Notes

The virtual disk (.vdi) files are intentionally excluded from GitHub.
Only scripts, documentation, reports, diagrams and configuration
examples are included in the repository.
