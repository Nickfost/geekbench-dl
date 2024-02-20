#!/bin/bash

# geekbench-dl.sh

# Constants
GBVER=Geekbench-6.2.2-Linux.tar.gz
GBDIR=Geekbench-6.2.2-Linux
FILE=/root/hardware.txt

wget https://cdn.geekbench.com/$GBVER
tar -zxf $GBVER
cd $GBDIR

echo today is date > $FILE
echo . >> $FILE
./geekbench6 --sysinfo >> $FILE
echo "---------------------------" >> $FILE
echo "Run this mess yourself from: https://github.com/RandomDevelopment/geekbench-dl" >> $FILE
echo "bye" >> $FILE



cat /root/hardware.txt
cd /root
echo bye
