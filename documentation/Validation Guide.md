# Validation Guide

## Purpose

This guide documents how each service deployed in the Enterprise Linux
Infrastructure Lab was tested and validated.

## Test Matrix

  ------------------------------------------------------------------------
  Component                 Validation                  Result
  ------------------------- --------------------------- ------------------
  Static IP                 Verified with `ip addr`     ✅ Pass

  SSH                       Client connected to server  ✅ Pass
                            by IP and hostname          

  Samba                     Client accessed shared      ✅ Pass
                            folder and transferred      
                            files                       

  NFS                       Client mounted exported     ✅ Pass
                            share and created test file 

  Apache                    Web page accessed locally   ✅ Pass
                            and from client             

  UFW                       Required services           ✅ Pass
                            accessible after firewall   
                            enabled                     

  Cron                      Scheduled jobs configured   ✅ Pass
                            and manually verified       

  Health Script             Generated system report     ✅ Pass

  Backup Script             Created timestamped archive ✅ Pass

  Network Script            Produced network health     ✅ Pass
                            report                      
  ------------------------------------------------------------------------

## Connectivity Tests

-   ICMP ping between server and client
-   SSH by IP address
-   SSH by hostname
-   Apache HTTP access
-   Samba authentication
-   NFS mount verification

## Reports Generated

-   system_health_report.txt
-   daily_health_report.txt
-   network_health_report.txt
-   system_log_report.txt

## Evidence

Refer to the `screenshots/` directory for command output and validation
screenshots.

## Conclusion

All planned infrastructure services were successfully deployed, tested
and validated in a two-node Ubuntu Server lab.
