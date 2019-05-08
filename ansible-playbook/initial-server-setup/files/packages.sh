#!/bin/bash

yum -y install yum-plugin-fastestmirror
yum -y install epel-release

yum -y groupinstall "Development Tools"
yum -y groupinstall virtualization-client virtualization-platform virtualization-tools

yum -y install python-libvirt python-lxml kvm qemu-kvm qemu-img libvirt libguestfs-tools.noarch libvirt-python libvirt-client virt-install virt-viewer bridge-utils virt-top

yum -y install git coreutils.x86_64 telnet lftp libyaml-devel libnet-devel libnetfilter_queue-devel libpcap-devel pcre-devel file-devel jansson-devel nss-devel libcap-ng-devel lua-devel binutils gmp gmp-devel make ld glibc.i686 python-pip perl-Sys-Syslog readline-devel ncurses-devel openssl-devel flex bison pcre zlib zlib-devel libpcap libdnet libdnet-devel m4 gcc python-devel geoip geoip-devel libffi-devel vim lsof wget mlocate htop net-tools traceroute tcpdump gmp-devel iptables-services