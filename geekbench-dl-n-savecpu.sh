#!/bin/bash

# geekbench-dl.sh


# Download and install geekbench, run test

# Constants
GBVER=Geekbench-6.2.2-Linux.tar.gz
GBDIR=Geekbench-6.2.2-Linux

mkdir -p /home/$USER/Desktop/geekbench
cd /home/$USER/Desktop/geekbench
wget https://cdn.geekbench.com/$GBVER
tar -zxvf $GBVER
cd $GBDIR
date > hardware.txt
./geekbench6 --sysinfo >> hardware.txt
cat hardware.txt
ls
