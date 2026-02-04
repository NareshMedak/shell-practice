#$/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] 
then 
    echo "ERROR:Please run this script as root user"
    exit 1 #give other than 0 upto 127
else 
    echo "you are running this with root access"
    
 fi
 
 #validate functions takes inout as exit status, what command they tried to install 
     VALIDATE(){
   if [ $1 -eq 0 ]
   then  
    echo "Installing $2 is SUCESS"
 else 
    echo "Installing $2 is FAILED"
    exit 1 
  fi

 }

    dnf list installed mysql 
    if [ $? -ne 0 ]
 then  
    echo "Mysql is not installed.. going to install it"
    dnf install mysql -y 
    VALIDATE $? "mysql"

 else 
   echo  "Mysql is already installed nothing to do"
   
 fi


  dnf list installed Python3
    if [ $? -ne 0 ]
 then  
    echo "Python3 is not installed going to install it"
    dnf install python3 -y 
    VALIDATE $? "Python3"
 else 
   echo  "Python3 is already installed nothing to do"
   
 fi

  dnf list installed Nginx
    if [ $? -ne 0 ]
 then  
    echo "Ngnix is not installed going to install it"
    dnf install Nginx -y 
    VALIDATE $? "Nginx"
 else 
   echo  "Nginx is already installed nothing to do"
   
 fi