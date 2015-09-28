#!/bin/bash
#
# Shell script to get personal information in CS160a class
#

# Welcome message
pinky=$(pinky -l ${USER} | grep "Login" | cut -d ':' -f3)

# Groups
groups=$(groups | tr ' ' '\n' | grep '^c7' | wc -l)

# Hostname
hostname=$(hostname)

# Uptime in days and time
days=$(uptime| cut -d " " -f4)
time=$(uptime| cut -d " " -f6 | cut -d ',' -f1)

# Number of users
nusers=$(uptime | cut -d"," -f3 | cut -d " " -f2)

# Get the load of system
load=$(uptime | cut -d"," -f4 | cut -d " " -f5)

# Show directories in the path
path=$(echo $PATH | tr ':' '\n')

# Type of term
term=$(echo $TERM)

homedisk=$(du -h $HOME | tail -1 | cut -d $'\t' -f1 | cut -d 'M' -f1 | { read test; echo $test 1024\*p | dc ; } | cut -d "." -f1)

nfiles=$(find $HOME -type f | wc -l)
ndirectories=$(find $HOME -type d | wc -l)

echo -e "Hello"${pinky}"\n\n"\
  "You are in "${groups} classes this semester"\n\n"\
  "You are currently logged onto ${hostname}\n\n"\
  "The system has been up ${days} days, ${time}\n"\
  "There are ${nusers} users logged on\n\n"\
  "The current one-minute load average is: ${load}\n\n"\
  "When searching for commands you will look in these directorios (in order): ${path}\n\n"\
  "Your terminal type is ${term}\n\n"\
  "There is the space utilization of your home directory in kib: ${homedisk}\n\n"\
  "Your home directory contains ${nfiles} files and ${ndirectories} directories"
