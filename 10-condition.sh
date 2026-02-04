#!bin/bash/

$=ROOTUSER

if [ $EUID -ne 0]
then 
    echo "Please run as root user"

    else 
    echo "Normal user: $USER"
    fi 

