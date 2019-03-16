#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

chmod 777 /proc/sys/net/ipv4/ip_no_pmtu_disc
sysctl -w net.ipv4.ip_no_pmtu_disc=0
chmod 555 /proc/sys/net/ipv4/ip_no_pmtu_disc
