#!/bin/bash/

USERID=$(id -u)

if [ $USERID -eq 0]
then 
    echo "ERROR:Please run this script as root user"
    exit 1 #give other than 0 upto 127
else 
    echo "you are running this with root access"
    
    fi

    dnf install mysql -y
     