#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
    else 
    echo "You are runnig with root access"
    fi 

      dnf install mysql 
      
      if [ $? -ne 0 ]
      then 
          echo "Mysql is not installed... going to install"
          dnf install Mysql -y 
           if [$? -eq 0]

        then echo "Installing Mysql is ... SUCCESS"
              else 
              echo "Installing Mysql is ... FAILURE"
              exit 1
              fi 
               else 
               Echo "Mysql is already installed...Nothing do"

              fi 
            



