#!/bin/bash

# Stopping default Services
systemctl stop firewalld
systemctl disable firewalld
systemctl stop NetworkManager
systemctl disable NetworkManager
systemctl stop ntpd
systemctl disable ntpd
systemctl stop postfix
systemctl disable postfix
systemctl stop chronyd
systemctl disable chronyd
systemctl stop avahi-daemon
systemctl disable avahi-daemon
yum -y remove dhclient

# Disabling SELinux
sed -i 's/enforcing/disabled/g' /etc/selinux/config
sed -i 's/permissive/disabled/g' /etc/selinux/config
