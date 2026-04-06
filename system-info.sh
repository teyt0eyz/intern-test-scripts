#!/bin/bash



printf "CPU : \n"
lscpu
printf "RAM : \n"
lsmem
free -h
printf "DISK : \n"
df -h
printf "Process Count : \n"
nproc
