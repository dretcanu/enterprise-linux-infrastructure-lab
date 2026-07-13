# Enterprise Linux Infrastructure Lab

> **GitHub Portfolio Project**

## Overview

This project demonstrates the design, deployment and validation of a
small enterprise Linux infrastructure using **Ubuntu Server 24.04 LTS**
and **Oracle VirtualBox**.

The lab was built from scratch to demonstrate practical skills relevant
to Junior Linux Administrator, Infrastructure Engineer, Systems
Administrator and Junior Network Engineer roles.

## Skills Demonstrated

-   Ubuntu Server 24.04 LTS
-   VirtualBox
-   Static IP configuration (Netplan)
-   SSH administration
-   Linux users, groups and sudo
-   File permissions
-   Samba file server
-   NFS file server
-   Apache Web Server
-   UFW Firewall
-   Bash scripting
-   Cron automation
-   System monitoring
-   Log analysis
-   Configuration backup
-   DNS basics
-   Network troubleshooting

## Lab Environment

  Component          Details
  ------------------ -------------------
  Hypervisor         Oracle VirtualBox
  Server             LNX-SRV01
  Client             LNX-CL01
  Internal Network   EnterpriseLab
  Server IP          192.168.100.10/24
  Client IP          192.168.100.20/24

## Repository Structure

``` text
configs/
diagrams/
documentation/
reports/
screenshots/
scripts/
virtual-machines/
```

## Architecture

Place the following images in this section:

1.  diagrams/architecture-overview.png
2.  diagrams/network-topology.png
3.  diagrams/service-architecture.png

## Validation

The project validates:

-   SSH connectivity
-   Samba file sharing
-   NFS file sharing
-   Apache web service
-   Firewall rules
-   Cron jobs
-   Bash automation
-   Backup creation

## Troubleshooting Highlights

-   Resolved SSH socket activation behaviour.
-   Corrected NFS export configuration.
-   Resolved NFS permission issues.
-   Verified Samba authentication and access.
-   Configured VirtualBox SSH port forwarding for SCP.

## Future Improvements

-   Nginx reverse proxy
-   Docker
-   Ansible
-   Bind9 DNS
-   Fail2Ban
-   Prometheus & Grafana

## Author

**Vasile Dretcanu**

This repository was created as part of a professional GitHub portfolio
demonstrating enterprise Linux administration skills.
