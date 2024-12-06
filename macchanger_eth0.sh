#!/bin/bash

# Disable the network interface
ifconfig eth0 down

# Change the MAC address
macchanger -a eth0

# Enable the network interface
ifconfig eth0 up

# Check if 'service' command is available and restart the network manager accordingly
if command -v service &> /dev/null; then
    systemctl restart NetworkManager
else
    service network-manager restart
fi