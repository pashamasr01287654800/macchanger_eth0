#!/bin/bash

# Disable the network interface
ifconfig eth0 down

# Change the MAC address
macchanger -a eth0

# Enable the network interface
ifconfig eth0 up
