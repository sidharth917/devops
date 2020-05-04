#!/bin/bash
echo "Date=$date"
echo "Postboot: Server Name \n"
uname -n
echo "Postboot: Filesystems \n"
df -Th | grep "/dev/mapper/centos-root"
echo "Postboot: uptime \n"
uptime
echo "Postboot: network configuration \n"
/sbin/ifconfig -a
echo "Postboot: Routes \n"
/sbin/route -n
echo "Postboot: Memory Detail \n"
free -m
echo "Postboot: fstab entry \n"
cat /etc/fstab
echo "---------------------------------"
echo "Date=$date"
