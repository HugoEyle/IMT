#!/bin/bash

pathToFile="/proc/cpuinfo"
nbCore=$(grep -o "^processor" $pathToFile | wc -l)

echo number of core : $nbCore
echo model name : $(grep "^model name" /proc/cpuinfo | head -1 | cut -d : -f2)
echo cpu MHz : $(grep "^cpu MHz" /proc/cpuinfo | head -1 | cut -d : -f2)
