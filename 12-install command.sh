#!/bin/bash/

USERID=$(id -u)

if [ $USERID -eq 0]
then 
    echo "ERROR:Please run this script as root user"
else 
    echo "you are running this with root access"
    
    fi

    