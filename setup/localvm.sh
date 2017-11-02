#!/bin/bash

#Config local vm server to use my local net.

#list nic hardware on machine.
lshw -C network

#config internal & public nic

# internal is fixed ip address
# config with:
#auto eth1
#iface eth1 inet static
#address 192.168.200.??
#netmask 255.255.255.0

# bounce nics
sudo ifconfig eth0 down
sudo ifconfig eth0 up

sudo ifconconfig eth1 down
sudo ifconfig eth1 up

#config hostnames
sudo nano /etc/hosts


