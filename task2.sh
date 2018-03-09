#!/bin/bash
echo "Enter the name of running process : "
read n1 

set `pidof $n1`

cd /proc/$1/
cat status | grep -i  "Pid"
cat status | grep -i "PPid"
cat status | grep -i "Name"
cat status | grep -i "State"




