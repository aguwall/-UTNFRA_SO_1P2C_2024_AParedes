#!/bin/bash

DISCO=$(sudo fdisk    -l |grep "10 GiB" | awk '{print $2}' | awk -F ':' '{print $1}'

echo
echo "Particionando el disco: $DISCO"
