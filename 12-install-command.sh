#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0]
then 
    echo "ERROR:Please run this script as root user"
    exit 1 #give other than 0 upto 127
else 
    echo "you are running this with root access"
    
 fi

    dnf install mysql -y
     
 if  [ $? -eq 0 ]
then 
         echo "Installing Mysql is .. SUCESS"
else 
        echo "Installing Mysql is .. FAILED"
        exit 1
 fi 