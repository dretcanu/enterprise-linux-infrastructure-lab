# Troubleshooting Guide

## Purpose

This document records real issues encountered during the Enterprise
Linux Infrastructure Lab and how they were resolved.

------------------------------------------------------------------------

## Issue 1 -- SSH Service Inactive

**Symptom**

`systemctl status ssh` reported the service as inactive.

**Cause**

Ubuntu Server 24.04 can use SSH socket activation.

**Resolution**

Started and enabled the SSH service:

``` bash
sudo systemctl start ssh
sudo systemctl enable ssh
```

**Result**

SSH connections from LNX-CL01 and the Windows host were successful.

------------------------------------------------------------------------

## Issue 2 -- NFS Export Not Available

**Symptom**

`exportfs` did not show the configured share.

**Cause**

The export entry in `/etc/exports` was commented out.

**Resolution**

Removed the leading `#` and reloaded exports:

``` bash
sudo exportfs -ra
```

------------------------------------------------------------------------

## Issue 3 -- NFS Permission Denied

**Symptom**

Client could mount the share but could not create files.

**Cause**

Directory ownership and default `root_squash` behaviour.

**Resolution**

Verified ownership, permissions and export configuration, then retested
the share.

------------------------------------------------------------------------

## Issue 4 -- Windows Could Not SSH to the Server

**Symptom**

Windows PowerShell timed out when connecting to `192.168.100.10`.

**Cause**

VirtualBox Internal Network is isolated from the Windows host.

**Resolution**

Configured VirtualBox NAT Port Forwarding:

-   Host Port: 2222
-   Guest Port: 22

Connected successfully using:

``` bash
ssh -p 2222 vasile@127.0.0.1
```

and copied project files using SCP.

------------------------------------------------------------------------

## Lessons Learned

-   Verify service status before troubleshooting.
-   Validate configuration changes immediately.
-   Test services from a client, not only locally.
-   Understand Linux permissions and NFS behaviour.
-   Use SSH and SCP for secure administration and file transfer.
