#!/bin/sh
#author songtianyi630@163.com
#set -x

#down the devices
sudo ifconfig p3p1 down
sudo ifconfig br0 down

#unbind network interface
sudo brctl delif br0 p3p1

#delete bridge
sudo brctl delbr br0

#start network interface,configuration file in /etc/sysconfig/network-scripts/ifcfg-
#sudo ifup p3p1

ifconfig p3p1 up

echo "test local network.........."
#test network
ping -c 3 www.baidu.com
