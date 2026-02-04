#!/bin/bash/

USERID=$(id -u)

if [ $USERID -eq 0]
then 
    echo "ERROR:Please run this script as root user"
    #give other than 0 upto 127
else 
    echo "you are running this with root access"
    
    fi

    dnf install mysql -y
     
    if  [ $? -eq 0 ]
    then 
         echo "Installing Mysql is .. SUCESS"
    else 
        echo "Installing Mysql is .. FAILED"
        
        fi 