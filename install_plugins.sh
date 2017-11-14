#!/bin/bash

# This Script is to install the plugin into home/user/.vim/

# Task 1.
# Find the user that's is login.

echo "Finding the loging user"
# printing the loging user.
# echo $USER

PATH=/home/${USER}/.vim/

#CHECK_PATH=$(ls -l ${PATH})

if [ "$(/bin/ls -l ${PATH})" ] ;then
    for I in $(/bin/ls -1 . | /bin/grep -v *.md | /bin/grep -v *.sh)
    do  /bin/cp -rp ${I} ${PATH}
    done
    echo "Files coppied to" ${PATH}
fi 
