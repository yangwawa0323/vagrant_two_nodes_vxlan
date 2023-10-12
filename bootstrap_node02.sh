#!/usr/bin/env bash


ip link add vxlan10 type vxlan id 10 group 239.1.1.1 dstport 0 dev eth1
ip link add br-vxlan10 type bridge
ip link set vxlan10 master br-vxlan10
ip add add 192.168.100.2/24 dev vxlan10 
ip link set vxlan10 up
ip link set br-vxlan10 up
