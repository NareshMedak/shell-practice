#$/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] 
then 
    echo "ERROR:Please run this script as root user"
    exit 1 #give other than 0 upto 127
else 
    echo "you are running this with root access"
    
 fi
     VALIDATE() {
   if [ $1 -ne 0 ]
 then  
    echo "$2 installation is FAILED"
    exit 1
 else 
    echo "$2 installation is SUCCESS"
 fi
    }

    dnf list installed mysql 
    if [ $? -ne 0 ]
 then  
    echo "Mysql is not installed.. going to install mysql"
    dnf install mysql -y 
    VALIDATE $? "mysql"

 else 
   echo  "Mysql is already installed nothing to do"
   
 fi


  dnf list installed phython3
    if [ $? -ne 0 ]
 then  
    echo "phython3 is not installed.. going to install phython3"
    dnf install python3 -y 
    VALIDATE $? "python3"
 else 
   echo  "phython3 is already installed nothing to do"
   
 fi

  dnf list installed nginx
    if [ $? -ne 0 ]
 then  
    echo "nginx is not installed.. going to install nginx"
    dnf install nginx -y 
    VALIDATE $? "nginx"
 else 
   echo  "nginx is already installed nothing to do"
   
 fi