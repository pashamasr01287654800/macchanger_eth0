#!/bin/bash

# Disable the network interface
sudo ifconfig eth0 down

# Change the MAC address
sudo macchanger -a eth0

# Enable the network interface
sudo ifconfig eth0 up
