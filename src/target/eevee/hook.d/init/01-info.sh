#!/bin/bash

# Get the IP address and hostname
IP_ADDRESS=$(hostname -I | awk '{print $1}')
HOSTNAME=$(hostname)

# Output the information
echo "Hostname: $HOSTNAME"
echo "IP Address: $IP_ADDRESS"