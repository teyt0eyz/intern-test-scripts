#!/bin/bash

tail -f /var/log/auth.log | awk '/Failed password/ { print "HACK ATTEMPT: " $0 }' 
