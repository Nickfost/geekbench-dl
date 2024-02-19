#!/bin/bash

# geekbench-dl.sh

# Constants
GBVER=Geekbench-6.2.2-Linux.tar.gz
GBDIR=Geekbench-6.2.2-Linux

wget https://cdn.geekbench.com/$GBVER
tar -zxf $GBVER
cd $GBDIR
date > hardware.txt
./geekbench6 --sysinfo >> hardware.txt
cat hardware.txt

ls
pwd
