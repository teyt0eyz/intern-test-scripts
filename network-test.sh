#!/bin/bash

printf "ALL IP ADDRESS\n"
ip addr

printf "NETWORK TEST\n"
ping -c 3 8.8.8.8 
